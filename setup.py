#!/usr/bin/python3
#from distutils.core import setup
import setuptools
import glob

def files(m, p):
	d = os.path.dirname(p)

packs = ["thot." + p for p in setuptools.find_namespace_packages("thot")]

setuptools.setup(
	name="thot",
	version="1.0",
	description = "Document generator from wiki-like text files.",
	author = "Hugues Casse",
	author_email = "hug.casse@gmail.com",
	license = "GPLv3",

	#packages = ['thot', 'thot/mods', 'thot/backs'],
	packages = packs,
	entry_points = {
		'console_scripts': ['thot=thot.command:main']
	},

	#package_dir = { "": "."},
	include_package_data = True,
	#package_data={
	#	'thot.data.box': [ "*.css" "*.png" ]
	#}
	#package_data = {
	# 	"share/thot/css/minima/": glob.glob("css/minima/*.css"),
	#	"share/thot/css/minima/": glob.glob("css/minima/*.css"),
	#	"share/thot/box": glob.glob("share/thot/box/*")
	#}
)
