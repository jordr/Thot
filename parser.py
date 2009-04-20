
import re
import doc
import imp

############### Word Parsing #####################

def handleVar(handler, match):
	handler.item.onWord(handler, doc.Word(handler.doc.getVar(match.group(2))))

INITIAL_WORDS = [
	(handleVar, "@\(([a-zA-Z_0-9]+)\)")
]

def handleText(handler, line):
	global re
	
	# init RE_WORDS
	if handler.words_re == None:
		text = ""
		i = 0
		for (fun, wre) in handler.words:
			if text <> "":
				text = text + "|"
			text = text + "(?P<a" + str(i) + ">" + wre + ")"
			i = i + 1
		handler.words_re = re.compile(text)
	
	# look in line
	match = handler.words_re.search(line)
	while match:
		idx = int(match.lastgroup[1:])
		fun, re = handler.words[idx]
		handler.item.onWord(handler, doc.Word(line[:match.start()]))
		line = line[match.end():]
		fun(handler, match)
		match = handler.words_re.search(line)
	handler.item.onWord(handler, doc.Word(line))


############### Line Parsing ######################

def handleComment(handler, match):
	pass

def handleAssign(handler, match):
	handler.doc.setVar(match.group(1), match.group(2))

def handleUse(handler, match):
	name = match.group(1)
	mod = imp.load_source(name, handler.doc.getVar("THOT_USE_PATH") + name + ".py")
	mod.init(handler)

INITIAL_LINES = [
	(handleComment, re.compile("^@@.*")),
	(handleAssign, re.compile("^@([a-zA-Z_0-9]+)\s*=(.*)")),
	(handleUse, re.compile("^@use\s+(\S+)"))
]

class DefaultParser:
	
	def parse(self, handler, line):
		done = False
		for (fun, re) in handler.lines:
			match = re.match(line)
			if match:
				fun(handler, match)
				done = True
				break
		if not done:
			handleText(handler, line)


class Handler:
	item = None
	items = None
	parser = None
	parsers = None
	doc = None
	lines = None
	words = None
	words_re = None
	
	def __init__(self, doc):
		self.item = doc
		self.doc = doc
		self.parser = DefaultParser()
		self.items = []
		self.parsers = []
		self.lines = INITIAL_LINES[:]
		self.words = INITIAL_WORDS[:]
	
	def getItem(self):
		return item
	
	def pushItem(self, item):
		self.items.append(self.item)
		self.item = item
	
	def popItem(self):
		self.item = self.items.pop()
	
	def pushParser(self, parser):
		self.parsers.append(self.parser)
		self.parser = parser
	
	def popParser(self):
		self.parser = self.parsers.pop()
	
	def parse(self, file):
		for line in file:
			if line[-1] == '\n':
				line = line[0:-1]
			self.parser.parse(self, line)
		self.item.onEnd(self)


