export PYTHONPATH:=$(PYTHONPATH):..
THOT=../bin/thot

TESTS = \
	simple-html \
	simple-latex \
	simple-docbook \
	textile-html \
	markdown-html \
	unicode-html \
	lexicon-html \
	doxygen-html
	

all: $(TESTS)

simple-html:
	$(THOT) simple.thot

simple-latex:
	$(THOT) simple.thot -t latex
	pdflatex simple.tex

simple-docbook:
	$(THOT) simple.thot -t docbook

textile-html:
	$(THOT) textile.thot

markdown-html:
	$(THOT) markdown.thot

unicode-html:
	$(THOT) unicode.thot

lexicon-html:
	$(THOT) lexicon.thot

doxygen-html:
	$(THOT) doxygen.thot

clean:
	rm -rf *.html *-imports *.pdf *.docbook *.fot *.pdf *.out *.aux *.tex *.log *.toc
