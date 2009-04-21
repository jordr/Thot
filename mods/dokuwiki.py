import parser
import doc
import re

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


### word processing ###
def handleStyle(handler, style):
	handler.item.onStyle(handler, doc.Style(style))

def handleURL(handler, match):
	handler.item.onWord(handler, doc.URL(match.group(0)))

def handleOpenStyle(handler, style):
	handler.item.onStyle(handler, doc.OpenStyle(style))
	
def handleCloseStyle(handler, style):
	handler.item.onStyle(handler, doc.CloseStyle(style))

def handleLineBreak(man, match):
	man.item.onWord(man, doc.LineBreak())

def handleSmiley(man, match):
	image = doc.Image(man.doc.getVar("THOT_BASE") + SMILEYS[match.group(0)])
	man.item.onWord(man, image)

def handleEntity(man, match):
	glyph = doc.Glyph(ENTITIES[match.group(0)])
	man.item.onWord(man, glyph)

WORDS = [
	(lambda handler, match: handleStyle(handler, "bold"), "\*\*"),
	(lambda handler, match: handleStyle(handler, "italic"), "\/\/"),
	(lambda handler, match: handleStyle(handler, "underline"), "__"),
	(lambda handler, match: handleStyle(handler, "monospace"), "''"),
	(lambda handler, match: handleOpenStyle(handler, "subscript"), "<sub>"),
	(lambda handler, match: handleCloseStyle(handler, "subscript"), "<\/sub>"),	
	(lambda handler, match: handleOpenStyle(handler, "superscript"), "<sup>"),
	(lambda handler, match: handleCloseStyle(handler, "superscript"), "<\/sup>"),	
	(lambda handler, match: handleOpenStyle(handler, "deleted"), "<del>"),
	(lambda handler, match: handleCloseStyle(handler, "deleted"), "<\/del>"),	
	(handleURL, "(http|ftp|mailto|sftp|https):\S+"),
	(handleSmiley, SMILEYS_RE),
	(handleEntity, ENTITIES_RE),
	(handleLineBreak, "\\\\\\\\")
]

### lines processing ###
def handleNewPar(handler, match):
	handler.item.onPar(handler, doc.Par())

def handleHeader(handler, match):
	handler.item.onHeader(handler,
		doc.Header(6 - len(match.group(1)), match.group(2)))

def handleList(man, kind, match):
	man.item.onListItem(man, kind, computeDepth(match.group(1)))
	parser.handleText(man, match.group(3))


LINES = [
	(handleHeader, re.compile("^(?P<pref>={1,6})(.*)(?P=pref)")),
	(handleNewPar, re.compile("^$")),
	(lambda man, match: handleList(man, "ul", match), re.compile("^((  |\t)\s*)\*(.*)")),
	(lambda man, match: handleList(man, "ol", match), re.compile("^((  |\t)\s*)\*(.*)"))
]

def init(handler):

	handler.lines = []
	for line in parser.INITIAL_LINES:
		handler.lines.append(line)
	handler.lines.extend(LINES)
	
	handler.words = []
	for word in parser.INITIAL_WORDS:
		handler.words.append(word)
	handler.words.extend(WORDS)
	handler.words_re = None

