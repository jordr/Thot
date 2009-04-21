# doc -- Thot document escription module
# Copyright (C) 2009  <hugues.casse@laposte.net>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.


class Node:
	"""Base definition of document nodes."""

	def onEnd(self, handler):
		handler.popItem()
		handler.item.onEnd(handler)
	
	def onHeader(self, handler, header):
		handler.popItem()
		handler.item.onHeader(handler, header)

	def onWord(self, man, word):
		"""This method is called each time a word-level item is found."""
		handler.popItem()
		handler.item.onWord(handler, word)
	
	def onStyle(self, handler, style):
		self.onWord(handler, style)
		handler.pushItem(style)

	def onPar(self, handler, par):
		"""This method is called each time a paragraph-level item is found."""
		handler.popItem()
		handler.item.onPar(handler, par)

	def onListItem(self, man, kind, depth):
		"""This method is called each a list item is found.
		As a default, a list is created and pushed in manager."""
		list = List(kind, depth)
		self.onPar(man, list)

	def isEmpty(self):
		return False

	def dump(self, tab = ""):
		pass
		
	def clean(self):
		pass


class Block(Node):
	content = None
	
	def __init__(self):
		self.content = []
	
	def add(self, line):
		self.content.append(line)

	def dump(self, tab):
		self.dumpHead(tab)
		for line in self.content:
			print tab + "  " + line
		print tab + ")"


class CodeBlock(Block):
	lang = None

	def __init__(self, lang):
		Block.__init__(self)
		self.lang = lang

	def dumpHead(self, tab):
		print tab + "code(" + self.lang + ","


class Container(Node):
	"""A container is an item containing other items."""
	content = None
	
	def __init__(self):
		self.content = []
	
	def add(self, item):
		self.content.append(item)
	
	def last(self):
		return self.content[-1]
	
	def isEmpty(self):
		return self.content == []
	
	def clean(self):
		toremove = []
		for item in self.content:
			item.clean()
			if item.isEmpty():
				toremove.append(item)
		for item in toremove:
			self.content.remove(item)

	def dumpHead(self, tab):
		pass
	
	def dump(self, tab):
		self.dumpHead(tab)
		for item in self.content:
			item.dump(tab + "  ")
		print tab + ")"


class ListItem(Container):
	"""Description of a list item."""
	
	def __init__(self):
		Container.__init__(self)
		self.add(Par())
	
	def dumpHead(self, tab):
		print tab + "item("
	

class List(Container):
	"""Description of any kind of list (numbered, unnumbered)."""
	kind = None
	depth = None
	
	def __init__(self, kind, depth):
		Container.__init__(self)
		self.kind = kind
		self.depth = depth

	def newItem(self, man):
		item = ListItem()
		self.add(item)
		man.pushItem(item.last())

	def onWord(self, man, word):
		self.newItem(man)
		man.item.onWord(man, word)

	def onListItem(self, man, kind, depth):
		if depth > self.depth:
			list = List(kind, depth)
			self.last().add(list)
			man.pushItem(list)
		elif depth < self.depth or self.kind <> kind:
			man.popItem()
			man.item.onListItem(man, kind, depth)
		else:
			self.newItem(man)

	def dumpHead(self, tab):
		print tab + "list(" + self.kind + "," + str(self.depth) + ", "


class Word(Node):
	text = None
	
	def __init__(self, text):
		self.text = text
	
	def dump(self, tab):
		print(tab + "word(" + self.text + ")")


class Image(Node):
	path = None
	
	def __init__(self, path):
		self.path = path
	
	def dump(self, tab):
		print tab + "image(" + self.path + ")"


class Glyph(Node):
	code = None
	
	def __init__(self, code):
		self.code = code
	
	def dump(self, tab):
		print tab + "glyph(" + str(self.code) + ")"


class LineBreak(Node):
	
	def dump(self, tab):
		print tab + "linebreak"


class Style(Container):
	style = None
	
	def __init__(self, style):
		Container.__init__(self)
		self.style = style
	
	def onWord(self, handler, word):
		self.content.append(word)
		
	def onStyle(self, handler, style):
		if style.style == self.style:
			handler.popItem()
		else:
			self.add(style)
			handler.pushItem(style)
	
	def dumpHead(self, tab):
		print tab + "style(" + self.style + ","


class OpenStyle(Container):
	style = None
	
	def __init__(self, style):
		Container.__init__(self)
		self.style = style

	def onWord(self, handler, word):
		self.add(word)
	
	def onStyle(self, handler, style):
		if style.__class__ <> CloseStyle:
			self.add(style)
			handler.pushItem(style)
		elif style.style == self.style:
			handler.popItem()
		else:
			raise Exception("closing style without opening")

	def dumpHead(self, tab):
		print tab + "style(" + self.style + ","


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



class Par(Container):
	
	def __init__(self):
		Container.__init__(self)
	
	def onWord(self, handler, word):
		self.add(word)
	
	def onListItem(self, man, kind, level):
		man.popItem()
		man.item.onListItem(man, kind, level)
	
	def dumpHead(self, tab):
		print tab + "par("


class URL(Word):
	
	def __init__(self, url):
		Word.__init__(self, url)
	
	def dump(self, tab):
		print tab + "url(" + self.text + ")"


class Header(Container):
	level = None
	title = None
	
	def __init__(self, level, title):
		Container.__init__(self)
		self.level = level
		self.title = title
	
	def onPar(self, handler, par):
		self.add(par)
		handler.pushItem(par)
	
	def onHeader(self, handler, header):
		if header.level <= self.level:
			Node.onHeader(self, handler, header)
		else:
			self.add(header)
			handler.pushItem(header)

	def onWord(self, handler, word):
		par = Par()
		self.add(par)
		handler.pushItem(par)
		handler.item.onWord(handler, word)
	
	def dumpHead(self, tab):
		print tab + "header" + str(self.level) + "(" + self.title

	def isEmpty(self):
		return False


class Document(Container):
	"""This is the top object of the document, containing the headings
	and also the configuration environment."""
	env = None

	def __init__(self, env):
		Container.__init__(self)
		self.env = env

	def onEnd(self, handler):
		pass
	
	def onPar(self, handler, par):
		self.add(par)
		handler.pushItem(par)

	def onHeader(self, handler, header):
		self.add(header)
		handler.pushItem(header)

	def onWord(self, handler, word):
		par = Par()
		self.add(par)
		handler.pushItem(par)
		handler.item.onWord(handler, word)
	
	def getVar(self, name):
		return self.env[name]
	
	def setVar(self, name, val):
		self.env[name] = val

	def dumpHead(self, tab = ""):
		for k in iter(self.env):
			print k + "=" + self.env[k]
		print tab + "document("
	
