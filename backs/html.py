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
	doc.STYLE_BOLD: 		('<b>', '</b>'),
	doc.STYLE_STRONG: 		('<strong>', '</strong>'),
	doc.STYLE_ITALIC: 		('<i>', '</i>'),
	doc.STYLE_EMPHASIZED:	('<em>', '</em>'),
	doc.STYLE_UNDERLINE: 	('<u>', '</u>'),
	doc.STYLE_SUBSCRIPT: 	('<sub>', '</sub>'),
	doc.STYLE_SUPERSCRIPT: 	('<sup>', '</sup>'),
	doc.STYLE_MONOSPACE: 	('<tt>', '</tt>'),
	doc.STYLE_STRIKE: 		('<strike>', '</strike>'),
	doc.STYLE_BIGGER:		('<big>', '</big>'),
	doc.STYLE_SMALLER:		('<small>', '</small>'),
	doc.STYLE_CITE:			('<cite>', '</cite>'),
	doc.STYLE_CODE:			('<code>', '</code>')
}

ESCAPE_MAP = {
	'<'	: "&lt;",	
	'>'	: "&gt;",
	'&'	: "amp,"
}
def escape(s):
	r = ""
	for c in s:
		if ord(c) >= 128:
			r = r + ("&#%d;" % ord(c))
		elif ESCAPE_MAP.has_key(c):
			r = r + ESCAPE_MAP[c]
		else:
			r = r + c
	return r


def getStyle(style):
	if STYLES.has_key(style):
		return STYLES[style]
	else:
		raise Exception('style ' + style + ' not supported')


def makeRef(nums):
	"""Generate a reference from an header number array."""
	return ".".join([str(i) for i in nums])


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

	def genRefs(self):
		"""Generate and return the references for the given generator."""
		self.gen.refs = { }
		self.makeRefs([1], { }, self.gen.doc)

	def makeRefs(self, nums, others, node):
		"""Traverse the document tree and generate references in the given map."""
		
		# number for header
		num = node.numbering()
		if num == 'header':
			r = makeRef(nums)
			self.gen.refs[node] = ("#%s" % r, r)
			nums.append(1)
			for item in node.getContent():
				self.makeRefs(nums, others, item)
			nums.pop()
			nums[-1] = nums[-1] + 1
		
		# number for embedded
		else:
			
			# set number
			if self.gen.doc.getLabelFor(node):
				if num:
					if not others.has_key(num):
						others[num] = 1
						n = 1
					else:
						n = others[num] + 1
					self.gen.refs[node] = ("#%s-%d" % (num, n), str(n))
					others[num] = n
		
			# look in children
			for item in node.getContent():
				self.makeRefs(nums, others, item)

	def run(self):
		self.gen.openMain('.html')
		self.genRefs()
		self.gen.doc.pregen(self.gen)
		self.gen.genDocHeader()
		self.gen.genTitle()
		self.gen.genContent([], 100)
		self.gen.genBody()
		self.gen.genFooter()


class PerSection(PagePolicy):
	"""This page policy ensures there is one page per section."""

	def __init__(self, gen):
		PagePolicy.__init__(self, gen)

	def genRefs(self):
		"""Generate and return the references for the given generator."""
		self.gen.refs = { }
		self.makeRefs([1], { }, self.gen.doc, 0)

	def makeRefs(self, nums, others, node, page):
		"""Traverse the document tree and generate references in the given map."""
		my_page = page
		
		# number for header
		num = node.numbering()
		if num == 'header':
			page = page + 1
			self.gen.refs[node] = ("%s-%d.html" % (self.gen.root, my_page), ".".join([str(n) for n in nums]))
			nums.append(1)
			for item in node.getContent():
				page = self.makeRefs(nums, others, item, page)
			nums.pop()
			nums[-1] = nums[-1] + 1
		
		# number for embedded
		else:
			
			# set number
			if num and self.gen.doc.getLabelFor(node):
				if not others.has_key(num):
					others[num] = 1
					n = 1
				else:
					n = others[num] + 1
				r = str(n)
				self.gen.refs[node] = ("%s-%s#%s-%s" % (self.gen.root, my_page, page, num, r), r)
				others[num] = n
		
			# look in children
			for item in node.getContent():
				page = self.makeRefs(nums, others, item, page)

		return page

	def process(self, header, path):

		# generate the page header
		subheaders = []
		self.gen.openPage(header)
		self.gen.genDocHeader()
		self.gen.genTitle()
		path = path + [header]
		self.gen.genContent(path, 100)
		self.gen.genBodyHeader()
		
		# generate the title
		for h in path:
			self.gen.genHeaderTitle(h)
		
		# generate the content
		for child in header.getContent():
			if child.getHeaderLevel() >= 0:
				subheaders.append(child)
			else:
				child.gen(self.gen)
		
		# generate the page footer
		self.gen.genFootNotes()
		self.gen.genBodyFooter()
		self.gen.genFooter()
		self.gen.closePage()
		print "generated %s" % (self.gen.getPage(header))
		
		# generate the children header pages
		#path = path + [header]
		for subheader in subheaders:
			self.process(subheader, path)
		path.pop()
		

	def run(self):
		
		# preparation
		self.gen.openMain('.html')
		self.gen.doc.pregen(self.gen)
		self.genRefs()

		# generate header
		self.gen.genDocHeader()
		self.gen.genTitle()
		self.gen.genContent([], 0)
		self.gen.genBodyHeader()

		# generate main page
		chapters = []
		for node in self.gen.doc.getContent():
				if node.getHeaderLevel() == 0:
					chapters.append(node)
				else:
					node.gen(self.gen)
		
		# generate footer
		self.gen.genBodyFooter()
		self.gen.genFooter()
		print "generated %s" % self.gen.path

		# generate chapter pages
		for chapter in chapters:
			self.process(chapter, [])


class PerChapter(PagePolicy):
	"""This page policy ensures there is one page per chapter."""

	def __init__(self, gen):
		PagePolicy.__init__(self, gen)

	def genRefs(self):
		"""Generate and return the references for the given generator."""
		self.gen.refs = { }
		self.makeRefs([1], { }, self.gen.doc, '')

	def makeRefs(self, nums, others, node, page):
		"""Traverse the document tree and generate references in the given map."""
		
		# number for header
		num = node.numbering()
		if num == 'header':
			if node.level == 0:
				page = "%s-%d.html" % (self.gen.root, nums[0] - 1)
				self.gen.refs[node] = ("%s" % page, str(nums[0]))
			else:
				r = makeRef(nums)
				self.gen.refs[node] = ("%s#%s" % (page, r), r)
			nums.append(1)
			for item in node.getContent():
				self.makeRefs(nums, others, item, page)
			nums.pop()
			nums[-1] = nums[-1] + 1
		
		# number for embedded
		else:
			
			# set number
			if num and self.gen.doc.getLabelFor(node):
				if not others.has_key(num):
					others[num] = 1
					n = 1
				else:
					n = others[num] + 1
				r = str(n)
				self.gen.refs[node] = ("%s#%s-%s" % (page, num, r), r)
				others[num] = n
		
			# look in children
			for item in node.getContent():
				self.makeRefs(nums, others, item, page)

	def run(self):
		chapters = []

		# generate main page
		self.gen.openMain('.html')
		self.genRefs()
		self.gen.doc.pregen(self.gen)
		self.gen.genDocHeader()
		self.gen.genTitle()
		self.gen.genContent([], 0)
		self.gen.genBodyHeader()
		for node in self.gen.doc.getContent():
				if node.getHeaderLevel() == 0:
					chapters.append(node)
		self.gen.genBodyFooter()
		self.gen.genFooter()
		print "generated %s" % self.gen.path

		# generate chapter pages
		for node in chapters:
			self.gen.openPage(node)
			self.gen.genDocHeader()
			self.gen.genTitle()
			self.gen.genContent([node], 100)
			self.gen.genBodyHeader()
			node.gen(self.gen)
			self.gen.genFootNotes()
			self.gen.genBodyFooter()
			self.gen.genFooter()
			self.gen.closePage()
			print "generated %s" % (self.gen.getPage(node))


class Generator(back.Generator):
	"""Generator for HTML output."""
	trans = None
	doc = None
	path = None
	root = None
	from_files = None
	to_files = None
	footnotes = None
	struct = None
	pages = None
	page_count = None
	stack = None
	label = None
	refs = None

	def __init__(self, doc):
		back.Generator.__init__(self, doc)
		self.footnotes = []
		self.pages = { }
		self.pages = { }
		self.page_count = 0
		self.stack = []
		self.refs = { }

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

	def genFootNote(self, note):
		if note.kind <> doc.FOOTNOTE_REF:
			self.footnotes.append(note)
		if note.kind <> doc.FOOTNOTE_DEF:
			if note.ref:
				id = note.id
				ref = "#footnote-custom-%s" % note.ref
			else:
				id = str(len(self.footnotes))
				ref = "#footnote-%s" % id
			self.out.write('<a class="footnumber" href="%s">%s</a>' % (ref, id))

	def genFootNotes(self):
		if not self.footnotes:
			return
		num = 1
		self.out.write('<div class="footnotes">\n')
		for note in self.footnotes:
			self.out.write('<p class="footnote">\n')
			if note.ref:
				id = note.id 
				ref = "footnote-custom-%s" % note.ref
			else:
				id = str(num)
				ref = "footnote-%d" % num
			self.out.write('<a class="footnumber" name="%s">%s</a> ' % (ref, id))
			num = num + 1
			for item in note.content:
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
		self.out.write('<div class="table">')
		self.out.write('<table>\n')
		for row in table.getRows():
			self.out.write('<tr>\n')
			for cell in row.getCells():

				if cell.kind == doc.TAB_HEADER:
					self.out.write('<th')
				else:
					self.out.write('<td')
				align = cell.getInfo(doc.INFO_ALIGN)
				if not align or align == doc.TAB_LEFT:
					pass
				elif align == doc.TAB_RIGHT:
					self.out.write(' align="right"')
				else:
					self.out.write(' align="center"')
				hspan = cell.getInfo(doc.INFO_HSPAN)
				if hspan:
					self.out.write(' colspan="' + str(hspan) + '"')
				vspan = cell.getInfo(doc.INFO_VSPAN)
				if vspan:
					self.out.write(' rowspan="' + str(vspan) + '"')
				self.out.write('>')
				cell.gen(self)
				if cell.kind == doc.TAB_HEADER:
					self.out.write('</th>\n')
				else:
					self.out.write('</td>\n')

			self.out.write('</tr>\n')
		self.out.write('</table>\n')
		self.genLabel(table)
		self.out.write('</div>')

	def genHorizontalLine(self):
		self.out.write('<hr/>')

	def genVerbatim(self, line):
		self.out.write(line)

	def genText(self, text):
		self.out.write(escape(text))

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

	def genHeaderTitle(self, header):
		"""Generate the title of a header."""
		number = self.refs[header][1]
		self.out.write('<h' + str(header.getLevel() + 1) + '>')
		self.out.write('<a name="' + number + '"></a>')
		self.out.write(number)
		header.genTitle(self)
		self.out.write('</h' + str(header.getLevel() + 1) + '>\n')

	def genHeader(self, header):
		"""Generate a whole header element (title + content)."""
		self.genHeaderTitle(header)
		header.genBody(self)
		return True

	def genLinkBegin(self, url):
		self.out.write('<a href="' + url + '">')

	def genLinkEnd(self, url):
		self.out.write('</a>')

	def genImage(self, url, caption = None, node = None):
		assert node
		align = node.getInfo(tdoc.INFO_ALIGN)
		if align:
			self.out.write("<div class=\"figure\">")
		if align == tdoc.ALIGN_CENTER:
			self.out.write('<center>')
		new_url = self.loadFriendFile(url)
		self.out.write('<img src="' + new_url + '"')
		width = node.getInfo(tdoc.INFO_WIDTH)
		if width <> None:
			self.out.write(' width="' + str(width) + '"')
		height = node.getInfo(tdoc.INFO_WIDTH)
		if height <> None:
			self.out.write(' height="' + str(height) + '"')
		if caption <> None:
			self.out.write(' alt="' + cgi.escape(str(caption), True) + '"')
		if align == tdoc.ALIGN_RIGHT:
			self.out.write(' align="right"')
		elif align == tdoc.ALIGN_LEFT:
			self.out.write(' align="left"')
		self.out.write('/>')
		if node:
			self.genLabel(node)
		if align == tdoc.ALIGN_CENTER:
			self.out.write('</center>')
		if align:
			self.out.write("</div>")

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

	def genLabel(self, node):
		caption = node.getCaption()
		if caption or self.refs.has_key(node):
			self.out.write('<div class="label">')
			if self.refs.has_key(node):
				r = self.refs[node]
				self.out.write("<a name=\"%s\" class=\"label-ref\">%s</a>" % (r[1], self.trans.caption(node.numbering(), r[1])))
			if caption:
				for item in caption.getContent():
					item.gen(self)
			self.out.write('</div>')

	def genEmbeddedBegin(self, node):
		self.out.write('<div class="%s">' % node.numbering())
		self.genLabel(node)

	def genEmbeddedEnd(self, node):
		if self.label:
			self.genLabel(self.label)
		self.out.write('</div>')

	def genBodyHeader(self):
		self.out.write('<div class="page">\n')

	def genBodyFooter(self):
		self.out.write('</div>\n')

	def genBody(self):
		self.genBodyHeader()
		self.doc.gen(self)
		self.genFootNotes()
		self.genBodyFooter()

	def genFooter(self):
		self.out.write("</div>\n</body>\n</html>\n")

	#def traverseContentItem(self, node, enter, 0):
	#	if i <> 0:
	#		self.out.write('<a href="%s">' % self.refs[node][0])
	#	for item in node.getContent():
		
	def genContentEntry(self, node, indent):
		"""Generate a content entry (including numbering, title and link)."""
		self.out.write('%s<a href="%s">' % (indent, self.refs[node][0]))
		self.out.write(self.refs[node][1])
		self.out.write(' ')
		node.genTitle(self)
		self.out.write('</a>\n')

	def expandContent(self, node, level, indent):
		"""Expand recursively the content and to the given level."""
		if node.getHeaderLevel() >= level:
			return
		one = False
		for child in node.getContent():
			if child.getHeaderLevel() >= 0:
				if not one:
					one = True
					self.out.write('%s<ul class="toc">\n' % indent)
				self.out.write("%s<li>\n" % indent)
				self.genContentEntry(child, indent)
				self.expandContent(child, level, indent + "  ")
				self.out.write("%s</li>\n" % indent)
		if one:
			self.out.write('%s</ul>\n' % indent)

	def expandContentTo(self, node, path, level, indent):
		"""Expand, not recursively, the content until reaching the end of the path.
		From this, expand recursively the sub-nodes."""
		if not path:
			self.expandContent(node, level, indent)
		else:
			one = False
			for child in node.getContent():
				if child.getHeaderLevel() >= 0:
					if not one:
						one = True
						self.out.write('%s<ul class="toc">\n' % indent)
					self.out.write("%s<li>\n" % indent)
					self.genContentEntry(child, indent)
					if path[0] == child:
						self.expandContentTo(child, path[1:], level, indent + '  ')
					self.out.write("%s</li>\n" % indent)
			if one:
				self.out.write('%s</ul>\n' % indent)
				
	def genContent(self, path, level):
		"""Generate the content without expanding until ending the path
		(of headers) with an expanding maximum level.
		"""
		self.out.write('<div class="toc">\n')
		self.out.write('<h1><a name="toc">' + cgi.escape(self.trans.get(i18n.ID_CONTENT)) + '</name></h1>\n')
		self.expandContentTo(self.doc, path, level, '  ')
		self.out.write('</div>\n')

	def genRef(self, ref):
		node = self.doc.getLabel(ref.label)
		if not node:
			common.onWarning("label\"%s\" cannot be resolved" % ref.label)
		else:
			r = self.refs[node]
			self.out.write("<a href=\"%s\">%s</a>" % (r[0], r[1]))

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
			policy = AllInOne(self)
		elif self.struct == 'chapter':
			policy = PerChapter(self)
		elif self.struct == 'section':
			policy = PerSection(self)
		else:
			common.onError('one_file_per %s structure is not supported' % self.struct)

		# generate the document
		policy.run()
		print "SUCCESS: result in %s" % self.path


def output(doc):
	gen = Generator(doc)
	gen.run()
