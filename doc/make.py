#!/usr/bin/python3

from os import environ, getcwd
from os.path import join
import subprocess

# set environment
if "PYTHONPATH" not in environ:
	environ["PYTHONPATH"] = ""
environ["PYTHONPATH"] = ":".join(
	[join(getcwd(), "..")] +
	environ["PYTHONPATH"].split(":")
)

# run the command
subprocess.run(
	"../thot.py -t html doc.thot",
	shell = True)
