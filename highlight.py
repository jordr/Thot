# highlight -- highlight call module
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

import subprocess
import sys
import doc
import os.path

LANGS=[
  '4gl',
  'abp',
  'ada',
  'agda',
  'ampl',
  'amtrix',
  'applescript',
  'arm',
  'as',
  'asm',
  'asp',
  'aspect',
  'au3',
  'avenue',
  'awk',
  'bat',
  'bb',
  'bib',
  'bms',
  'c',
  'cb',
  'cfc',
  'clipper',
  'clp',
  'cob',
  'cs',
  'css',
  'd',
  'dot',
  'dylan',
  'e',
  'erl',
  'euphoria',
  'exp',
  'f77',
  'f90',
  'flx',
  'frink',
  'haskell',
  'hcl',
  'httpd',
  'icn',
  'idl',
  'ini',
  'inp',
  'io',
  'j',
  'java',
  'js',
  'jsp',
  'lbn',
  'ldif',
  'lisp',
  'lotos',
  'ls',
  'lua',
  'm',
  'make',
  'mel',
  'mib',
  'ml',
  'mo',
  'mod3',
  'mpl',
  'ms',
  'mssql',
  'n',
  'nas',
  'nice',
  'nsi',
  'nut',
  'oberon',
  'objc',
  'octave',
  'os',
  'pas',
  'php',
  'pike',
  'pl',
  'pl1',
  'pov',
  'pro',
  'progress',
  'ps',
  'psl',
  'py',
  'pyx',
  'q',
  'qu',
  'r',
  'rb',
  'rexx',
  'rnc',
  's',
  'sas',
  'sc',
  'scala',
  'scilab',
  'sh',
  'sma',
  'sml',
  'snobol',
  'spec',
  'spn',
  'sql',
  'sybase',
  'tcl',
  'tcsh',
  'test_re',
  'tex',
  'ttcn3',
  'txt',
  'vb',
  'verilog',
  'vhd',
  'xml',
  'xpp',
  'y'
]

BACKS = {
	'html': '',
	'ansi': '--ansi',
	'latex': '--latex',
	'rtf': '--rtf',
	'tex': '--tex',
	'xhtml': '--xhtml',
	'xml': '--xml'
}

CSS_BACKS = [ 'html', 'xhtml' ]

unsupported = []
unsupported_backs = []

def genCode(gen, lang, text):
	"""Generate colorized code.
	gen -- back-end generator
	lang -- code language
	lines -- lines of the code"""
	if lang in LANGS and gen.getType() in BACKS:
		try:
			process = subprocess.Popen(
				['highlight -f --syntax=' + lang],
				stdin = subprocess.PIPE,
				stdout = subprocess.PIPE,
				close_fds = True,
				shell = True
				)
			res, _ = process.communicate(text)
			gen.genVerbatim(res)
		except OSError, e:
			sys.stderr.write("ERROR: can not call 'highlight'\n")
			sys.exit(1)
	else:
		if lang not in LANGS and lang not in unsupported:
			sys.stderr.write('WARNING: ' + lang + ' unsupported highglight language\n')
			unsupported.append(lang)
		if gen.getType() not in BACKS and gen.getType() not in unsupported_backs:
			sys.stderr.write('WARNING: ' + gen.getType() + ' unsupported highlight back-end\n')
			unsupported_baks.append(lang)			
		gen.genVerbatim(text)


class Feature(doc.Feature):
	
	def prepare(self, gen):
		if gen.getType() in CSS_BACKS:
			
			# build the CSS file
			try:
				css = gen.getFriendFile('/highlight/highlight.css')
				process = subprocess.Popen(
					['highlight -f --syntax=c --style-outfile=' + css],
					stdin = subprocess.PIPE,
					stdout = subprocess.PIPE,
					close_fds = True,
					shell = True
				)
				_ = process.communicate("")
			except OSError, e:
				sys.stderr.write("ERROR: can not call 'highlight'\n")
				sys.exit(1)
			
			# add the file to the style
			styles = gen.doc.getVar('HTML_STYLES')
			if styles:
				styles += ':'
			else:
				styles = ''
			styles += os.path.basename(css)
			gen.doc.setVar('HTML_STYLES', styles)

FEATURE = Feature()

class CodeBlock(doc.Block):
	lang = None

	def __init__(self, man, lang):
		doc.Block.__init__(self)
		self.lang = lang
		man.doc.addFeature(FEATURE)

	def dumpHead(self, tab):
		print tab + "code(" + self.lang + ","

	def gen(self, gen):
		gen.genCode(self.lang, self.content)