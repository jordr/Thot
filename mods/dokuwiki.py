# dokuwiki -- dokuwiki front-end
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

import parser
import doc
import re
import highlight
import common

def computeDepth(text):
	depth = 0
	for c in text:
		if c == ' ':
			depth = depth + 1
		elif c == '\t':
			depth = depth + 8
	return depth

ESCAPES = [ '(', ')', '+', '.', '*', '/', '?', '^', '$', '\\', '|' ]
def escape_re(str):
	res = ""
	for c in str:
		if c in ESCAPES:
			res = res + "\\" + c
		else:
			res = res + c
	return res

ENTITIES = {
	'<->' : 0x2194,
	'->' : 0x2192,
	'<-' :      0x2190,
	'<=>' :     0x21d4,
	'=>' :      0x21d2,
	'<=' :      0x21d0,
	'>>' :      0xbb,
	'<<' :      0xab,
	'---' :     0x2012,
	'--' :      0x2010,
	'(c)' :     0xa9,
	'(tm)' :    0x2122,
	'(r)' :     0xae,
	'...' :     0x22ef
}
ENTITIES_RE = ""
for entity in ENTITIES.keys():
	if ENTITIES_RE <> "":
		ENTITIES_RE = ENTITIES_RE + "|"
	ENTITIES_RE = ENTITIES_RE + escape_re(entity)


SMILEYS = {
	'8-)' :         'icon_cool.gif',
	'8-O' :         'icon_eek.gif',
	'8-o' :         'icon_eek.gif',
	':-(' :         'icon_sad.gif',
	':-)' :         'icon_smile.gif',
	'=)' :          'icon_smile2.gif',
	':-/' :         'icon_doubt.gif',
	':-\\' :        'icon_doubt2.gif',
	':-?' :         'icon_confused.gif',
	':-D' :         'icon_biggrin.gif',
	':-P' :         'icon_razz.gif',
	':-o' :         'icon_surprised.gif',
	':-O' :         'icon_surprised.gif',
	':-x' :         'icon_silenced.gif',
	':-X' :         'icon_silenced.gif',
	':-|' :         'icon_neutral.gif',
	';-)' :         'icon_wink.gif',
	'^_^' :         'icon_fun.gif',
	':?:' :         'icon_question.gif',
	':!:' :         'icon_exclaim.gif',
	'LOL' :         'icon_lol.gif',
	'FIXME' :       'fixme.gif',
	'DELETEME' :    'delete.gif',
	'#;<P' :        'icon_kaddi.gif'
}
SMILEYS_RE = ""
for smiley in SMILEYS.keys():
	if SMILEYS_RE <> "":
		SMILEYS_RE = SMILEYS_RE + "|"
	SMILEYS_RE = SMILEYS_RE + escape_re(smiley)


### specific blocks ###
class FileBlock(doc.Block):
	
	def __init__(self):
		doc.Block.__init__(self)
	
	def dumpHead(self, tab):
		print "%sblock.file(" % tab
	
	def gen(self, gen):
		type = gen.getType()
		if type == 'html':
			gen.genVerbatim('<pre class="file">\n')
			for line in self.content:
				gen.genText(line + "\n")
			gen.genVerbatim('</pre>\n')
		else:
			common.onError('%s back-end is not supported by file block')


class NonParsedBlock(doc.Block):
	
	def __init__(self):
		doc.Block.__init__(self)
	
	def dumpHead(self, tab):
		print "%sblock.nonparsed(" % tab
	
	def gen(self, gen):
		type = gen.getType()
		if type == 'html':
			gen.genVerbatim('<p>\n')
			for line in self.content:
				gen.genText(line + "\n")
			gen.genVerbatim('</>\n')
		else:
			common.onError('%s back-end is not supported by non-parsed block')


### code parse ###
END_CODE = re.compile("^\s*<\/code>\s*$")
END_FILE = re.compile("^\s*<\/file>\s*$")
END_NOWIKI = re.compile("^\s*<\/nowiki>\s*$")
class BlockParser:
	old = None
	block = None
	re = None
	
	def __init__(self, man, block, re):
		self.old = man.getParser()
		man.setParser(self)
		self.block = block
		self.re = re
		man.send(doc.ObjectEvent(doc.L_PAR, doc.ID_NEW, self.block))

	def parse(self, man, line):
		if self.re.match(line):
			man.setParser(self.old)
		else:
			self.block.add(line)


INDENT_RE = re.compile("  \s*(.*)$")
class IdentParser:
	old = None
	block = None
	
	def __init__(self, man, match):
		self.old = man.getParser()
		man.setParser(self)
		self.block = NonParsedBlock()
		man.send(doc.ObjectEvent(doc.L_PAR, doc.ID_NEW, self.block))
		self.block.add(match.group(1))
	
	def parse(self, man, line):
		match = INDENT_RE.match(line)
		if match:
			self.block.add(match.group(1))
		else:
			man.setParser(self.old)
			self.old.parse(man, line)


### word processing ###
def processLink(man, target, text):
	man.send(doc.ObjectEvent(doc.L_WORD, doc.ID_NEW_LINK, doc.Link(target)))
	man.send(doc.ObjectEvent(doc.L_WORD, doc.ID_NEW, text))
	man.send(doc.CloseEvent(doc.L_WORD, doc.ID_END_LINK, "link"))

def handleStyle(man, style):
	man.send(doc.StyleEvent(style))

def handleOpenStyle(man, style):
	man.send(doc.OpenStyleEvent(style))

def handleFootNote(man, match):
	man.send(doc.ObjectEvent(doc.L_WORD, doc.ID_NEW_STYLE, doc.FootNote()))

def handleCloseStyle(man, style):
	man.send(doc.CloseStyleEvent(style))

def handleURL(man, match):
	processLink(man, match.group(0), doc.Word(match.group(0)))

def handleEMail(man, match):
	processLink(man, "mailto:" + match.group(0), doc.Word(match.group(0)))

def handleLineBreak(man, match):
	man.send(doc.ObjectEvent(doc.L_WORD, doc.ID_NEW, doc.LineBreak()))

def handleSmiley(man, match):
	image = doc.Image(man.doc.getVar("THOT_BASE") + "smileys/" + SMILEYS[match.group(0)])
	man.send(doc.ObjectEvent(doc.L_WORD, doc.ID_NEW, image))

def handleEntity(man, match):
	glyph = doc.Glyph(ENTITIES[match.group(0)])
	man.send(doc.ObjectEvent(doc.L_WORD, doc.ID_NEW, glyph))

def handleLink(man, match):
	target = match.group('target')
	label = match.group('label')
	if not label:
		label = target
	processLink(man, target, doc.Word(label))

def handleImage(man, match):
	image = match.group("image")
	width = match.group("image_width")
	if width <> None:
		width = int(width)
	height = match.group("image_height")
	if height <> None:
		height = int(height)
	label = match.group("image_label")
	man.send(doc.ObjectEvent(doc.L_WORD, doc.ID_NEW,
		doc.Image(image, width, height, label)))

def handleNonParsed(man, match):
	man.send(doc.ObjectEvent(doc.L_WORD, doc.ID_NEW, doc.Word(match.group('nonparsed')[:-2])))

WORDS = [
	(lambda man, match: handleStyle(man, "bold"), "\*\*"),
	(lambda man, match: handleStyle(man, "italic"), "\/\/"),
	(lambda man, match: handleStyle(man, "underline"), "__"),
	(lambda man, match: handleStyle(man, "monospace"), "''"),
	(lambda man, match: handleOpenStyle(man, "subscript"), "<sub>"),
	(lambda man, match: handleCloseStyle(man, "subscript"), "<\/sub>"),	
	(lambda man, match: handleOpenStyle(man, "superscript"), "<sup>"),
	(lambda man, match: handleCloseStyle(man, "superscript"), "<\/sup>"),	
	(lambda man, match: handleOpenStyle(man, "deleted"), "<del>"),
	(lambda man, match: handleCloseStyle(man, "deleted"), "<\/del>"),
	(handleFootNote, '\(\('),
	(lambda man, match: handleCloseStyle(man, "footnote"), "\)\)"),
	(handleURL, "(http|ftp|mailto|sftp|https):\S+"),
	(handleEMail, "([a-zA-Z0-9!#$%&'*+-/=?^_`{|}~.]+@[-a-zA-Z0-9.]+[-a-zA-Z0-9])"),
	(handleLink, "\[\[(?P<target>[^\]|]*)(\|(?P<label>[^\]]*))?\]\]"),
	(handleImage, "{{(?P<image>[^}?]+)(\?(?P<image_width>[0-9]+)?(x(?P<image_height>[0-9]+))?)?\s*(\|(?P<image_label>[^}]*))?}}"),
	(handleSmiley, SMILEYS_RE),
	(handleEntity, ENTITIES_RE),
	(handleLineBreak, "\\\\\\\\"),
	(handleNonParsed, "%%(?P<nonparsed>([^%]*%)*)%")
]

### lines processing ###
def handleNewPar(man, match):
	man.send(doc.ObjectEvent(doc.L_PAR, doc.ID_END, doc.Par()))

def handleHeader(man, match):
	level = 6 - len(match.group(1))
	title = match.group(2)
	man.send(doc.ObjectEvent(doc.L_HEAD, doc.ID_NEW, doc.Header(level)))
	parser.handleText(man, title)
	man.send(doc.Event(doc.L_HEAD, doc.ID_TITLE))

def handleList(man, kind, match):
	depth = computeDepth(match.group(1))
	man.send(doc.ItemEvent(kind, depth))
	parser.handleText(man, match.group(3))

def handleCode(man, match):
	lang = match.group(2)
	if lang == None:
		lang = ""
	BlockParser(man, highlight.CodeBlock(man, lang), END_CODE)

def handleFile(man, match):
	BlockParser(man, FileBlock(), END_FILE)

def handleNoWiki(man, match):
	BlockParser(man, NonParsedBlock(), END_NOWIKI)

TABLE_SEP = re.compile('\^|\|')
def handleRow(man, match):
	man.send(doc.ObjectEvent(doc.L_PAR, doc.ID_NEW_ROW, doc.Table()))
	row = match.group(1)
	object = None
	while row:
		
		# look kind
		if row[0] == '^':
			kind = doc.TAB_HEADER
		else:
			kind = doc.TAB_NORMAL
		
		# find end
		match = TABLE_SEP.search(row, 1)
		if match:
			last = match.start()
		else:
			last = len(row)
		cell = row[1:last]
		row = row[last:]
		
		# dump object if required
		if cell == '' and object:
			object.span += 1
			continue
		if object:
			man.send(doc.ObjectEvent(doc.L_PAR, doc.ID_NEW_CELL, object))
			parser.handleText(man, text)

		# strip and find align
		total = len(cell)
		cell = cell.lstrip()
		left = total - len(cell)
		total = len(cell)
		cell = cell.rstrip()
		right = total - len(cell)
		if left < right:
			align = doc.TAB_LEFT
		elif left > right:
			align = doc.TAB_RIGHT
		else:
			align = doc.TAB_CENTER
		
		# generate cell
		object = doc.Cell(kind, align, 1)
		text = cell

	# dump final object
	man.send(doc.ObjectEvent(doc.L_PAR, doc.ID_NEW_CELL, object))
	parser.handleText(man, text)

def handleHLine(man, match):
	man.send(doc.ObjectEvent(doc.L_PAR, doc.ID_NEW, doc.HorizontalLine()))

def handleIdent(man, match):
	IdentParser(man, match)

def handleQuote(man, match):
	man.send(doc.QuoteEvent(len(match.group(1))))
	parser.handleText(man, match.group(2))

LINES = [
	(handleHeader, re.compile("^(?P<pref>={1,6})(.*)(?P=pref)")),
	(handleNewPar, re.compile("^$")),
	(lambda man, match: handleList(man, "ul", match), re.compile("^((  |\t)\s*)\*(.*)")),
	(lambda man, match: handleList(man, "ol", match), re.compile("^((  |\t)\s*)-(.*)")),
	(handleCode, re.compile("^\s*<code(\s+(\S+))?\s*>\s*")),
	(handleFile, re.compile("^\s*<file>\s*")),
	(handleNoWiki, re.compile("^\s*<nowiki>\s*")),
	(handleRow, re.compile("^((\^|\|)(.*))(\^|\|)\s*$")),
	(handleHLine, re.compile("^-----*\s*$")),
	(handleIdent, INDENT_RE),
	(handleQuote, re.compile("^(>+)(.*)$"))
]

def init(man):
	man.setSyntax(LINES, WORDS)

