# textile -- textile front-end
# Copyright (C) 2015  <hugues.casse@laposte.net>
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

# Supported syntax
#
# Text Styling (TS)
#	[x]	(class)		style class
#	[x]	(#id)		identifier
#	[x]	(class#id)
#	[x]	{CSS}
#	[x]	[L]			language
#
# Paragrah Styling (PS, includes TS)
#	[x]	<			align left
#	[x]	>			align right
#	[x]	=			centered
#	[x]	<>			justified
#	[x]	-			align middle
#	[x]	^			align top
#	[x]	~			align bottom
#	[x]	(+			indentation
#	[x]	)+			indentation
#
# Text format (supports TS)
#	[x]	_xxx_		emphasize / italics
#	[x]	__xxx__		italics
#	[x]	*xxx*		strongly emphasized / bold
#	[x]	**xxx**		bold
#	[x]	-xxx-		strikethrough
#	[x]	+xxx+		underline
#	[x]	++xxx++		bigger
#	[x]	--smaller--	smaller
#	[x]	%...%		span
#	[x]	~xxx~		subscript
#	[x]	??xxx??		citation
#	[x]	^xxx^		supersript
#	[x]	==xxx==		escaping (multi-line)
#	[x]	@xxx@			inline code
#
# paragraphs
#	[ ]	IPS?.		switch to paragraph I (p default)
#	[ ]	IPS?..		multiline paragraph
#	[x]	p (default)
#	[x]	p style
#	[x]	bq -- blockquote,
#	[x] bq style
#	[ ]	bc -- block of code, 
#	[x]	hi -- header level i,
#	[x]	hi style
#	[ ]	clear
#	[ ] clear style
#	[ ] dl style
#	[x] table style
#	[x] fn style
#
# Lists
#	[x]	PS?*+		bulleted list
#	[x]	PS?#+		numbered list
#	[ ]	PS?#n		numbered list starting at n (HTML OL.START deprecated?)
#	[ ]	PS?#_		continued list (HTML OL.START deprecated; does it mean junction with previous list ?)
#	[x]	PS?(+|#)*	melted list
#	[x]	PS?; TERM \n; DEFINITION	definition list
#	[x]	PS?- TERM := DEFINITION	definition list
#
# Tables
#	table style (TaS) includes
#	[x] _	header
#	[x] \i	column span
#	[x] /i	row span
#
#	[x]	tablePS?.
#	[x]	TaS?|TaS?_. ... |TaS?_. ... |	header
#	[x]	TaS?|TaS? ... |TaS? ... |		row
#	[x] Style in row
#	[x] style in cell
#
# Notes
#	[x]	[i]			foot note reference
#	[x]	fni. ...	foot note definition
#	[x]	[#R]		foot note reference
#	[x]	note#R. ...	foot note definition
#	[x] fnxxx..		multi-line foot note
#
# Links
#	[x]	"(CSS)?...(tooltip)?":U		link to URL U
#	[x]	'(CSS)?...(tooltip)?':U		link to URL U
#	[x]	["(CSS)?...(tooltip)?":U]	link to URL U
#	[x]	[...]U						alternate form
#	[ ]	"(CSS)? ... (tooltip)?" in text
#
# Images
#	[x]	!PS?U!			Image whose URL is U.
#	[x]	!PS?U WxH!		Image with dimension (support percents / initial width, height).
#	[x]	!PS?U Ww Hh!	Image with dimension.
#	[ ]	!PS?U n%!		Percentage on w and h.
#	[x]	!PS?U (...)!	Alternate text.
#
# Meta-characters
#	[x]	(c), (r), (tm), {c|}, {|c} cent, {L-}, {-L} pound,
#		{Y=}, {=Y} yen 

import tparser
import doc
import re
import highlight
import common

URL='[a-z]+:[a-zA-Z0-9_/?*@;%+.\-&#]+'

SPEC_MAP = {
	'(c)' : 0x00a9,
	'(r)' : 0x00ae,
	'(tm)': 0x2122,
	'{c|}': 0x00a2,
	'{|c}': 0x00a2,
	'{L-}': 0x00a3,
	'{-L}': 0x00a3,
	'{Y=}': 0x00a5,
	'{=Y}': 0x00a5
}
SPEC_RE = ""
for k in SPEC_MAP.keys():
	if SPEC_RE <> "":
		SPEC_RE = SPEC_RE + "|"
	SPEC_RE = SPEC_RE + common.escape_re(k)


TS_CLASS_DEF = "\(([^)#]*)?(#([^)]+))?\)"
TS_LANG_DEF = "\[([^\]]+)\]"
TS_CSS_DEF = "{([^}]+)}"
TS_CLASS_RE = re.compile(TS_CLASS_DEF)
TS_LANG_RE = re.compile(TS_LANG_DEF)
TS_CSS_RE = re.compile(TS_CSS_DEF)
PS_ALIGN_DEF = "<>|<|>|=|-|\^|~|\(+|\)+"
PS_ALIGN_RE = re.compile(PS_ALIGN_DEF)
PS_DEF = "((%s|%s|%s|%s)*)" % (TS_CLASS_DEF, TS_LANG_DEF, TS_CSS_DEF, PS_ALIGN_DEF)

def consume_text_style(node, text):
	"""Extract text style information from the beginning of the text
	and put them in node. Return remaining text."""
	while True:
		match = TS_CLASS_RE.match(text)
		if match:
			v = match.group(1)
			if v:
				node.setInfo(doc.INFO_CLASS, v)
			v = match.group(3)
			if v:
				node.setInfo(doc.INFO_ID, v[1:])
			text = text[match.end():]
			continue
		match = TS_CSS_RE.match(text)
		if match:
			node.setInfo(doc.INFO_CSS, match.group(1))
			text = text[match.end():]
			continue
		match = TS_LANG_RE.match(text)
		if match:
			node.setInfo(doc.INFO_LANG, match.group(1))
			text = text[match.end():]
			continue
		return text

def use_text_style(node, text):
	"""Consume the whole text into text style.
	Return remaining text."""
	new_text = text
	text = ""
	while text <> new_text:
		text = new_text
		new_text = consume_text_style(node, text)
	return new_text

ALIGN_MAP = {
	'<':	(doc.INFO_ALIGN, doc.ALIGN_LEFT),
	'>':	(doc.INFO_ALIGN, doc.ALIGN_RIGHT),
	'=':	(doc.INFO_ALIGN, doc.ALIGN_CENTER),
	'<>':	(doc.INFO_ALIGN, doc.ALIGN_JUSTIFY),
	'-':	(doc.INFO_VALIGN, doc.ALIGN_CENTER),
	'^':	(doc.INFO_VALIGN, doc.ALIGN_TOP),
	'~':	(doc.INFO_VALIGN, doc.ALIGN_BOTTOM)
}
def consume_par_style(node, text):
	"""Consume paragraph style prefixing the given text (and put it on the given node).
	Return remaining text."""
	match = PS_ALIGN_RE.match(text)
	if match:
		m = match.group()
		if m[0] == '(':
			node.setInfo(doc.INFO_LEFT_PAD, len(m))
		elif m[0] == ')':
			node.setInfo(doc.INFO_LEFT_PAD, len(m))
		else:
			info, val = ALIGN_MAP[m]
			node.setInfo(info, val) 
		return text[match.end():]
	else:
		return use_text_style(node, text)

def use_par_style(node, text):
	"""Consume the whole text and put matching style information to the node."""
	new_text = text
	text = ""
	while text <> new_text:
		text = new_text
		new_text = consume_par_style(node, text)
	return new_text
		

class BlockQuote(doc.Par):

	def __init__(self):
		doc.Par.__init__(self)

	def dumpHead(self, tab):
		print "%stextile.blockquote(" % tab

	def gen(self, gen):
		gen.genEmbeddedBegin(self)
		type = gen.getType()
		if type == 'html':
			gen.genVerbatim('<blockquote>\n')
			doc.Container.gen(self, gen)
			gen.genVerbatim('</blockquote>\n')
		elif type == 'latex':
			gen.genVerbatim('\\subparagraph{}\n')
			doc.Container.gen(self, gen)
		elif type == 'docbook':
			gen.genVerbatim('<blockquote>\n')
			doc.Container.gen(self, gen)
			gen.genVerbatim('</blockquote>\n')
		else:
			common.onWarning('%s back-end is not supported by file block' % type)
		gen.genEmbeddedEnd(self)


class MyDefList(doc.DefList):
	on_term = True

	def __init__(self, depth):
		doc.DefList.__init__(self, depth)

	def onEvent(self, man, event):
		if event.id is doc.ID_NEW_DEF:
			if self.on_term:
				man.push(self.last().last())
			else:
				doc.DefList.onEvent(self, man, event)
			self.on_term = not self.on_term
		else:
			doc.DefList.onEvent(self, man, event)


class MyDefEvent(doc.DefEvent):
	
	def __init__(self, id, depth):
		doc.DefEvent.__init__(self, id, depth)
	
	def make(self):
		return MyDefList(self.depth)
	

def new_style(man, match, style, id):
	text = match.group(id)
	if style:
		man.send(doc.StyleEvent(style))
		text = use_text_style(man.get(), text)
	tparser.handleText(man, text, '')
	if style:
		man.send(doc.StyleEvent(style))

def new_escape(man, match):
	man.send(doc.ObjectEvent(doc.L_WORD, doc.ID_NEW, doc.Word(match.group('esc'))))

def new_image(man, match):
	image = match.group('image')
	w = None
	h = None
	alt = None
	if match.group('wxh'):
		l = match.group('wxh').lower().split('x')
		w = int(l[0])
		h = int(l[1])
	elif match.group('w'):
		w = int(match.group('w'))
		h = int(match.group('h'))
	if match.group('alt'):
		alt = match.group('alt')[1:-1]
	man.send(doc.ObjectEvent(doc.L_PAR, doc.ID_NEW,
		doc.EmbeddedImage(image, w, h, alt, None)))

def new_spec(man, match):
	glyph = doc.Glyph(SPEC_MAP[match.group(0)])
	man.send(doc.ObjectEvent(doc.L_WORD, doc.ID_NEW, glyph))

def new_link(man, match, ltag, utag):
	target = match.group(utag)
	label = match.group(ltag)
	if not label:
		label = target
	man.send(doc.ObjectEvent(doc.L_WORD, doc.ID_NEW_LINK, doc.Link(target)))
	man.send(doc.ObjectEvent(doc.L_WORD, doc.ID_NEW, doc.Word(label)))
	man.send(doc.CloseEvent(doc.L_WORD, doc.ID_END_LINK, "link"))

def new_footnote_ref(man, match, tag):
	man.send(doc.ObjectEvent(doc.L_WORD, doc.ID_NEW_STYLE,
		doc.FootNote(doc.FOOTNOTE_REF, match.group(tag))))
	man.send(doc.CloseStyleEvent(doc.STYLE_FOOTNOTE))

	
WORDS = [
	(lambda man, match: new_style(man, match, doc.STYLE_BOLD, "t1"),
		'\*\*(?P<t1>\S([^*]|\*[^*])*\S)\*\*'),
	(lambda man, match: new_style(man, match, doc.STYLE_STRONG, "t2"),
		'\*(?P<t2>\S([^*]*)*\S)\*'),
	(lambda man, match: new_style(man, match, doc.STYLE_ITALIC, "t3"),
		'__(?P<t3>\S([^_]|_[^_])*\S)__'),
	(lambda man, match: new_style(man, match, doc.STYLE_EMPHASIZED, "t4"),
	 	'_(?P<t4>\S[^_]*\S)_'),
	(lambda man, match: new_style(man, match, doc.STYLE_SMALLER, "t5"),
	 	'--(?P<t5>\S([^-]|-[^-])*\S)--'),
	(lambda man, match: new_style(man, match, doc.STYLE_STRIKE, "t6"),
		'-(?P<t6>\S[^-]*\S)-'),
	(lambda man, match: new_style(man, match, doc.STYLE_BIGGER, "t7"),
	 	'\+\+(?P<t7>\S([^+]|\+[^+])*\S)\+\+'),
	(lambda man, match: new_style(man, match, doc.STYLE_UNDERLINE, "t8"),
	 	'\+(?P<t8>\S[^+]*\S)\+'),
	(lambda man, match: new_style(man, match, doc.STYLE_SUBSCRIPT, "t9"),
	 	'~(?P<t9>\S[^~]*\S)~'),
	(lambda man, match: new_style(man, match, doc.STYLE_CITE, "t10"),
	 	'\?\?(?P<t10>\S([^?]|\?[^?])*\S)\?\?'),
	(lambda man, match: new_style(man, match, doc.STYLE_SUPERSCRIPT, "t11"),
	 	'\^(?P<t11>\S[^^]*\S)\^'),
	(lambda man, match: new_style(man, match, doc.STYLE_CODE, "t12"),
	 	'@(?P<t12>\S[^@]*\S)@'),
	(lambda man, match: new_style(man, match, None, "t13"),
	 	'%(?P<t13>\S[^%]*\S)%'),
	(new_escape,
		'==(?P<esc>\S([^=]|=[^=])*\S)=='),
	(new_image,
		'!(?P<image>[^!\s(]*)(\s+((?P<wxh>[0-9]+[xX][0-9]+)|((?P<w>[0-9]+)w\s+(?P<h>[0-9]+)h)))?(?P<alt>\([^)]*\))?!'),
	(new_spec,
		SPEC_RE),
	(lambda man, match: new_link(man, match, 'qtext', 'qurl'),
		'"(?P<qtext>[^"]*)":(?P<qurl>%s)' % URL),
	(lambda man, match: new_link(man, match, 'atext', 'aurl'),
		'\'(?P<atext>[^\']*)\':(?P<aurl>%s)' % URL),
	(lambda man, match: new_link(man, match, 'btext', 'burl'),
		'\["(?P<btext>[^"]*)":(?P<burl>%s)\]' % URL),
	(lambda man, match: new_link(man, match, 'batext', 'baurl'),
		'\[\'(?P<batext>[^\']*)\':(?P<baurl>%s)\]' % URL),
	(lambda man, match: new_link(man, match, 'bstext', 'bsurl'),
		'\[(?P<bstext>[^\']*)\](?P<bsurl>%s)' % URL),
	(lambda man, match: new_footnote_ref(man, match, 'fnref'),
		'\[(?P<fnref>[0-9]+)\]'),
	(lambda man, match: new_footnote_ref(man, match, 'fndref'),
		'\[#(?P<fndref>[^\]]+)\]'),
]

def new_header(man, match):
	level = int(match.group(1))
	header = doc.Header(level)
	use_par_style(header, match.group(2))
	title = match.group("text")
	man.send(doc.ObjectEvent(doc.L_HEAD, doc.ID_NEW, header))
	tparser.handleText(man, title)
	man.send(doc.Event(doc.L_HEAD, doc.ID_TITLE))

def new_par(man, match):
	man.send(doc.ObjectEvent(doc.L_PAR, doc.ID_END, doc.Par()))

def new_par_ext(man, match):
	man.send(doc.ObjectEvent(doc.L_PAR, doc.ID_END, doc.Par()))
	use_par_style(man.get(), match.group(1))
	tparser.handleText(man, match.group('text'))

def new_single_blockquote(man, match):
	bq = BlockQuote()
	use_par_style(bq, match.group(1))
	man.send(doc.ObjectEvent(doc.L_PAR, doc.ID_END, bq))
	tparser.handleText(man, match.group("text"))
	man.send(doc.ObjectEvent(doc.L_PAR, doc.ID_END, doc.Par()))

def new_multi_blockquote(man, match):
	bq = BlockQuote()
	use_par_style(bq, match.group(1))
	man.send(doc.ObjectEvent(doc.L_PAR, doc.ID_END, bq))
	tparser.handleText(man, match.group("text"))

def new_list_item(man, match):
	pref = match.group("dots")
	if pref[-1] == '*':
		kind = doc.LIST_ITEM
	elif pref[-1] == '#':
		kind = doc.LIST_NUMBER
	depth = len(pref)
	man.send(doc.ItemEvent(kind, depth))
	tparser.handleText(man, match.group("text"))

def new_definition(man, match):
	man.send(doc.DefEvent(doc.ID_NEW_DEF, 0))
	tparser.handleText(man, match.group(1), '')
	man.send(doc.DefEvent(doc.ID_END_TERM, 0))
	tparser.handleText(man, match.group(3), '')

def new_multi_def(man, match):
	man.send(MyDefEvent(doc.ID_NEW_DEF, 1))
	tparser.handleText(man, match.group(1), '')

def new_styled_table(man, match):
	table = doc.Table()
	use_par_style(table, match.group(1))
	man.send(doc.ObjectEvent(doc.L_PAR, doc.ID_NEW_ROW, table))

TABLE_SEP = re.compile('\||==')
def new_row(man, match):
	
	# build the row
	table = doc.Table()
	row_kind = doc.TAB_HEADER
	row_node = doc.Row(row_kind)
	table.content.append(row_node)
	use_par_style(row_node, match.group(1))
	man.send(doc.ObjectEvent(doc.L_PAR, doc.ID_NEW_ROW, table))

	row = match.group("row")
	while row:
	
		# scan the cell
		cell_node = doc.Cell(doc.TAB_NORMAL)
		while row:
			kind = doc.TAB_NORMAL
			if row[0] == '_':
				cell_node.kind = doc.TAB_HEADER
				kind = doc.TAB_HEADER
				row = row[1:]
				continue
			elif len(row) >= 2:
				if row[0] == '\\' and row[1] >= '0' and row[1] <= '9':
					cell_node.setInfo(doc.INFO_HSPAN, int(row[1]))
					row = row[2:]
					continue
				elif row[0] == '/' and row[1] >= '0' and row[1] <= '9':
					cell_node.setInfo(doc.INFO_VSPAN, int(row[1]))
					row = row[2:]
					continue
			new_row = consume_par_style(cell_node, row)
			if row == new_row:
				break
			row = new_row

		# find end
		pref = ""
		match = TABLE_SEP.search(row)
		while match and match.group() == "==":
			p = row.find("))", match.end())
			if p < 0:
				pref = pref + row[:match.end()]
				row = row[match.end():]
			else:
				pref = pref + row[:p + 2]
				row = row[p + 2:]
			match = TABLE_SEP.search(row)
		if match:
			cell = pref + row[:match.start()]
			row = row[match.start() + 1:]
		else:
			cell = pref + row
			row = ''

		# dump object if required
		man.send(doc.ObjectEvent(doc.L_PAR, doc.ID_NEW_CELL, cell_node))
		tparser.handleText(man, cell)
		if cell_node.kind == doc.TAB_NORMAL:
			row_node.kind = doc.TAB_NORMAL


def new_footnote_def(man, match):
	fn = doc.FootNote(doc.FOOTNOTE_DEF, match.group(1)) 
	use_par_style(fn, match.group(2))
	man.send(doc.ObjectEvent(doc.L_WORD, doc.ID_NEW_STYLE, fn))
	tparser.handleText(man, match.group("text"))
	man.send(doc.CloseStyleEvent(doc.STYLE_FOOTNOTE))

def new_footnote_multi(man, match):
	fn = doc.FootNote(doc.FOOTNOTE_DEF, match.group(1)) 
	use_par_style(fn, match.group(2))
	man.send(doc.ObjectEvent(doc.L_WORD, doc.ID_NEW_STYLE, fn))
	tparser.handleText(man, match.group("text"))


LINES = [
	(new_par, re.compile("^\s*$")),
	(new_header, re.compile("^h([1-6])" + PS_DEF + "\.(?P<text>.*)")),
	(new_par_ext, re.compile("^p" + PS_DEF + "\.(?P<text>.*)")),
	(new_multi_blockquote, re.compile("^bq" + PS_DEF + "\.\.(?P<text>.*)")),
	(new_single_blockquote, re.compile("^bq" + PS_DEF + "\.(?P<text>.*)")),
	(new_list_item, re.compile("^" + PS_DEF + "(?P<dots>[#\*]+)(?P<text>.*)")),	
	(new_definition, re.compile("^-(([^:]|:[^=])*):=(.*)")),
	(new_multi_def, re.compile("^;(.*)")),
	(new_row, re.compile("^" + PS_DEF + "\|(?P<row>.*)\|\s*")),
	(new_footnote_multi, re.compile("fn([0-9]+)" + PS_DEF + "\.\.(?P<text>.*)")),
	(new_footnote_multi, re.compile("fn#([^.]+)" + PS_DEF + "\.\.(?P<text>.*)")),
	(new_footnote_def, re.compile("fn([0-9]+)" + PS_DEF + "\.(?P<text>.*)")),
	(new_footnote_def, re.compile("fn#([^.]+)" + PS_DEF + "\.(?P<text>.*)")),
	(new_styled_table, re.compile("table" + PS_DEF + "\.$"))
]

def init(man):
	man.setSyntax(LINES, WORDS)
