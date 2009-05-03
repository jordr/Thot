# html -- Thot html back-end
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
import highlight
import doc
import shutil
import re
import urlparse
import common
import back

# supported variables
#	TITLE: title of the document
#	AUTHORS: authors of the document
#	LANG: lang of the document
#	ENCODING: charset for the document
#	THOT_OUT_PATH:	HTML out file
#	THOT_FILE: used to derivate the THOT_OUT_PATH if not set
#	HTML_STYLES: CSS styles to use (':' separated)
#	HTML_SHORT_ICON: short icon for HTML file

CSS_URL_RE = re.compile('url\(([^)]*)\)')

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
		

class Generator(back.Generator):
	"""Generator for HTML output."""
	trans = None
	doc = None
	counters = None
	path = None
	root = None
	from_files = None
	to_files = None
	footnotes = None
	
	def __init__(self, doc):
		back.Generator.__init__(self, doc)
		self.footnotes = []

	def getType(self):
		return 'html'
	
	def importCSS(self, spath):
		"""Perform import of files found in a CSS stylesheet.
		spath -- path to the original CSS stylesheet."""
		
		# get target path
		tpath = self.getFriendFile(spath)
		if tpath:
			return tpath
		tpath = self.addFriendFile(spath)
		
		# open files
		input = open(spath)
		output = open(tpath, "w")
		base = os.path.dirname(spath)
		cpath = self.getFriendRelativePath(tpath)
		
		# perform the copy
		for line in input:
			m = CSS_URL_RE.search(line)
			while m:
				output.write(line[:m.start()])
				url = m.group(1)
				res = urlparse.urlparse(url)
				if res[0]:
					output.write(m.group())
				else:
					rpath = self.loadFriendFile(res[2], base)
					output.write("url(%s)" % self.computeRelative(rpath, cpath))
				line = line[m.end():]
				m = CSS_URL_RE.search(line)
			output.write(line)
		
		# return path
		return cpath

	def resetCounters(self):
		self.counters = {
			'0': 0, '1': 0, '2': 0, '3': 0, '4': 0, '5': 0, '6': 0
		}	
	
	def genFootNote(self, note):
		self.footnotes.append(note)
		cnt = len(self.footnotes)
		self.out.write('<a class="footnumber" href="#footnote-%d">%d</a>' % (cnt, cnt))

	def genFootNotes(self):
		if not self.footnotes:
			return
		num = 1
		self.out.write('<div class="footnotes">\n')
		for note in self.footnotes:
			self.out.write('<p class="footnote">\n')
			self.out.write('<a class="footnumber" name="footnote-%d">%d</a> ' % (num, num))
			num = num + 1
			for item in note:
				item.gen(self)
			self.out.write('</p>\n')
		self.out.write('</div>')

	def genQuoteBegin(self, level):
		for i in range(0, level):
			self.out.write('<blockquote>')
		self.out.write('\n')

	def genQuoteEnd(self, level):
		for i in range(0, level):
			self.out.write('</blockquote>')
		self.out.write('\n')

	def genTable(self, table):
		self.out.write('<table>\n')
		for row in table.getRows():
			self.out.write('<tr>\n')
			for cell in row.getCells():
				
				if cell.kind == doc.TAB_HEADER:
					self.out.write('<th')
				else:
					self.out.write('<td')
				if cell.align == doc.TAB_LEFT:
					pass
				elif cell.align == doc.TAB_RIGHT:
					self.out.write(' align="right"')
				else:
					self.out.write(' align="center"')
				if cell.span <> 1:
					self.out.write(' colspan="' + str(cell.span) + '"')
				self.out.write('>')
				cell.gen(self)
				if cell.kind == doc.TAB_HEADER:
					self.out.write('</th>\n')
				else:
					self.out.write('</td>\n')

			self.out.write('</tr>\n')
		self.out.write('</table>\n')		
	
	def genHorizontalLine(self):
		self.out.write('<hr/>')
	
	def genVerbatim(self, line):
		self.out.write(line)
	
	def genText(self, text):
		self.out.write(cgi.escape(text))

	def genParBegin(self):
		self.out.write('<p>\n')
	
	def genParEnd(self):
		self.out.write('</p>\n')

	def genList(self, list):
		list_begin, item_begin, item_end, list_end = getList(list.kind)
		self.out.write(list_begin + '\n')

		for item in list.getItems():
			self.out.write(item_begin)
			item.gen(self)
			self.out.write(item_end + '\n')

		self.out.write(list_end + '\n')

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
		new_url = self.loadFriendFile(url)
		self.out.write('<img src="' + new_url + '"')
		if width <> None:
			self.out.write(' width="' + str(width) + '"')
		if height <> None:
			self.out.write(' height="' + str(height) + '"')
		if caption <> None:
			self.out.write(' alt="' + cgi.escape(caption, True) + '"')
		self.out.write('/>')
	
	def genGlyph(self, code):
		self.out.write('&#' + str(code) + ';')

	def genLineBreak(self):
		self.out.write('<br/>')

	def genHeader(self):
		self.out.write('<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">\n')
		self.out.write('<html>\n')
		self.out.write('<head>\n')
		self.out.write("	<title>" + cgi.escape(self.doc.getVar('TITLE')) + "</title>\n")
		self.out.write('	<meta name="AUTHOR" content="' + cgi.escape(self.doc.getVar('AUTHORS'), True) + '">\n')
		self.out.write('	<meta name="GENERATOR" content="Thot - HTML">\n');
		self.out.write('	<meta http-equiv="Content-Type" content="text/html; charset=' + cgi.escape(self.doc.getVar('ENCODING'), True) + '">\n')
		styles = self.doc.getVar("HTML_STYLES")
		if styles:
			for style in styles.split(':'):
				new_style = self.importCSS(style)
				self.out.write('	<link rel="stylesheet" type="text/css" href="' + new_style + '"/>\n')
		short_icon = self.doc.getVar('HTML_SHORT_ICON')
		if short_icon:
			self.out.write('<link rel="shortcut icon" href="%s"/>' % short_icon)
		self.out.write('</head>\n<body>\n<div class="main">\n')
	
	def genTitle(self):
		self.out.write('<div class="header">\n')
		self.out.write('	<div class="title">' + cgi.escape(self.doc.getVar('TITLE')) + '</div>\n')
		self.out.write('	<div class="authors">' + cgi.escape(self.doc.getVar('AUTHORS')) + '</div>\n')
		self.out.write('</div>')
	
	def genBody(self):
		self.out.write('<div class="page">\n')
		self.resetCounters()
		self.doc.gen(self)
		self.genFootNotes()
		self.out.write('</div>\n')

	def genFooter(self):
		self.out.write("</div>\n</body>\n</html>\n")
	
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
		self.out.write('		<ul class="toc">\n')
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
		self.out.write('	<div class="toc">\n')
		self.out.write('		<h1><a name="toc"/>' + cgi.escape(self.trans.get('Table of content')) + '</h1>\n')
		self.genContentItem(self.doc.getContent())
		self.out.write('	</div>\n')
	
	def run(self):
		self.openMain('.html')
		self.doc.pregen(self)
		self.genHeader()
		self.genTitle()
		self.genContent()
		self.genBody()
		self.genFooter()


def output(doc):
	gen = Generator(doc)
	gen.run()
