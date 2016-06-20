# Thot slidy back-end
# Copyright (C) 2016  <hugues.casse@laposte.net>
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

""" This back-end generates HTML file usable for a presentation
based on the [[https://www.w3.org/Talks/Tools/Slidy2|Slidy]] styles and
scripts. The following variables are used:

* TITLE - document title,
* SUBTITLE - sub-title for the title page,
* AUTHORS - author list,
* ORGANIZATION - organization,
* STYLE - Slidy style to use (default style slidy),
* COPYRIGHT - document copyright.
* COVER_PICTURE - picture used on the cover page.
"""

import backs.abstract_html
import common
import os
import os.path
import shutil
import types

import sys
import traceback

class Templater:

	def __init__(self, env):
		self.env = env
	
	def gen(self, temp, out):
		temp = open(temp, "r")
		for line in temp.readlines():
			while line:
				p = line.find("@(")

				# no variable: dump line
				if p < 0:
					out.write(line)
					break
					
				# write the prefix
				out.write(line[:p])
				line = line[p+2:]
					
				# find closing variable
				q = line.find(")")
				if q < 0:
					continue
				id = line[:q]
				line = line[q+1:]

				# process identifier
				try:
					v = self.env[id]
					if hasattr(v, "__call__"):
						v(out)
					else:
						out.write(v)
				except KeyError:
					pass
		temp.close()
				

class Generator(backs.abstract_html.Generator):
	
	def __init__(self, doc):
		backs.abstract_html.Generator.__init__(self, doc)
				

	def run(self):
		tbase = self.doc.getVar("THOT_BASE")

		try:
		
			# get the input file
			style = self.doc.getVar("STYLE")
			if not style:
				style = "slidy"
			base = os.path.join(tbase, "slidy")
			spath = os.path.join("styles", style + ".css")
			if not os.access(os.path.join(base, spath), os.R_OK):
				common.onError("cannot find style '%s'" % style)
			opath = os.path.join(base, "blank.html")
		
			# add CSS
			self.openMain(".html")
			css = self.importCSS(spath, base)
			css2 = self.importCSS(os.path.join("styles", "slidy.css"), base)
			
			# add scripts
			ipath = self.getImportDir()
			spath = os.path.join(tbase, "slidy", "scripts")
			tpath = os.path.join(ipath, "scripts")
			if not os.path.exists(tpath):
				shutil.copytree(spath, tpath)
			
			# write the output
			env = dict(self.doc.env)
			env["IMPORTS"] = ipath
			env["IMPORTED_STYLE"] = css
			env["SLIDES"] = self.gen_slides
			if env.has_key("COVER_PICTURE"):
				env["COVER_PICTURE"] = '<img src="%s"  alt="cover picture" class="cover"/><br clear="all" />' % env["COVER_PICTURE"]
			templater = Templater(env)
			templater.gen(opath, self.out)

		except IOError as e:
			common.onError("error during generation: %s" % e)
		
	def gen_slides(self, out):
		stack = []
		started = False
		header = "Introduction"
		i = iter(self.doc.content)
				
		while True:
			try:
				node = i.next()
				if node.getHeaderLevel() >= 0:
					stack.append((node, i))
					if started:
						self.out.write("</div>\n")
					header = node
					i = iter(node.content)
					started = False
				else:
					if not started:
						self.out.write("<div class=\"slide\">\n")
						self.genHeaderTitle(header)
						started = True
					node.gen(self)

			except StopIteration:
				if started:
					self.out.write("</div>\n")
				started = False
				if not stack:
					break
				header, i = stack.pop()
		
	
	def genHeaderTitle(self, header):
		"""Generate the title of a header."""
		self.out.write("<h1>")
		self.out.write('<a name="%s"></a>' % id(header))
		header.genTitle(self)
		self.out.write('</h1>\n')


def output(doc):
	gen = Generator(doc)
	gen.run()

