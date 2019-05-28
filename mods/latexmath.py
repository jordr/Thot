# html -- Thot dot module
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

import common
import doc
import subprocess
import sys

mimetex = common.CommandRequirement("mimetex", 'mimetex not found but required by latexmath module: ignoring latexmath tags')

count = 0
formulae = { }
DEFAULT = None
BUILDERS = { }
BUILDER = None

class Builder(doc.Feature):
	"""Builder for math expression and feature"""
	
	def make(self, text):
		return None


MATHJAX_SELECTOR = """
MathJax.Hub.Register.StartupHook("End Jax",function () {
  var BROWSER = MathJax.Hub.Browser;

  var canUseMML = (BROWSER.isFirefox && BROWSER.versionAtLeast("1.5")) ||
                  (BROWSER.isMSIE    && BROWSER.hasMathPlayer) ||
                  (BROWSER.isSafari  && BROWSER.versionAtLeast("5.0")) ||
                  (BROWSER.isOpera   && BROWSER.versionAtLeast("9.52") &&
                                       !BROWSER.versionAtLeast("14.0"));

  var CONFIG = MathJax.Hub.CombineConfig("MMLorHTML",{
    prefer: {
      MSIE:"MML", Firefox:"HTML", Opera:"HTML", Chrome:"HTML", Safari:"HTML",
      other:"HTML"
    }
  });

  var jax = CONFIG.prefer[BROWSER] || CONFIG.prefer.other;
  if (jax === "HTML") jax = "HTML-CSS"; else if (jax === "MML")  jax = "NativeMML";
  if (jax === "NativeMML" && !canUseMML) jax = CONFIG.prefer.other;
  return MathJax.Hub.setRenderer(jax);
});
"""

class MathJAX(doc.Word):
	
	def __init__(self, text):
		doc.Word.__init__(self, text)

	def dump(self, tab = ""):
		print "%slatexmath(%s)" % (tab, self.text)

	def gen(self, gen):
		if gen.getType() == "latex":
			gen.genVerbatim("$%s$" % self.text)
		elif gen.getType() == "html":
			gen.genVerbatim("\\(%s\\)" % self.text)
		else:
			gen.genText(self.text)

class MathJAXBuilder(Builder):
	
	def make(self, t):
		return MathJAX(t)
	
	def prepare(self, gen):
		if gen.getType() == "html":
			gen.doc.setVar("LATEXMATH_SCRIPT", "yes")
			s = gen.newScript()
			s.async = True
			s.src = "https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.5/MathJax.js?config=TeX-MML-AM_CHTML"
			s = gen.newScript()
			s.content = MATHJAX_SELECTOR
			s.type = "text/x-mathjax-config"
		
BUILDERS["mathjax"] = MathJAXBuilder()


class MimetexMath(doc.Word):
	
	def __init__(self, text):
		doc.Word.__init__(self, text)
	
	def dump(self, tab = ""):
		print "%slatexmath(%s)" % (tab, self.text)

	def prepare(self, man):
		pass

	def gen(self, gen):
		global mimetex
		global count
		global formulae
		
		if gen.getType() == "latex":
			gen.genVerbatim("$%s$" % self.text)
		else:
			cmd = mimetex.get()
			if not cmd:
				return
			rpath = ''
			if formulae.has_key(self.text):
				rpath = formulae[self.text]
			else:
				rpath = gen.new_friend("latexmath/latexmath-%s.gif" % count);
				count += 1
				try:
					proc = subprocess.Popen(
						["%s -d '%s' -e %s" % (cmd, self.text, rpath)],
						stdout = subprocess.PIPE,
						stderr = subprocess.PIPE,
						shell = True
					)
					out, err = proc.communicate()
					if proc.returncode <> 0:
						sys.stderr.write(out)
						sys.stderr.write(err)
						self.onWarning("bad latexmath formula.")
					else:
						formulae[self.text] = rpath
				except OSError, e:
					MIMETEX_AVAILABLE = False
					self.onWarning("mimetex is not available: no latexmath !")
			if rpath:
				gen.genImage(rpath, None, self)

class MimetexBuilder(Builder):
	
	def make(self, t):
		return MimetexMath(t)

BUILDERS["mimetex"] = MimetexBuilder()
DEFAULT = "mimetex"

def selectBuilder(man):
	global DEFAULT
	global BUILDER
	global BUILDERS
	try:
		n = man.doc.getVar("LATEXMATH", DEFAULT)
		BUILDER = BUILDERS[n]
	except KeyError:
		man.onWarning("unknown mathlatex output: %s. Reverting to use mimetex." % v)
		
def handleMath(man, match):
	text = match.group("latexmath")
	if text == "":
		man.send(doc.ObjectEvent(doc.L_WORD, doc.ID_NEW, doc.Word("$")))
	else:
		man.send(doc.ObjectEvent(doc.L_WORD, doc.ID_NEW, BUILDER.make(text)))

MATH_WORD = (handleMath, "\$(?P<latexmath>[^$]*)\$")

def init(man):
	global BUILDER
	selectBuilder(man)
	man.doc.addFeature(BUILDER)
	man.addWord(MATH_WORD)
