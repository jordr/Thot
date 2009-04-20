import parser
import doc
import re

### word processing ###
def handleStyle(handler, style):
	handler.item.onStyle(handler, doc.Style(style))

def handleURL(handler, match):
	handler.item.onWord(handler, doc.URL(match.group(0)))

def handleOpenStyle(handler, style):
	handler.item.onStyle(handler, doc.OpenStyle(style))
	
def handleCloseStyle(handler, style):
	handler.item.onStyle(handler, doc.CloseStyle(style))

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
	(handleURL, "(http|ftp|mailto|sftp|https):\S+")
]

### lines processing ###
def handleNewPar(handler, match):
	handler.item.onPar(handler, doc.Par())

def handleHeader(handler, match):
	handler.item.onHeader(handler,
		doc.Header(6 - len(match.group(1)), match.group(2)))

LINES = [
	(handleHeader, re.compile("^(?P<pref>={1,6})(.*)(?P=pref)")),
	(handleNewPar, re.compile("^$"))
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

