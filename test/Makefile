
TESTS = \
	simple-html \
	simple-latex \
	simple-docbook \
	textile-html \
	markdown-html
	

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

markdown-html:
	../thot.py markdown.thot


clean:
	rm -rf *.html *-imports *.pdf *.docbook *.fot *.pdf *.out *.aux *.tex *.log *.toc
