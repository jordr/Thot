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
import highlight
import doc
import shutil
import re
import urlparse
import common

# supported variables
#	TITLE: title of the document
#	AUTHORS: authors of the document
#	LANG: lang of the document
#	THOT_OUT_PATH:	HTML out file
#	THOT_FILE: used to derivate the THOT_OUT_PATH if not set
#	THOT_ENCODING: charset for the document
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
		

class Generator:
	"""Generator for HTML output."""
	out = None
	trans = None
	doc = None
	counters = None
	path = None
	root = None
	from_files = None
	to_files = None
	footnotes = None
	
	def __init__(self, path, out, doc):
		self.out = out
		self.doc = doc
		self.path = path
		self.trans  = i18n.getTranslator(self.doc)
		self.from_files = { }
		self.to_files = { }
		self.resetCounters()
		self.footnotes = []
		if path.endswith('.thot'):
			self.root = path[:-5]
		else:
			self.root = path

	def getType(self):
		return 'html'
	
	def getFriendFile(self, path, base = ''):
		"""Test if a file is a friend file and returns its generation
		relative path. Return None if the the file is not part
		of the generation.
		path -- path of the file,
		base -- potential file base."""
		
		if os.path.isabs(path):
			apath = path
		elif base == '':
			return path
		else:
			apath = os.path.join(base, path)
		if self.from_files.has_key(apath):
			return self.from_files[apath]
		else:
			return None
	
	def addFriendFile(self, path, base = ''):
		"""Add the given base/path to the generated files and
		return the target path.
		path -- path to the file
		base -- base directory containing the file ('' for CWD files)"""
		
		# normalize path
		if os.path.isabs(path):
			apath = path
			base, path = os.path.split(path)
		elif base == '':
			return path
		else:
			apath = os.path.join(base, path)
		if self.from_files.has_key(apath):
			return self.from_files[apath]
		
		# make target path
		file, ext = os.path.splitext(path)
		file = os.path.join(self.root + "-imports", file)
		tpath = file + ext
		cnt = 0
		while self.to_files.has_key(tpath):
			tpath = "%s-%d.%s" % (file, cnt, ext)
			cnt = cnt + 1
		
		# create direcory
		dpath = os.path.dirname(tpath)
		if not os.path.exists(dpath):
			try:
				os.makedirs(dpath)
			except os.error, e:
				common.onError('cannot create directory "%s": %s' % (dpath, str(e)))
		
		# record all
		self.from_files[apath] = tpath
		self.to_files[tpath] = apath;
		return tpath

	def computeRelative(self, file, base):
		l = len(os.path.commonprefix([os.path.dirname(base), file]))
		file = file[l:] 
		while file[0] == '/':
			file = file[1:]
		return file

	def getFriendRelativePath(self, path):
		"""Get the relative path to the HTML of a friend file."""
		return self.computeRelative(path, self.path)

	def loadFriendFile(self, path, base = ''):
		"""Load a friend file in the generation location.
		to_path -- relative path to write to.
		from_path -- absolute file to the file to copy."""
		
		# get the target path
		if base == '' and not os.path.isabs(path):
			return path
		tpath = self.getFriendFile(path, base)
		
		# we need to load it !
		if not tpath:
			spath = os.path.join(base, path)
			tpath = self.addFriendFile(path, base)
			try:
				shutil.copyfile(spath, tpath)
			except shutil.Error, e:
				pass
			except IOError, e:
				common.onError('can not copy "%s" to "%s": %s' % (spath, tpath, str(e)))
		
		# build the HTML relative path
		return self.getFriendRelativePath(tpath)

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

	def genFootNote(self, note):
		self.footnotes.append(note)
		cnt = len(self.footnotes)
		self.out.write('<a class="footnumber" href="#footnote-%d">%d</a>' % (cnt, cnt))

	def genFootNotes(self):
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

	def genTableBegin(self):
		self.out.write('<table>\n')

	def genTableEnd(self):
		self.out.write('</table>\n')		
	
	def genTableRowBegin(self):
		self.out.write('<tr>\n')

	def genTableRowEnd(self):
		self.out.write('</tr>\n')

	def genTableCellBegin(self, kind, align, span):
		if kind == doc.TAB_HEADER:
			self.out.write('<th')
		else:
			self.out.write('<td')
		if align == doc.TAB_LEFT:
			self.out.write(' align="left"')
		elif align == doc.TAB_RIGHT:
			self.out.write(' align="right"')
		else:
			self.out.write(' align="center"')
		if span <> 1:
			self.out.write(' colspan="' + str(span) + '"')
		self.out.write('>')

	def genTableCellEnd(self, kind, align, span):
		if kind == doc.TAB_HEADER:
			self.out.write('</th>\n')
		else:
			self.out.write('</td>\n')
	
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
		self.doc.pregen(self)
		self.genHeader()
		self.genTitle()
		self.genContent()
		self.genBody()
		self.genFooter()


def output(doc):
	out = None
	path = None

	# open the output file
	out_name = doc.getVar("THOT_OUT_PATH")
	if out_name:
		out = open(out_name, "w")
		if out_name.endswith('.html'):
			path = out_name[:-5]
		else:
			path = out_name
	else:
		in_name = doc.getVar("THOT_FILE")
		if not in_name or in_name == "<stdin>":
			out = sys.stdout
			path = "stdin"
		else:
			if in_name.endswith(".thot"):
				out_name = in_name[:-5] + ".html"
				path = in_name[:-5]
			else:
				out_name = in_name + ".html"
				path = out_name
			out = open(out_name, "w")

	# generate output
	gen = Generator(path, out, doc)
	gen.run()
