#!/usr/bin/python3
# make -- Minima theme maker
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

import configparser
import glob
import re
import sys

# check parameters
if len(sys.argv) > 1:
	colors = [sys.argv[1]]
else:
	colors = [ p[10:-4] for p in glob.glob("ini/style_*.ini")]


# generate the files
for color in colors:

	# read the keys
	config = configparser.ConfigParser()
	config.readfp(open("ini/style_%s.ini" % color))
	reps = { }
	for (key, val) in config.items('replacements'):
		reps[key] = val[1:-1]

	# open input
	input = open('style.css')

	# open the output file
	out = open('%s.css' % color, 'w')

	# process lines
	rep = re.compile('__([a-zA-Z0-9]*_)+_')
	for line in input:
		while line != '':
			m = rep.search(line)
			if not m:
				out.write(line)
				line = ''
			else:
				out.write(line[:m.start()])
				out.write(reps[m.group()])
				line = line[m.end():]

	# close files
	input.close()
	out.close()
