
TESTS = \
	simple-html \
	simple-latex \
	simple-docbook \
	textile-html
	

all: TESTS

simple-html:
	../thot.py simple.thot

simple-latex:
	../thot.py simple.thot -t latex
	pdflatex simple.tex

simple-docbook:
	../thot.py simple.thot -t docbook

textile-html:
	../thot.py textile.thot

clean:
	rm -rf *.html *-imports
