#!/usr/bin/python
# setup -- setup script
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

from distutils.core import setup, Extension
from glob import glob

setup(
	name = 'Thot',
	version = '0.1',
	description = 'Thot is a a-la wiki documentation generation system',
	author = 'H. Casse',
	author_email = 'hugues.casse@laposte.net',
	license = 'GPL',
	packages = ['thot'],
	package_dir = {'thot': '.' },
	package_data = { 'thot': [
			'backs/*.py',
			'mods/*.py',
			'langs/*.py',
			'pix/*',
			'smileys/*'
		]
	}
	#py_modules = [
		#'doc',
		#'highlight',
		#'i18n',
		#'parser',
		#'thot'
	#],
	#data_files = [
		#('share/thot/backs', glob('backs/*.py')),
		#('share/thot/mods', glob('mods/*.py')),
		#('share/thot/langs', glob('langs/*.py')),
		#('share/thot/pix', glob('pix/*')),
		#('share/thot/smileys', glob('smileys/*'))
	#]
)
