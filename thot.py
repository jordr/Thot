#!/usr/bin/python
# thot -- Thot command
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

import doc
import os
import tparser
import locale
import sys
import optparse
import datetime
import os.path
import common

# Prepare environment
env = { } # os.environ.copy()
env["THOT_VERSION"] = "0.5"
env["ENCODING"] = locale.getpreferredencoding()
base = os.path.realpath(os.path.abspath(__file__))
env["THOT_BASE"] = os.path.dirname(base) + '/'
env["THOT_USE_PATH"] = env["THOT_BASE"] + "mods/"
env["THOT_DATE"] = str(datetime.datetime.today())

# Prepare arguments
oparser = optparse.OptionParser()
oparser.add_option("-t", "--type", action="store", dest="out_type",
	default="html", help="output type (xml, html, latex, ...)")
oparser.add_option("-o", "--out", action="store", dest="out_path",
	help="output path")
oparser.add_option("-D", "--define", action="append", dest="defines",
	help="add the given definition to the document environment.")
oparser.add_option("--dump", dest = "dump", action="store_true", default=False,
	help="only for debugging purpose, dump the database of Thot")

# Parse arguments
(options, args) = oparser.parse_args()
env["THOT_OUT_TYPE"] = options.out_type
if not options.out_path:
	env["THOT_OUT_PATH"] = ""
else:
	env["THOT_OUT_PATH"] = options.out_path
if args == []:
	input = sys.__stdin__
	env["THOT_FILE"] = "<stdin>"
else:
	input = file(args[0])
	env["THOT_FILE"] = args[0]
if options.defines:
	for d in options.defines:
		p = d.find('=')
		if p == -1:
			common.onError('-D' + d + ' must follow syntax -Didentifier=value')
		else:
			env[d[:p]] = d[p+1:]


# Parse the file
document = doc.Document(env)
man = tparser.Manager(document)
man.parse(input, env['THOT_FILE'])
if options.dump:
	document.dump("")

# Output the result
out_name = env["THOT_OUT_TYPE"]
out_path = os.path.join(document.env["THOT_BASE"], "backs")
out_driver = common.loadModule(out_name,  out_path)
if out_driver:
	out_driver.output(document)
else:
	common.onError('cannot find %s back-end' % out_name)

