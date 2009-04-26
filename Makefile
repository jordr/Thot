
SUBDIRS=mods backs css

SOURCES = \
	common.py \
	doc.py \
	highlight.py \
	i18n.py \
	parser.py \
	thot.py
OBJECTS = $(SOURCES:.py=.pyc)

ALL = $(OBJECTS)
INSTALL = custom-install
CLEAN_FILES = $(OBJECTS)

include Makefile.std

custom-install:
	cp -R smileys $(IDIR)
	cp -R pix $(IDIR)
	cp $(OBJECTS) $(IDIR)
	chmod +x $(IDIR)/thot.pyc
	-ln -s $(IDIR)/thot.pyc $(PREFIX)/bin/thot

