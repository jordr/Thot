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
import os.path
import imp
import re
import traceback
import common

def onError(text):
	"""Display the given error and stop the application."""
	sys.stderr.write("ERROR: %s\n" % text)
	sys.exit(1)


def onWarning(message):
	"""Display a warning message."""
	sys.stderr.write("WARNING: %s\n" % message)


def onInfo(message):
	"""Display an information message."""
	sys.stderr.write("INFO: %s\n" % message)


def loadModule(name, path):
	"""Load a module by its name and its path
	and return its object."""
	path = os.path.join(path, name + ".py")
	try:
		if os.path.exists(path):
			return imp.load_source(name, path)
		else:
			path = path + "c"
			if os.path.exists(path):
				return imp.load_compiled(name, path)
			else:
				return None
	except Exception, e:
		#exc_type, exc_obj, exc_tb = sys.exc_info()
		#traceback.print_tb(exc_tb)
		onError("cannot open module '%s': %s" % (path, str(e)))

AUTHOR_RE = re.compile('(.*)\<([^>]*)\>\s*')
def scanAuthors(text):
	"""Scan the author text to get structured representation of authors.
	text -- text containing author declaration separated by ','
	and with format "NAME <EMAIL>"
	Return a list of authors where each author dictionary
	containing 'name' and 'email' keys."""

	authors = []
	words = text.split(',')
	for word in words:
		author = {}
		match = AUTHOR_RE.match(word)
		if not match:
			author['name'] = word
		else:
			author['name'] = match.group(1)
			author['email'] = match.group(2)
		authors.append(author)
	return authors


def is_exe(fpath):
	return os.path.exists(fpath) and os.access(fpath, os.X_OK)


def which(program):
	"""Function to test if an executable is available.
	program: program to look for
	return: the found path of None."""
	
	fpath, fname = os.path.split(program)
	if fpath:
		if is_exe(program):
			return program
	else:
		for path in os.environ["PATH"].split(os.pathsep):
			exe_file = os.path.join(path, program)
			if is_exe(exe_file):
				return exe_file
	return None

