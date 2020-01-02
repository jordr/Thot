
TESTS = \
	simple-html \
	simple-latex
	

all: TESTS

simple-html:
	../thot.py simple.thot

simple-latex:
	../thot.py simple.thot -t latex

clean:
	rm -rf *.html *-imports
