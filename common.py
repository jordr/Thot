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
import imp

def onError(text):
	"""Display the given error and stop the application."""
	sys.stderr.write("ERROR: %s\n" % text)
	sys.exit(1)


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
		onError("cannot open module '%s': %s" % (path, str(e)))

