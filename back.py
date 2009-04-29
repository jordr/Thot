# back -- Thot commmon back-end structure
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

import i18n
import os.path
import shutil
import common

class Generator:
	"""Abstract back-end generator."""
	doc = None
	counters = None
	path = None
	root = None
	from_files = None
	to_files = None
	
	def __init__(self, path, doc):
		"""Build the abstract generator.
		path -- path of the file to create
		doc -- document to generate."""
		
		self.doc = doc
		self.path = path
		self.trans  = i18n.getTranslator(self.doc)
		self.from_files = { }
		self.to_files = { }
		self.resetCounters()
		if path.endswith('.thot'):
			self.root = path[:-5]
		else:
			self.root = path

	def getType(self):
		"""Get type of the back-end: html, latex, xml."""
		return None
	
	def relocateFriendFile(self, path):
		"""Convert document-relative path to the CWD-relative path."""
		if os.path.isabs(path):
			return path
		else:
			return os.path.join(os.path.dirname(self.path), path)
	
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
		pass

	def genFootNotes(self):
		pass

	def genQuoteBegin(self, level):
		pass

	def genQuoteEnd(self, level):
		pass

	def genTableBegin(self, width):
		pass
		
	def genTableEnd(self):
		pass
	
	def genTableRowBegin(self):
		pass

	def genTableRowEnd(self):
		pass

	def genTableCellBegin(self, kind, align, span):
		pass

	def genTableCellEnd(self, kind, align, span):
		pass
	
	def genHorizontalLine(self):
		pass
	
	def genVerbatim(self, line):
		pass
	
	def genText(self, text):
		pass

	def genParBegin(self):
		pass
	
	def genParEnd(self):
		pass

	def genListBegin(self, kind):
		pass
	
	def genListItemBegin(self, kind):
		pass

	def genListItemEnd(self, kind):
		pass

	def genListEnd(self, kind):
		pass

	def genStyleBegin(self, kind):
		pass

	def genStyleEnd(self, kind):
		pass

	def genHeaderBegin(self, level):
		pass
		
	def genHeaderTitleBegin(self, level):
		pass

	def genHeaderTitleEnd(self, level):
		pass
	
	def genHeaderBodyBegin(self, level):
		pass
	
	def genHeaderBodyEnd(self, level):
		pass
	
	def genHeaderEnd(self, level):
		pass

	def genLinkBegin(self, url):
		pass
	
	def genLinkEnd(self, url):
		pass
	
	def genImage(self, url, width = None, height = None, caption = None):
		pass
	
	def genGlyph(self, code):
		pass

	def genLineBreak(self):
		pass


def openOut(doc, suff):
	"""Create and open an out file for the given document.
	doc -- document to produce out file for,
	suff -- suffix of the out file.
	Returns (path, file). """

	out_name = doc.getVar("THOT_OUT_PATH")
	if out_name:
		out = open(out_name, "w")
		if out_name.endswith(suff):
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
				out_name = in_name[:-5] + suff
				path = in_name[:-5]
			else:
				out_name = in_name + suff
				path = out_name
			out = open(out_name, "w")
	return (path, out)

