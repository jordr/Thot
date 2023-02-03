#!/usr/bin/python3
#from distutils.core import setup
import setuptools
import glob

def files(m, p):
	d = os.path.dirname(p)


setuptools.setup(
	name="thot",
	version="0.9",
	description = """Document generator from wiki-like text files.""",
	author = "Hugues Casse",
	author_email = "hug.casse@gmail.com",
	license = "GPLv3",
	packages = ['thot', 'thot/mods', 'thot/backs'],
	scripts = ['bin/thot'],
	package_data = {
		"share/thot/css/minima/": glob.glob("css/minima/*.css"),
		"share/thot/css/minima/": glob.glob("css/minima/*.css"),
		"share/thot/box": glob.glob("share/thot/box/*")
	}
)
