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


# levels
L_DOC=0
L_HEAD=1
L_PAR=2
L_WORD=3
LEVELS = ["DOC", "HEAD", "PAR", "WORD"]

# identifiers
ID_NEW = "new"				# ObjectEvent for L_HEAD
ID_END = "end"

ID_TITLE = "title"

ID_NEW_ITEM = "new_item"	# ItemEvent
ID_END_ITEM = "end_item"

ID_NEW_ROW = "new_row"
ID_END_ROW = "end_row"
ID_NEW_CALL = "new_cell"
ID_END_CELL = "end_cell"

ID_NEW_STYLE = "new_style"	# TypedEvent
ID_END_STYLE = "end_style"	# TypedEvent

ID_NEW_LINK = "new_link"	# ObjectEvent
ID_END_LINK = "end_link"

ID_NEW_QUOTE = "new_quote"
UD_END_QUOTE = "end_quote"


# supported events
class Event:
	"""Base class of all events."""
	level = None
	id = None
	
	def __init__(self, level, id):
		"""Build a new event with level and id."""
		self.level = level
		self.id = id
	
	def make(self):
		"""Make an object matching the event."""
		return None
	
	def __str__(self):
		return "event(" + LEVELS[self.level] + ", " + self.id + ")"


class ObjectEvent(Event):
	"""Event carrying an object to make."""
	object = None
	
	def __init__(self, level, id, object):
		Event.__init__(self, level, id)
		self.object = object
	
	def make(self):
		return self.object


class TypedEvent(Event):
	"""Event containing a type."""
	type = None
	
	def __init__(self, level, id, type):
		Event.__init__(self, level, id)
		self.type = type	


class StyleEvent(TypedEvent):
	"""Event for a simple style."""
	
	def __init__(self, type):
		TypedEvent.__init__(self, L_WORD, ID_NEW_STYLE, type)
	
	def make(self):
		return Style(self.type)


class OpenStyleEvent(TypedEvent):
	"""Event for an open/close style."""
	
	def __init__(self, type):
		TypedEvent.__init__(self, L_WORD, ID_NEW_STYLE, type)
	
	def make(self):
		return OpenStyle(self.type)


class CloseEvent(TypedEvent):
	"""An event for a closing tag."""
	
	def __init__(self, level, id, type):
		TypedEvent.__init__(self, level, id, type)
	
	def make(self):
		raise Exception(self.type + " closed but not opened !")


class CloseStyleEvent(CloseEvent):
	"""Event for an open/close style."""
	
	def __init__(self, type):
		CloseEvent.__init__(self, L_WORD, ID_END_STYLE, type)


class ItemEvent(TypedEvent):
	"""Event for list item."""
	depth = None
	
	def __init__(self, type, depth):
		TypedEvent.__init__(self, L_PAR, ID_NEW_ITEM, type)
		self.depth = depth
	
	def make(self):
		return List(self.type, self.depth)


	

# nodes
class Node:
	"""Base definition of document nodes."""

	def onEvent(self, man, event):
		man.forward(event)

	def isEmpty(self):
		return False

	def dump(self, tab = ""):
		pass
		
	def clean(self):
		pass


class Container(Node):
	"""A container is an item containing other items."""
	content = None
	
	def __init__(self):
		self.content = []
	
	def add(self, man, item):
		self.content.append(item)
		man.push(item)
	
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


# Word family
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


# Style family
class Style(Container):
	style = None
	
	def __init__(self, style):
		Container.__init__(self)
		self.style = style

	def onEvent(self, man, event):
		if event.level is not L_WORD:
			man.forward(event)
		elif event.id is not ID_NEW_STYLE:
			self.add(man, event.make())
		elif event.type == self.style:
			man.pop()
		else:
			self.add(man, event.make())
	
	def dumpHead(self, tab):
		print tab + "style(" + self.style + ","


class OpenStyle(Container):
	style = None
	
	def __init__(self, style):
		Container.__init__(self)
		self.style = style

	def onEvent(self, man, event):
		if event.level is not L_WORD:
			man.forward(event)
		elif event.id is not ID_END_STYLE:
			self.add(man, event.make())
		elif event.type == self.style:
			man.pop()
		else:
			raise Exception("closing style without opening")

	def dumpHead(self, tab):
		print tab + "style(" + self.style + ","


class Link(Container):
	"""A link in a text."""
	ref = None
	
	def __init__(self, ref):
		Container.__init__(self)
		self.ref = ref
	
	def onEvent(self, man, event):
		print "-> " + str(event)
		if event.level is not L_WORD:
			man.forward(event)
		elif event.id is ID_END_LINK:
			man.pop()
		else:
			self.add(man, event.make())
	
	def dumpHead(self, tab):
		print tab + "link(" + self.ref + ","


# Par family
class Par(Container):
	
	def __init__(self):
		Container.__init__(self)

	def onEvent(self, man, event):
		if event.level is L_WORD:
			self.add(man, event.make())
		elif event.level is L_PAR and event.id is ID_END:
			man.pop()
		else:
			man.forward(event)
	
	def dumpHead(self, tab):
		print tab + "par("


class Quote(Par):
	
	def __init__(self):
		Par.__init__(self)
	
	def onEvent(self, man, event):
		if event.id is ID_END_QUOTE:
			man.pop()
		elif event.id is not ID_NEW_QUOTE:
			Par.onEvent(self, man, event)
	
	def dumpHead(self, tab):
		print tab + "quote("


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


# List family
class ListItem(Container):
	"""Description of a list item."""
	
	def __init__(self):
		Container.__init__(self)
		self.content.append(Par())
	
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

	def onEvent(self, man, event):
		if event.level is L_WORD:
			if self.isEmpty():
				self.content.append(ListItem())
				self.last().content.append(Par())
			self.last().last().add(man, event.make())
		elif event.id is ID_NEW_ITEM:
			if event.depth < self.depth:
				man.forward(event)
			elif event.depth > self.depth:
				self.last().add(man, event.make())
			elif self.kind == event.type:
				self.content.append(ListItem())
			else:
				self.forward(event)
		elif event.id is ID_END_ITEM:
			man.pop()
		else:
			man.forward(event) 

	def dumpHead(self, tab):
		print tab + "list(" + self.kind + "," + str(self.depth) + ", "


# main family
class Header(Container):
	level = None
	title = None
	do_title = None
	
	def __init__(self, level):
		Container.__init__(self)
		self.level = level
		self.do_title = True
		self.title = Par()
	
	def onEvent(self, man, event):
		if event.level is L_WORD:
			if self.do_title:
				self.title.add(man, event.make())
			else:
				self.add(man, Par())
				man.send(event)
		elif event.level is L_PAR:
			self.add(man, event.make())
		elif event.level is L_HEAD:
			if event.id is ID_TITLE:
				self.do_title = False
			elif event.object.level <= self.level:
				man.forward(event)
			else:
				self.add(man, event.make())
		else:
			man.forward(event)

	def dumpHead(self, tab):
		print tab + "header" + str(self.level) + "("
		print tab + "  title("
		self.title.dump(tab + "    ")
		print tab + "  )"

	def isEmpty(self):
		return False


class Document(Container):
	"""This is the top object of the document, containing the headings
	and also the configuration environment."""
	env = None

	def __init__(self, env):
		Container.__init__(self)
		self.env = env

	def onEvent(self, man, event):
		if event.level is L_WORD:
			self.add(man, Par())
			man.send(event)
		elif event.level is L_DOC and event.id is ID_END:
			pass
		else:
			self.add(man, event.make())	
	
	def getVar(self, name):
		return self.env[name]
	
	def setVar(self, name, val):
		self.env[name] = val

	def dumpHead(self, tab = ""):
		for k in iter(self.env):
			print k + "=" + self.env[k]
		print tab + "document("
	
