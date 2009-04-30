# latex -- Thot latex back-end
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

import common
import back
import codecs
import unicodedata
import subprocess
import os.path
import doc
import sys


# USED VARIABLES
#	TITLE: document title
#	AUTHORS: document authors
#	LANG: document language
#	OUTPUT: one of 'latex' or 'pdf'
#	THOT_ENCODING: character encoding
#	LATEX_CLASS: latex class for document
#	LATEX_PREAMBLE: insert just after document definition
#	LATEX_PAPER: latex paper format (a4paper, letter, etc)

def escape(text):
	res = ""
	for c in text:
		if c in ['&',  '$', '%', '#', '_', '{', '}', '\\', '~' ]:
			res += '\\' + c
		else:
			res += c
	return res

LANGUAGES = {
	'en': 'english',
	'en_au': 'english',
	'en_bw': 'english',
	'en_ca': 'english',
	'en_dk': 'english',
	'en_gb': 'english',
	'en_hk': 'english',
	'en_ie': 'english',
	'en_in': 'english',
	'en_ng': 'english',
	'en_nz': 'english',
	'en_ph': 'english',
	'en_sg': 'english',
	'en_us': 'english',
	'en_za': 'english',
	'en_zw': 'english',
	'fr': 'frenchb',
	'fr_ca': 'frenchb',
	'fr_fr': 'frenchb',
	'fr_be': 'frencb',
	'fr_ch': 'frenchb',
	'fr_lu': 'frenchb'
}

SECTIONS = {
	0: '\\chapter{',
	1: '\\section{',
	2: '\\subsection{',
	3: '\\subsubsection{',
	4: '\\paragraph{titre',
	5: '\\subparagraph{',
}

STYLES = {
	'bold': '\\textbf{',
	'italic': '\\textit{',
	'underline': '\\underline{',
	'subscript': '\\subscript{',
	'superscript': '\\superscript{',
	'monospace': '\\texttt{',
	'deleted': '{'
}

UNSUPPORTED_IMAGE = [ '.gif' ]

ALIGNMENT = ['l', 'c', 'r']

class UnicodeEncoder:
	"""Abstract for unicode character encoding."""
	
	def toText(self, code):
		"""Transform the given code to text."""
		pass


class UTF8Encoder(UnicodeEncoder):
	"""Unicode support by UTF8 encoding."""
	encoder = None
	
	def __init__(self):
		self.encoder = codecs.getencoder('UTF-8')
	
	def toText(self, code):
		"""Transform the given code to text."""
		str, _ = self.encoder(unichr(code))
		return str


class NonUnicodeEncoder(UnicodeEncoder):
	"""Encoder for non-unicode character encoding."""
	encoding = None
	encoder = None
	
	def __init__(self, encoding):
		self.encoding = encoding
		encoder = codecs.getencoder(encoding)
	
	def toText(self, code):
		"""Transform the given code to text."""
		try:
			str, _ = self.encoder(unichr(code))
			return str
		except UnicodeEncodeError,e:
			common.onWarning('encoding %s cannot support character %x' % (self.encoding, code))
			return unicodedata.name(unistr(code))


class Generator(back.Generator):
	encoding = None
	encoder = UnicodeEncoder()
	first = False
	multi = False
	
	def __init__(self, doc):
		back.Generator.__init__(self, doc)

	def unsupported(self, feature):
		common.onError('%s unsupported for Latex back-end')

	def getType(self):
		return 'latex'

	def run(self):
		self.openMain('.tex')
		self.doc.pregen(self)
		
		# get class
		cls = self.doc.getVar('LATEX_CLASS')
		if not cls:
			cls = 'book'
		preamble = self.doc.getVar('LATEX_PREAMBLE')
		
		# look for internationalization
		lang = self.doc.getVar('LANG').lower().replace('-', '_')
		if lang:
			if LANGUAGES.has_key(lang):
				lang = LANGUAGES[lang]
			else:
				pos = lang.find('_')
				if pos < 0:
					common.onError('cannot not support "%s"' % lang)
				else:
					lang = lang[:pos]
					if LANGUAGES.has_key(lang):
						lang = LANGUAGES[lang]
					else:
						common.onError('cannot not support "%s"' % lang)

		# look for encoding
		self.encoding = self.doc.getVar('THOT_ENCODING').lower().replace('-', '_')
		if self.encoding:
			if self.encoding == 'utf_8':
				preamble += '\\usepackage{ucs}\n'
				preamble += '\\usepackage[utf8x]{inputenc}\n'
				self.encoder = UTF8Encoder()
			elif self.encoding == 'iso_8859_1':
				preamble += '\\usepackage[latin1]{inputenc}\n'
				self.encoder = NonUnicodeEncoder(self.encoding)
			else:
				common.onWarning('%s encoding is just ignored for latex' % self.encoding)
		
		# look paper size
		paper = self.doc.getVar('LATEX_PAPER')
		if not paper:
			paper = 'a4paper'

		# preamble
		self.out.write('\\documentclass[oneside,%s,%s]{%s}\n' % (paper, lang, cls))
		self.out.write('\\usepackage[T1]{fontenc}\n')
		self.out.write('\\usepackage[pdftex]{graphicx}\n')
		self.out.write('\\usepackage{hyperref}\n')
		self.out.write('\\usepackage{verbatim}\n')
		#self.out.write('\\usepackage{fancyhdr}\n')
		self.out.write(preamble)
		self.out.write('\\usepackage[%s]{babel}\n' % lang)
				
		# add custom definitions
		self.out.write('\\newcommand{\\superscript}[1]{\\ensuremath{^{\\textrm{#1}}}}\n')
		self.out.write('\\newcommand{\\subscript}[1]{\\ensuremath{_{\\textrm{#1}}}}\n')
		self.out.write('\\headheight=20pt\n')
		self.out.write('\\headsep=10pt\n')

		# write title
		self.out.write('\\begin{document}\n')
		self.out.write('\\title{%s}\n' % escape(self.doc.getVar('TITLE')))
		self.out.write('\\author{%s}\n' % escape(self.doc.getVar('AUTHORS')))
		self.out.write('\\maketitle\n\n')
		self.out.write('\\tableofcontents\n\n')
		self.out.write('\\pagebreak\n\n')
		
		# write body
		self.doc.gen(self)
		
		# write footer
		self.out.write('\\end{document}\n')
		self.out.close()
		
		# generate final format
		output = self.doc.getVar('OUTPUT')
		if not output or output == 'latex':
			pass
		elif output == 'pdf':
			for i in xrange(0, 2):	# two times for TOC (sorry)
				dir, file = os.path.split(self.path)
				print file
				process = subprocess.Popen(
					['pdflatex -halt-on-error %s' % file],
					shell = True,
					stdout = subprocess.PIPE,
					stderr = subprocess.PIPE,
					cwd = dir
				)
				out, err = process.communicate('')
				if process.returncode <> 0:
					sys.stdout.write(out)
					sys.stderr.write(err)
		else:
			common.onError('unknown output: %s' % output)

	def genFootNote(self, note):
		self.out.write('\\footnote{')
		for item in note:
			item.gen(self)
		self.out.write('}')

	def genQuoteBegin(self, level):
		# Latex does not seem to support multi-quote...
		self.out.write('\\begin{quote}\n')

	def genQuoteEnd(self, level):
		self.out.write('\\end{quote}\n')

	def genTableBegin(self, width):
		self.out.write('\\vspace{4pt}\n')
		self.out.write('\\begin{tabular}{|')
		for i in xrange(0, width):
			self.out.write('c|')
		self.out.write('}\n')
		
	def genTableEnd(self):
		self.out.write('\\hline\n')
		self.out.write('\\end{tabular}\n')
		self.out.write('\\vspace{4pt}\n\n')
	
	def genTableRowBegin(self):
		self.out.write('\\hline\n')
		self.first = True

	def genTableRowEnd(self):
		self.out.write('\\\\\n')

	def genTableCellBegin(self, kind, align, span):
		if self.first:
			bar = '|'
			self.first = False
		else:
			bar = ''
			self.out.write(' & ')
		if align <> doc.TAB_CENTER or span <> 1:
			self.multi = True
			self.out.write('\\multicolumn{%d}{%s%s|}{' % (span, bar, ALIGNMENT[align + 1]))

	def genTableCellEnd(self, kind, align, span):
		if self.multi:
			self.multi = False
			self.out.write('}')
	
	def genHorizontalLine(self):
		self.out.write('\n\\vspace{4pt}\n')
		self.out.write('\\hrule\n')
		self.out.write('\\vspace{4pt}\n\n')
	
	def genVerbatim(self, line):
		self.out.write(line)
	
	def genText(self, text):
		self.out.write(escape(text))

	def genParBegin(self):
		pass
	
	def genParEnd(self):
		self.out.write('\n\n')

	def genListBegin(self, kind):
		if kind == 'ul':
			self.out.write('\\begin{itemize}\n')
		elif kind == 'ol':
			self.out.write('\\begin{enumerate}\n')
		else:
			self.unsupported('%s list' % kind)

	def genListItemBegin(self, kind):
		self.out.write('\\item ')			

	def genListItemEnd(self, kind):
		pass

	def genListEnd(self, kind):
		if kind == 'ul':
			self.out.write('\\end{itemize}\n')
		else:
			self.out.write('\\end{enumerate}\n')

	def genStyleBegin(self, kind):
		if not kind in STYLES:
			self.unsupported('%s style' % kind)
		self.out.write(STYLES[kind])

	def genStyleEnd(self, kind):
		self.out.write('}')

	def genHeaderBegin(self, level):
		pass
		
	def genHeaderTitleBegin(self, level):
		self.out.write(SECTIONS[level])

	def genHeaderTitleEnd(self, level):
		self.out.write('}\n')
	
	def genHeaderBodyBegin(self, level):
		pass
	
	def genHeaderBodyEnd(self, level):
		pass
	
	def genHeaderEnd(self, level):
		pass

	def genLinkBegin(self, url):
		self.out.write('\href{%s}{' % escape(url))

	def genLinkEnd(self, url):
		self.out.write('}')
	
	def genImage(self, url, width = None, height = None, caption = None):
		# !!TODO!!
		# It should to download the image if the URL is external
		
		# handle unsupported image format
		root, ext = os.path.splitext(url)
		if ext.lower() not in UNSUPPORTED_IMAGE:
			link = self.loadFriendFile(url)
		else:
			original = self.relocateFriendFile(url)
			root, ext = os.path.splitext(original)
			link = self.addFriendFile(os.path.abspath(root + ".png"))
			res = subprocess.call(['convert %s %s' % (original, link)], shell = True)
			if res <> 0:
				common.onError('cannot convert image "%s" to "%s"' % (original, link))
			link = self.getFriendRelativePath(link)

		# build the command
		args = ''
		if width:
			if args:
				args += ','
			args += 'width=%dpx' % width
		if height:
			if args:
				args += ','
			args += 'height=%dpx' % height
		if args:
			args = "[%s]" % args
		self.out.write('\includegraphics%s{%s}' % (args, link))
	
	def genGlyph(self, code):
		self.out.write(self.encoder.toText(code))
		
	def genLineBreak(self):
		self.out.write(' \\\\ ')


def output(doc):
	gen = Generator(doc)
	gen.run()
