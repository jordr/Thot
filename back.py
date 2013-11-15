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
import doc as tdoc

class Generator:
	"""Abstract back-end generator."""
	doc = None
	#counters = None
	path = None
	root = None
	out = None
	from_files = None
	to_files = None
	added_files = None

	def __init__(self, doc):
		"""Build the abstract generator.
		doc -- document to generate."""
		self.doc = doc
		self.trans  = i18n.getTranslator(self.doc)
		self.from_files = { }
		self.to_files = { }
		self.added_files = []

	def getType(self):
		"""Get type of the back-end: html, latex, xml."""
		return None

	def addedFiles(self):
		"""Get the added files."""
		return self.added_files

	def addFile(self, file):
		"""Add a file to the list of files linked to the document."""
		if file not in self.added_files:
			self.added_files.append(file)

	def friendFiles(self):
		"""Get the friend files of the document."""
		print self.from_files
		print self.to_files
		return self.to_files

	def getImportDir(self):
		"""Get the directory containing the imports."""
		return self.root + "-imports"

	def openMain(self, suff):
		"""Create and open an out file for the given document.
		suff -- suffix of the out file.
		Set path, root and out fields."""

		self.path = self.doc.getVar("THOT_OUT_PATH")
		if self.path:
			self.out = open(self.path, "w")
			if self.path.endswith(suff):
				self.root = self.path[:-5]
			else:
				self.root = self.path
		else:
			in_name = self.doc.getVar("THOT_FILE")
			if not in_name or in_name == "<stdin>":
				self.out = sys.stdout
				self.path = "stdin"
			else:
				if in_name.endswith(".thot"):
					self.path = in_name[:-5] + suff
					self.root = in_name[:-5]
				else:
					self.path = in_name + suff
					self.root = self.path
				self.out = open(self.path, "w")


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
		file = os.path.join(self.getImportDir(), file)
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
		self.addFile(tpath)
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
			self.addFile(path)
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

	def genFootNote(self, note):
		pass

	def genQuoteBegin(self, level):
		pass

	def genQuoteEnd(self, level):
		pass

	def genTable(self, table):
		"""Called when a table need to be generated."""
		pass

	def genHorizontalLine(self):
		pass

	def genVerbatim(self, line):
		"""Put the given line as is in the generated code.
		The output line must meet the conventions of the output language."""
		pass

	def genText(self, text):
		"""Put the given text as normal in the output, possibly escaping some
		character to maintain right display."""
		pass

	def genParBegin(self):
		pass

	def genParEnd(self):
		pass

	def genList(self, list):
		"""Generate output for a list."""
		pass

	def genDefList(self, deflist):
		"""Called to generate a definition list."""
		pass

	def genStyleBegin(self, kind):
		pass

	def genStyleEnd(self, kind):
		pass

	def genHeader(self, header):
		return False

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

	def genImage(self, url, width = None, height = None, caption = None, align = tdoc.ALIGN_NONE, node = None):
		pass

	def genGlyph(self, code):
		pass

	def genLineBreak(self):
		pass

	def genEmbeddedBegin(self, node):
		"""Start an embedded area with the given label (a paragraph).
		Usual kinds include "listing", "figure", "table", "algo"."""
		pass

	def genEmbeddedEnd(self, node):
		"""End of generation for an embedded."""
		pass

	def genRef(self, ref):
		"""Called to generate a reference."""
		pass

