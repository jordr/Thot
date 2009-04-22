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
import cgi

# supported variables
#	TITLE: title of the document
#	AUTHORS: authors of the document
#	THOT_OUT_PATH:	HTML out file
#	THOT_FILE: used to derivate the THOT_OUT_PATH if not set
#	THOT_ENCODING: charset for the document
#	HTML_STYLE: CSS style to use

def output(doc):
	out = None

	# open the output file
	out_name = doc.getVar("THOT_OUT_PATH")
	if out_name:
		out = open(out_name, "w")
	else:
		in_name = doc.getVar("THOT_FILE")
		if not in_name or in_name == "<stdin>":
			out = sys.stdout
		else:
			if in_name.endswith(".thot"):
				out_name = in_name[:-5] + ".html"
			else:
				out_name = in_name + ".html"
			out = open(out_name, "w")
			

	# output header
	out.write('<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">\n')
	out.write('<html>\n')
	out.write('<head>\n')
	out.write("	<title>" + cgi.escape(doc.getVar('TITLE')) + "</title>\n")
	out.write('	<meta name="AUTHOR" content="' + cgi.escape(doc.getVar('AUTHORS'), True) + '">\n')
	out.write('	<meta name="GENERATOR" content="Thot - HTML">\n');
	out.write('	<meta http-equiv="Content-Type" content="text/html; charset=' + cgi.escape(doc.getVar('THOT_ENCODING'), True) + '">\n')
	style = doc.getVar("HTML_STYLE")
	if style:
  		out.write('	<link rel="stylesheet" type="text/css" href="' + style + '">')
  	out.write("</head>\n<body>\n")

	# output main title
	out.write('	<h1 class="title">' + cgi.escape(doc.getVar('TITLE')) + '</h1>\n')
	out.write('	<h1 class="authors">' + cgi.escape(doc.getVar('AUTHORS')) + '</h1>\n')

	# output body
	
	# output tail
	out.write("</body>\n</html>\n")
