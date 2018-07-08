SOURCES = $(wildcard *.py)
OBJECTS =  $(SOURCES:.py=.pyc)

ALL = $(OBJECTS)
INSTALL = custom-install
CLEAN = $(OBJECTS)

include ../Makefile.std

MODS_DIR = $(IDIR)/mods

custom-install:
	mkdir -p $(MODS_DIR)
	@for obj in $(OBJECTS); do \
		echo "install $$obj"; \
		cp $$obj $(MODS_DIR); \
	done


