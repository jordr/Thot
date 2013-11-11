
include ../Makefile.std

DIST_FILES=\
	dot.thot \
	fr.thot \
	gnuplot.thot \
	gravure-thot.gif \
	include.thot \
	simple.thot

test: test-single test-chapter

test-single:
	for f in *.thot; do ../thot.py $$f || exit 1; done

test-chapter:
	for f in *.thot; do ../thot.py -D HTML_ONE_FILE_PER=chapter $$f || exit 1; done
