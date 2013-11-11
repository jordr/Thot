
# fr_fr -- i10n for france french
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
import doc

DICT = {
	i18n.ID_CONTENT : "Sommaire"
}

CAPTIONS = {
	doc.ID_NUM_TABLE:	"Tableau %s: ",
	doc.ID_NUM_FIGURE:	"Figure %s: ",
	doc.ID_NUM_FIGURE:	"Listing %s: "
}

class FrTranslator(i18n.DictTranslator):
	
	def __init__(self):
		i18n.DictTranslator.__init__(self, DICT)

	def caption(sself, numbering, number):
		if CAPTIONS.has_key(numbering):
			return CAPTIONS[numbering] % number
		else:
			return "%s %s: " % (numbering, number)


def getTranslator(doc, lang):
	return FrTranslator()
