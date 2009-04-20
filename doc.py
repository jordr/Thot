

class Node:

	def onEnd(self, handler):
		handler.popItem()
		handler.item.onEnd(handler)
	
	def onPar(self, handler, par):
		handler.popItem()
		handler.item.onPar(handler, par)

	def onHeader(self, handler, header):
		handler.popItem()
		handler.item.onHeader(handler, header)

	def onWord(self, handler, word):
		handler.popItem()
		handler.item.onWord(handler, word)
	
	def onStyle(self, handler, style):
		self.onWord(handler, style)
		handler.pushItem(style)

	def dump(self, tab):
		pass
	

class Word(Node):
	text = None
	
	def __init__(self, text):
		self.text = text
	
	def dump(self, tab):
		print(tab + "word(" + self.text + ")")


class Style(Node):
	style = None
	content = None
	
	def __init__(self, style):
		self.style = style
		self.content = []
	
	def onWord(self, handler, word):
		self.content.append(word)
		
	def onStyle(self, handler, style):
		if style.style == self.style:
			handler.popItem()
		else:
			self.content.append(style)
			handler.pushItem(style)
	
	def dump(self, tab):
		print tab + "style(" + self.style + ","
		for item in self.content:
			item.dump(tab + "  ")
		print tab + ")"


class OpenStyle:
	style = None
	content = None
	
	def __init__(self, style):
		self.style = style
		self.content = []

	def onWord(self, handler, word):
		self.content.append(word)
	
	def onStyle(self, handler, style):
		if style.__class__ <> CloseStyle:
			self.content.append(style)
			handler.pushItem(style)
		elif style.style == self.style:
			handler.popItem()
		else:
			raise Exception("closing style without opening")

	def dump(self, tab):
		print tab + "style(" + self.style + ","
		for item in self.content:
			item.dump(tab + "  ")
		print tab + ")"


class CloseStyle:
	style = None

	def __init__(self, style):
		self.style = style

	def error(self):
		raise Exception("closing style without opening")

	def onEnd(self, handler):
		self.error()
	
	def onPar(self, handler, par):
		self.error()

	def onHeader(self, handler, header):
		self.error()

	def onWord(self, handler, word):
		self.error()
	
	def onStyle(self, handler, style):
		self.error()



class Par(Node):
	content = None
	
	def __init__(self):
		self.content = []
	
	def onWord(self, handler, word):
		self.content.append(word)
	
	def dump(self, tab):
		print tab + "par("
		for item in self.content:
			item.dump(tab + "  ")
		print tab + ")"


class URL(Word):
	
	def __init__(self, url):
		Word.__init__(self, url)
	
	def dump(self, tab):
		print tab + "url(" + self.text + ")"


class Header(Node):
	level = None
	title = None
	content = None
	
	def __init__(self, level, title):
		self.level = level
		self.title = title
		self.content = []
	
	def onPar(self, handler, par):
		self.content.append(par)
		handler.pushItem(par)
	
	def onHeader(self, handler, header):
		if header.level <= self.level:
			Node.onHeader(self, handler, header)
		else:
			self.content.append(header)
			handler.pushItem(header)

	def onWord(self, handler, word):
		par = Par()
		self.content.append(par)
		handler.pushItem(par)
		handler.item.onWord(handler, word)
	
	def dump(self, tab):
		print tab + "header" + str(self.level) + "(" + self.title
		for item in self.content:
			item.dump(tab + "  ")
		print tab + ")"


class Document(Node):
	env = None
	content = None

	def __init__(self, env):
		self.env = env
		self.content = []

	def onEnd(self, handler):
		pass
	
	def onPar(self, handler, par):
		self.content.append(par)
		handler.pushItem(par)

	def onHeader(self, handler, header):
		self.content.append(header)
		handler.pushItem(header)

	def onWord(self, handler, word):
		par = Par()
		self.content.append(par)
		handler.pushItem(par)
		handler.item.onWord(handler, word)
	
	def getVar(self, name):
		return self.env[name]
	
	def setVar(self, name, val):
		self.env[name] = val

	def dump(self, tab = ""):
		for k in iter(self.env):
			print k + "=" + self.env[k]

		print tab + "document("
		for item in self.content:
			item.dump(tab + "  ")
		print tab + ")"
	
		
