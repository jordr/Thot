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
import os.path
import locale
import string
import common

ID_CONTENT = "Content"

CAPTIONS = {
	"table": "Table %s: ",
	"figure": "Figure %s: ",
	"listing": "Listing %s: "
}

class DefaultTranslator:
	"""A translator that do nothing."""
	
	def get(self, text):
		return text

	def caption(sself, numbering, number):
		"""Generate a caption number."""
		if CAPTIONS.has_key(numbering):
			return CAPTIONS[numbering] % number
		else:
			return "%s %s: " % (numbering, number)


class DictTranslator:
	"""A translator based on a dictionary."""
	dict = None
	
	def __init__(self, dict):
		self.dict = dict
	
	def get(self, text):
		if self.dict.has_key(text):
			return self.dict[text]
		else:
			sys.stderr.write("WARNING: no translation for '" + text + "'")


def getTranslator(doc):
	"""Find a translator for the given document."""
	
	# find the language
	lang = doc.getVar('LANG')
	if not lang:
		lang, _ = locale.getdefaultlocale()
		sys.stderr.write("INFO: using default language: " + lang + "\n")
	nlang = string.lower(lang).replace('-', '_')
	
	# look for the local version
	path = os.path.join(doc.getVar('THOT_BASE'), "langs")
	mod = common.loadModule(nlang, path)
	if mod:
		return mod.getTranslator(doc, nlang)
	
	# look for the global version
	comps = nlang.split('_')
	if comps[0] == 'en':
		return DefaultTranslator()
	else:
		mod = common.loadModule(comps[0], path)
		if mod:
			return mod.getTranslator(doc, comps[0])
		else:
			sys.stderr.write('WARNING: cannot find language ' + nlang + "\n")
			return DefaultTranslator()
