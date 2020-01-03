
TESTS = \
	simple-html \
	simple-latex
	

all: TESTS

simple-html:
	../thot.py simple.thot

simple-latex:
	../thot.py simple.thot -t latex
	pdflatex simple.tex

simple-docbook:
	../thot.py simple.thot -t docbook

clean:
	rm -rf *.html *-imports
