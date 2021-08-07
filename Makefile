# This file is distributed WITHOUT ANY WARRANTY, express or implied.

# Copyright (C) 2021 Andreas Scherer

# Permission is granted to make and distribute verbatim copies of this
# document provided that the copyright notice and this permission notice
# are preserved on all copies.

# Permission is granted to copy and distribute modified versions of this
# document under the conditions for verbatim copying, provided that the
# entire resulting derived work is given a different name and distributed
# under the terms of a permission notice identical to this one.

# Set TCHANGES to tang-foo.ch if you need changes to tangle.web
TCHANGES=tangle.ch

# Set WCHANGES to cweav-foo.ch if you need changes to weave.web
WCHANGES=weave.ch

# What PASCAL compiler are you using?
PC = fpc

# RM and CP are used below in case rm and cp are aliased
RM= /bin/rm
CP= /bin/cp

# uncomment the second line if you use pdftex to bypass .dvi files
# uncomment the third line if you use xetex to bypass .dvi files
PDFTEX = dvipdfm
#PDFTEX = pdftex
#PDFTEX = xetex

# Empty input and output file(s)
EMPTY = /dev/null

##########  You shouldn't have to change anything after this point #######

WEAVE = ./weave
TANGLE = ./tangle
SOURCES = weave.web tangle.web
ALL =  tangle.web weave.web \
	Makefile tangle.pas \
	webman.tex webmac.tex

.SUFFIXES: .dvi .tex .w .pdf

.web.tex:
	$(WEAVE) $*

.tex.dvi:	
	tex $<

.web.dvi:
	make $*.tex
	make $*.dvi

.web.pas:
	$(CTANGLE) $*

.web.pdf:
	make $*.tex
	case "$(PDFTEX)" in \
	 dvipdfm ) tex "\let\pdf+ \input $*"; dvipdfm $* ;; \
	 pdftex ) pdftex $* ;; \
	 xetex ) xetex $* ;; \
	esac

all: tangle weave

cautiously: tangle
	./tangle tangle.web $(TCHANGES) tangle.p $(EMPTY)
	diff tangle.p tangle.pas
	$(RM) tangle.p

tangle: tangle.pas
	$(PC) tangle.pas

tangle.pas: tangle.web $(TCHANGES)
	$(TANGLE) tangle.web $(TCHANGES) tangle.pas $(EMPTY)

weave: weave.pas
	$(PC) weave.pas

weave.pas: weave.web $(WCHANGES)
	$(TANGLE) weave.web $(WCHANGES) weave.pas $(EMPTY)

doc: $(SOURCES:.web=.dvi)

usermanual: webman.tex webmac.tex
	$(PDF)tex webman

fullmanual: usermanual $(SOURCES)
	make weave
	./weave tangle.web $(TCHANGES) tangle.tex
	$(PDF)tex tangle.tex
	./weave weave.web $(WCHANGES) weave.tex
	$(PDF)tex weave.tex

# be sure to leave tangle.pas for bootstrapping
clean:
	$(RM) -f -r *~ .*~ *.o weave.tex weave.pas tangle.tex CONTENTS.tex \
	  *.log *.dvi *.toc *.idx *.scn *.pdf core weave tangle
