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
import doc as tdoc

# supported variables
#	TITLE: title of the document
#	AUTHORS: authors of the document
#	LANG: lang of the document
#	ENCODING: charset for the document
#	THOT_OUT_PATH:	HTML out file
#	THOT_FILE: used to derivate the THOT_OUT_PATH if not set
#	HTML_STYLES: CSS styles to use (':' separated)
#	HTML_SHORT_ICON: short icon for HTML file
#	HTML_ONE_FILE_PER: one of document (default), chapter, section.

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


class PagePolicy:
	"""A page policy allows to organize the generated document
	according the preferences of the user."""
	gen = None

	def __init__(self, gen):
		self.gen = gen

	def onHeaderBegin(self, header):
		pass

	def onHeaderEnd(self, header):
		pass

	def unfolds(self, header):
		return True

	def ref(self, header, number):
		return	"#" + number


class AllInOne(PagePolicy):
	"""Simple page policy doing nothing: only one page."""

	def __init__(self, gen):
		PagePolicy.__init__(self, gen)


class PerChapter(PagePolicy):
	"""This page policy ensures there is one page per chapter."""
	ctx = None
	chapter = None

	def __init__(self, gen):
		PagePolicy.__init__(self, gen)
		ctx = []

	def onHeaderBegin(self, header):
		if header.getLevel() == 0:
			self.chapter = header
			self.gen.openPage(header)
			self.gen.genDocHeader()
			self.gen.genTitle()
			counters = self.gen.counters
			self.gen.counters = {}
			self.gen.genContent()
			self.gen.counters = counters
			self.gen.out.write('<div class="page">\n')

	def onHeaderEnd(self, header):
		if header.getLevel() == 0:
			self.header = None
			self.gen.genFootNotes()
			self.gen.out.write('</div>\n')
			self.gen.genFooter()
			self.gen.closePage()
			print "generated %s" % (self.gen.getPage(header))

	def unfolds(self, header):
		return header == self.chapter or header.getLevel() <> 0

	def ref(self, header, number):
		if header.level == 0:
			return os.path.basename(self.gen.getPage(header))
		else:
			return PagePolicy.ref(self, header, number)


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
	struct = None
	policy = None
	pages = None
	page_count = None
	stack = None
	label = None

	def __init__(self, doc):
		back.Generator.__init__(self, doc)
		self.footnotes = []
		self.pages = { }
		self.policy = AllInOne(self)
		self.pages = { }
		self.page_count = 0
		self.stack = []

	def getType(self):
		return 'html'

	def importCSS(self, spath):
		"""Perform import of files found in a CSS stylesheet.
		spath -- path to the original CSS stylesheet."""

		# get target path
		tpath = self.getFriendFile(spath)
		if tpath:
			return self.getFriendRelativePath(tpath)
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

	def genDefList(self, deflist):
		self.out.write("<dl>\n")
		for item in deflist.getItems():
			self.out.write("<dt>")
			item.get_term().gen(self)
			self.out.write("</dt><dd>")
			item.get_def().gen(self)
			self.out.write("</dd>")
		self.out.write("</dl>\n")

	def genStyleBegin(self, kind):
		tag, _ = getStyle(kind)
		self.out.write(tag)

	def genStyleEnd(self, kind):
		_, tag = getStyle(kind)
		self.out.write(tag)

	def genHeader(self, header):

		# prolog
		number = self.nextHeaderNumber(header.getLevel())
		self.policy.onHeaderBegin(header)

		# title
		self.out.write('<h' + str(header.getLevel() + 1) + '>')
		self.out.write('<a name="' + number + '"></a>')
		self.out.write(number)
		header.genTitle(self)
		self.out.write('</h' + str(header.getLevel() + 1) + '>\n')

		# body
		header.genBody(self)

		# epilog
		self.policy.onHeaderEnd(header)
		return True

	def genLinkBegin(self, url):
		self.out.write('<a href="' + url + '">')

	def genLinkEnd(self, url):
		self.out.write('</a>')

	def genImage(self, url, width = None, height = None, caption = None, align = tdoc.ALIGN_NONE):
		if align == tdoc.ALIGN_CENTER:
			self.out.write('<center>')
		new_url = self.loadFriendFile(url)
		self.out.write('<img src="' + new_url + '"')
		if width <> None:
			self.out.write(' width="' + str(width) + '"')
		if height <> None:
			self.out.write(' height="' + str(height) + '"')
		if caption <> None:
			self.out.write(' alt="' + cgi.escape(caption, True) + '"')
		if align == tdoc.ALIGN_RIGHT:
			self.out.write(' align="right"')
		elif align == tdoc.ALIGN_LEFT:
			self.out.write(' align="left"')
		self.out.write('/>')
		if align == tdoc.ALIGN_CENTER:
			self.out.write('</center>')

	def genGlyph(self, code):
		self.out.write('&#' + str(code) + ';')

	def genLineBreak(self):
		self.out.write('<br/>')

	def genDocHeader(self):
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
				self.out.write('	<link rel="stylesheet" type="text/css" href="' + new_style + '">\n')
		short_icon = self.doc.getVar('HTML_SHORT_ICON')
		if short_icon:
			self.out.write('<link rel="shortcut icon" href="%s"/>' % short_icon)
		self.out.write('</head>\n<body>\n<div class="main">\n')

	def genTitle(self):
		self.out.write('<div class="header">\n')
		self.out.write('	<div class="title">' + cgi.escape(self.doc.getVar('TITLE')) + '</div>\n')
		self.out.write('	<div class="authors">')
		authors = common.scanAuthors(self.doc.getVar('AUTHORS'))
		first = True
		for author in authors:
			if first:
				first = False
			else:
				self.out.write(', ')
			email = ""
			if author.has_key('email'):
				email = author['email']
				self.out.write('<a href="mailto:' + cgi.escape(email) + '">')
			self.out.write(cgi.escape(author['name']))
			if email:
				self.out.write('</a>')
		self.out.write('</div>\n')
		self.out.write('</div>')

	def genLabel(self, par):
		self.out.write('<div class="label">')
		par.gen(self)
		self.out.write('</div>')

	def genEmbeddedBegin(self, kind, label):
		self.out.write('<div class="%s">' % kind)
		if label and kind == 'listing':
			self.genLabel(label)
			self.label = None
		else:
			self.label = label

	def genEmbeddedEnd(self):
		if self.label:
			self.genLabel(self.label)
		self.out.write('</div>')

	def genBody(self):
		self.out.write('<div class="page">\n')
		self.resetCounters()
		self.doc.gen(self)
		self.genFootNotes()
		self.out.write('</div>\n')

	def genFooter(self):
		self.out.write("</div>\n</body>\n</html>\n")

	def genContentItem(self, content, max = 7, out = False):

		# look if there is some content
		some = False
		for item in content:
			if item.getHeaderLevel() >= 0:
				some = True
				break
		if not some:
			return

		# generate the content
		self.out.write('		<ul class="toc">\n')
		for item in content:
			level = item.getHeaderLevel()
			if level == -1:
				continue
			number = self.nextHeaderNumber(level)
			ref = self.policy.ref(item, number)
			self.out.write('			<li>')
			self.out.write('<a href="%s">' % ref)
			self.out.write(number + ' ')
			item.genTitle(self)
			self.out.write('</a>\n')
			if self.policy.unfolds(item) and max > 1:
				self.genContentItem(item.getContent(), max - 1, out)
			self.out.write('</li>\n')
		self.out.write('		</ul>\n')

	def genContent(self, max = 7, out = False):
		self.resetCounters()
		self.out.write('	<div class="toc">\n')
		self.out.write('		<h1><a name="toc">' + cgi.escape(self.trans.get(i18n.ID_CONTENT)) + '</name></h1>\n')
		self.genContentItem(self.doc.getContent(), max, out)
		self.out.write('	</div>\n')

	def getPage(self, header):
		if not self.pages.has_key(header):
			self.pages[header] = "%s-%d.html" % (self.root, self.page_count)
			self.page_count += 1
		return self.pages[header]

	def openPage(self, header):
		path = self.getPage(header)
		self.stack.append((self.out, self.footnotes))
		self.out = open(path, 'w')
		self.footnotes = []

	def closePage(self):
		self.out.close()
		self.out, self.footnotes = self.stack.pop()

	def run(self):

		# select the policy
		self.struct = self.doc.getVar('HTML_ONE_FILE_PER')
		if self.struct == 'document' or self.struct == '':
			pass
		elif self.struct == 'chapter':
			self.policy = PerChapter(self)
		elif self.struct == 'section':
			pass
		else:
			common.onError('one_file_per %s structure is not supported' % self.struct)

		# generate the document
		self.openMain('.html')
		self.doc.pregen(self)
		self.genDocHeader()
		self.genTitle()
		self.genContent()
		self.genBody()
		self.genFooter()
		print "SUCCESS: result in %s" % self.path


def output(doc):
	gen = Generator(doc)
	gen.run()
