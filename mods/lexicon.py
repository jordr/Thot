# lexicon -- lexicon support for Thot
# Copyright (C) 2018  <hugues.casse@laposte.net>
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

# Provides the following syntax:
#	@term TERM=DEFINITION
#		Definition of new term.
#	@lexicon
#		To generate the lexicon.
#	##
#		Single #.
#	#term
#		Put a link to corresponding term.
#
#	Normal text is modified when a terml is used.

import common
import doc
import re
import sys

def label(s):
	"""Computes a label for the given term."""
	return "__lex_%s" % s


class LexPar(doc.Par):
	
	def __init__(self, id):
		doc.Par.__init__(self)
		self.id = id

	def gen(self, gen):
		# Don't anything at this point.
		pass

	def numbering(self):
		return "lexicon"


class Lexicon(doc.Node):
	
	def __init__(self, map):
		doc.Node.__init__(self)
		self.map = map
		self.appendInfo(doc.INFO_CLASS, "lexicon")

	def gen_html(self, gen):
		gen.genOpenTag("div", self)
		terms = self.map.values()
		terms.sort(lambda x, y: cmp(x.id, y.id))
		for term in terms:
			gen.genOpenTag("div", term)
			gen.genOpenTag("a", term, [("id", gen.get_href(term))])
			gen.genText(term.id)
			gen.genText(" ")
			gen.genCloseTag("span")
			doc.Container.gen(term, gen)
			gen.genCloseTag("div")
		gen.genCloseTag("div")

	def gen_latex(self, gen):
		pass
	
	def gen_docbook(self, gen):
		pass
	
	def gen(self, gen):
		if gen.getType() == "html":
			self.gen_html(gen)
		else:
			common.onWarning("lexicon cannot be generated for %s" % gen.getType())


class Term(doc.Word):
	
	def __init__(self, text):
		doc.Word.__init__(self, text)

	def gen_html(self, gen):
		node = gen.doc.getLabel(label(self.text))
		gen.genOpenTag("a", self, [("href", gen.get_href(gen.doc.getLabel(label(self.text))))])
		doc.Word.gen(self, gen)
		gen.genCloseTag("a")
	
	def gen(self, gen):
		if gen.getType() == "html":
			self.gen_html(gen)
		else:
			common.onWarning("lexicon term cannot be generated for %s" % gen.getType())


def handleDouble(man, match):
	man.send(doc.ObjectEvent(doc.L_WORD, doc.ID_NEW, doc.Word("#")))

def handleSharp(man, match):
	id = match.group("term")
	if not man.lexicon.has_key(id):
		common.onWarning(man.message("unknown term '%s'" % id))
		man.send(doc.ObjectEvent(doc.L_WORD, doc.ID_NEW, doc.Word(id)))
	else:
		man.send(doc.ObjectEvent(doc.L_WORD, doc.ID_NEW, Term(id)))

def handleParent(man, match):
	id = match.group("pterm")
	if not man.lexicon.has_key(id):
		common.onWarning(man.message("unknown term '%s'" % id))
		man.send(doc.ObjectEvent(doc.L_WORD, doc.ID_NEW, doc.Word(id)))
	else:
		man.send(doc.ObjectEvent(doc.L_WORD, doc.ID_NEW, Term(id)))

DOUBLE_WORD = (handleDouble, "##")
SHARP_WORD = (handleSharp, "#(?P<term>[^#\s]+)")
PARENT_WORD = (handleParent, "#\((?P<pterm>[^)\s]+)\)")

def handleTerm(man, match):
	
	# record the term
	id = match.group("termid")
	de = match.group("termdef")
	if man.lexicon.has_key(id):
		common.onError(man.message("term \"%s\" already defined!" % id))
	term = LexPar(id)
	man.lexicon[id] = term
	
	# finalize the parsing
	man.doc.addLabel(label(id), term)
	man.send(doc.ObjectEvent(doc.L_PAR, doc.ID_NEW, term))
	man.reparse(de)


TERM_LINE = (handleTerm, re.compile("^@term\s+(?P<termid>\S+)\s+(?P<termdef>.*)$"))

def handleLexicon(man, match):
	if match.group("garbage"):
		common.onWarning(man.message("garbage after lexicon!"))
	man.send(doc.ObjectEvent(doc.L_PAR, doc.ID_NEW, Lexicon(man.lexicon)))
	#man.pop()

LEXICON_LINE = (handleLexicon, re.compile("^@lexicon\s*(?P<garbage>.*)$"))

def init(man):
	man.lexicon = { }
	man.addWord(DOUBLE_WORD)
	man.addWord(PARENT_WORD)
	man.addWord(SHARP_WORD)
	man.addLine(TERM_LINE)
	man.addLine(LEXICON_LINE)
