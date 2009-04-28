DOCS=doc.thot
HTML=$(DOCS:.thot=.html)
IMPORTS=$(DOCS:.thot=-imports)
ALL = $(HTML)
INSTALL = custom-install
CLEAN_FILES += $(HTML) $(IMPORTS)

include ../Makefile.std

DIR = $(IDIR)/doc
custom-install:
	mkdir -p $(DIR)
	cp -R $(HTML) $(IMPORTS) $(DIR)

%.html: %.thot
	../thot.py -t html $<
