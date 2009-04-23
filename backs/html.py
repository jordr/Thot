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

import sys
import os
import cgi
import i18n

# supported variables
#	TITLE: title of the document
#	AUTHORS: authors of the document
#	LANG: lang of the document
#	THOT_OUT_PATH:	HTML out file
#	THOT_FILE: used to derivate the THOT_OUT_PATH if not set
#	THOT_ENCODING: charset for the document
#	HTML_STYLE: CSS style to use

LISTS = {
	'ul': ('<ul>', '<li>', '</li>', '</ul>'),
	'ol': ('<ol>', '<li>', '</li>', '</ol>'),
}
def getList(list):
	if LISTS.has_key(list):
		return LISTS[list]
	else:
		raise Exception('list ' + list + ' not supported')

STYLES = {
	'bold': ('<b>', '</b>'),
	'italic': ('<i>', '</i>'),
	'underline': ('<u>', '</u>'),
	'subscript': ('<sub>', '</sub>'),
	'superscript': ('<sup>', '</sup>'),
	'monospace': ('<tt>', '</tt>'),
	'deleted': ('<s>', '</s>')
}
def getStyle(style):
	if STYLES.has_key(style):
		return STYLES[style]
	else:
		raise Exception('style ' + style + ' not supported')


class Generator:
	"""Generator for HTML output."""
	out = None
	trans = None
	doc = None
	counters = None
	
	def __init__(self, out, doc):
		self.out = out
		self.doc = doc
		self.trans = i18n.getTranslator(self.doc)
		self.resetCounters()
	
	def resetCounters(self):
		self.counters = {
			'0': 0, '1': 0, '2': 0, '3': 0, '4': 0, '5': 0, '6': 0
		}	
	
	def nextHeaderNumber(self, num):
		self.counters[str(num)] = self.counters[str(num)] + 1
		for i in xrange(num + 1, 6):
			self.counters[str(i)] = 0
		return self.getHeaderNumber(num)
	
	def getHeaderNumber(self, num):
		res = str(self.counters['0'])
		for i in xrange(1, num + 1):
			res = res + '.' + str(self.counters[str(i)])
		return res
	
	def genText(self, text):
		self.out.write(cgi.escape(text))

	def genParBegin(self):
		self.out.write('<p>\n')
	
	def genParEnd(self):
		self.out.write('</p>\n')

	def genListBegin(self, kind):
		if kind == "ul":
			self.out.write('<ul>\n')
		elif kind == 'ol':
			self.out.write('<ol>\n')
		else:
			raise Exception('list ' + kind + ' unsupported')
	
	def genListBegin(self, kind):
		tag, _, _, _ = getList(kind)
		self.out.write(tag + '\n')
		
	def genListItemBegin(self, kind):
		_, tag, _, _ = getList(kind)
		self.out.write(tag)

	def genListItemEnd(self, kind):
		_, _, tag, _ = getList(kind)
		self.out.write(tag + '\n')

	def genListEnd(self, kind):
		_, _, _, tag = getList(kind)
		self.out.write(tag + '\n')

	def genStyleBegin(self, kind):
		tag, _ = getStyle(kind)
		self.out.write(tag)

	def genStyleEnd(self, kind):
		_, tag = getStyle(kind)
		self.out.write(tag)

	def genHeaderBegin(self, level):
		pass
		
	def genHeaderTitleBegin(self, level):
		number = self.nextHeaderNumber(level)
		self.out.write('<h' + str(level + 1) + '>')
		self.out.write('<a name="' + number + '"/>')
		self.out.write(number)

	def genHeaderTitleEnd(self, level):
		self.out.write('</h' + str(level + 1) + '>\n')
	
	def genHeaderBodyBegin(self, level):
		pass
	
	def genHeaderBodyEnd(self, level):
		pass
	
	def genHeaderEnd(self, level):
		pass

	def genLinkBegin(self, url):
		self.out.write('<a href="' + url + '">')
	
	def genLinkEnd(self, url):
		self.out.write('</a>')
	
	def genImage(self, url, width = None, height = None, caption = None):
		self.out.write('<img src="' + url + '"')
		if width <> None:
			self.out.write(' width="' + str(width) + '"')
		if height <> None:
			self.out.write(' height="' + str(height) + '"')
		if caption <> None:
			self.out.write(' alt="' + cgi.escape(caption, True) + '"')
		self.out.write('/>')
	
	def genGlyph(self, code):
		self.out.write('&#' + str(code) + ',')

	def genLineBreak(self):
		self.out.write('<br/>')

	def genHeader(self):
		self.out.write('<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">\n')
		self.out.write('<html>\n')
		self.out.write('<head>\n')
		self.out.write("	<title>" + cgi.escape(self.doc.getVar('TITLE')) + "</title>\n")
		self.out.write('	<meta name="AUTHOR" content="' + cgi.escape(self.doc.getVar('AUTHORS'), True) + '">\n')
		self.out.write('	<meta name="GENERATOR" content="Thot - HTML">\n');
		self.out.write('	<meta http-equiv="Content-Type" content="text/html; charset=' + cgi.escape(self.doc.getVar('THOT_ENCODING'), True) + '">\n')
		style = self.doc.getVar("HTML_STYLE")
		if style:
			self.out.write('	<link rel="stylesheet" type="text/css" href="' + style + '">')
		self.out.write("</head>\n<body>\n")
	
	def genTitle(self):
		self.out.write('	<h1 class="title">' + cgi.escape(self.doc.getVar('TITLE')) + '</h1>\n')
		self.out.write('	<h1 class="authors">' + cgi.escape(self.doc.getVar('AUTHORS')) + '</h1>\n')
	
	def genBody(self):
		self.resetCounters()
		self.doc.gen(self)
	
	def genFooter(self):
		self.out.write("</body>\n</html>\n")
	
	def genContentItem(self, content):
		
		# look if there is some content
		some = False
		for item in content:
			if item.getTitleLevel() >= 0:
				some = True
				break
		if not some:
			return
		
		# generate the content
		self.out.write('		<ul>\n')
		for item in content:
			level = item.getTitleLevel()
			if level == -1:
				continue
			number = self.nextHeaderNumber(level)
			self.out.write('			<li>')
			self.out.write('<a href="#' + number + '">')
			self.out.write(number + ' ')
			item.genTitle(self)
			self.out.write('</a>')
			self.genContentItem(item.getContent())
			self.out.write('</li>\n')
		self.out.write('		</ul>\n')

	def genContent(self):
		self.resetCounters()
		self.out.write('	<div class="content">\n')
		self.out.write('		<h1><a name="content"/>' + cgi.escape(self.trans.get('Content')) + '</h1>\n')
		self.genContentItem(self.doc.getContent())
		self.out.write('	</div>\n')
	
	def run(self):
		self.genHeader()
		self.genTitle()
		self.genContent()
		self.genBody()
		self.genFooter()


def output(doc):
	out = None

	# open the output file
	out_name = doc.getVar("THOT_OUT_PATH")
	if out_name:
		out = open(out_name, "w")
	else:
		in_name = doc.getVar("THOT_FILE")
		if not in_name or in_name == "<stdin>":
			out = sys.stdout
		else:
			if in_name.endswith(".thot"):
				out_name = in_name[:-5] + ".html"
			else:
				out_name = in_name + ".html"
			out = open(out_name, "w")

	# generate output
	gen = Generator(out, doc)
	gen.run()
