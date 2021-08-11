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

# Set WCHANGES to weav-foo.ch if you need changes to weave.web
WCHANGES=weave.ch

# Set MCHANGES to webman-foo.ch if you need changes to webman.tex
MCHANGES=webman.ch

# What PASCAL compiler are you using?
PC = fpc

# Klaus Guntermann's Tie 2.4 processor can easily be installed on UNIX.
TIE = tie

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
	web-fpc.ch tang-patch.ch weav-patch.ch weav-squash.ch \
	Makefile tangle.pas \
	webman.tex webmac.tex

.SUFFIXES: .dvi .tex .w .pdf

.web.tex:
	$(WEAVE) $*.web $*.ch $*.tex

.tex.dvi:
	tex $<

.web.dvi:
	make $*.tex
	make $*.dvi

.web.pas:
	$(TANGLE) $*.web $*.ch $*.pas $(EMPTY)

.web.pdf:
	make $*.tex
	case "$(PDFTEX)" in \
	 dvipdfm ) tex "\let\pdf+ \input $*"; dvipdfm $* ;; \
	 pdftex ) pdftex $* ;; \
	 xetex ) xetex $* ;; \
	esac

boot:
	$(PC) tangle.pas

all: tangle weave

cautiously: tangle
	$(TANGLE) tangle.web $(TCHANGES) tangle.p $(EMPTY)
	diff tangle.p tangle.pas
	$(RM) tangle.p

tangle: tangle.pas
	$(PC) tangle.pas

tangle.pas: tangle.web $(TCHANGES)
	$(TANGLE) tangle.web $(TCHANGES) tangle.pas $(EMPTY)

$(TCHANGES): tangle.web web-fpc.ch tang-patch.ch
	$(TIE) -c $@ $^

weave: weave.pas
	$(PC) weave.pas

weave.pas: weave.web $(WCHANGES)
	$(TANGLE) weave.web $(WCHANGES) weave.pas $(EMPTY)

$(WCHANGES): weave.web web-fpc.ch weav-patch.ch weav-squash.ch
	$(TIE) -c $@ $^

doc: $(SOURCES:.web=.dvi)

usermanual: webman.tex webmac.tex $(MCHANGES)
	$(TIE) -m webman-2021.tex webman.tex $(MCHANGES)
	$(PDF)tex -jobname=webman webman-2021
	$(RM) -f webman-2021.tex

fullmanual: usermanual $(SOURCES) $(TCHANGES) $(WCHANGES)
	make weave
	$(WEAVE) tangle.web $(TCHANGES) tangle.tex
	$(PDF)tex tangle.tex
	$(WEAVE) weave.web $(WCHANGES) weave.tex
	$(PDF)tex weave.tex

# be sure to leave tangle.pas for bootstrapping
clean:
	$(RM) -f -r *~ .*~ *.o weave.tex weave.pas tangle.tex CONTENTS.tex \
	  *.log *.dvi *.toc *.idx *.scn *.pdf core weave tangle \
	  $(TCHANGES) $(WCHANGES)
