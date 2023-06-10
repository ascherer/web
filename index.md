---
title: C/WEB programs in \TeX\ Live
colorlinks: true
filecolor: blue
urlcolor: blue
---
\raggedright
\vspace{-2\baselineskip}

## Introduction

Welcome to “All Things `WEB`” in \TeX\ Live.

Here you find the documented source code of all major `WEB` and `CWEB` programs
in readable format.  With the exceptions of `XeTeX` and `CTWILL`, all
documents are in the `HINT` format and can be viewed with the `hintview`
program; see https://github.com/ruckertm/HINT for the latest version.

The `NAMED` entries represent the unmodified base sources
as written by their respective authors, the attached `chg` links point to
only the changed sections (or modules) as applied for release in the
\TeX\ Live distribution, so you may want to study these pairs in parallel.
Care has been taken to keep the section numbering intact.

Although not all the programs presented here are written or maintained by
Donald Knuth, it is more convenient for everything to be collected in one place
for reading and searching.  And they all stem from the system that Knuth
created.

Note that all `WEB` programs are mogrified from Pascal code to C code before
compilation, so further modifications and amendments will occur for the real
thing, i.e., the production of the executable `WEB` programs.  (The `CWEB`
programs do not require these extra modifications, they get linked directly to
the external runtime environment.)

If you believe to have found anything that remains technically, historically,
typographically, or politically incorrect in any of these files, please feel
free to [report bugs in \TeX\ and friends](https://tug.org/texmfbug/) or
[contact the maintainer of this collection](mailto:andreas_github@freenet.de)
directly.

## Canonical Knuthian WEB programs

* `etc/` \[
  [`VFtoVP`](etc/vftovp.hnt)+[`chg`](etc/vftovp-changes.hnt) \|
  [`VPtoVF`](etc/vptovf.hnt)+[`chg`](etc/vptovf-changes.hnt) \]
* `mf/` \[
  [`Metafont`](mf/mf.hnt)+[`chg`](mf/mf-changes.hnt) \|
  [`TRAPMAN`](mf/trapman.hnt) \]
* `mfware/` \[
  [`GFtype`](mfware/gftype.hnt)+[`chg`](mfware/gftype-changes.hnt) \|
  [`GFtoPK`](mfware/gftopk.hnt)+[`chg`](mfware/gftopk-changes.hnt) \|
  [`GFtoDVI`](mfware/gftodvi.hnt)+[`chg`](mfware/gftodvi-changes.hnt) \|
  [`MFT`](mfware/mft.hnt)+[`chg`](mfware/mft-changes.hnt) \]
* `tex/` \[
  [`GLUE`](tex/glue.hnt) \|
  [`TeX`](tex/tex.hnt)+[`chg`](tex/tex-changes.hnt) \|
  [`TRIPMAN`](tex/tripman.hnt) \]
* `texware/` \[
  [`POOLtype`](texware/pooltype.hnt)+[`chg`](texware/pooltype-changes.hnt) \|
  [`TFtoPL`](texware/tftopl.hnt)+[`chg`](texware/tftopl-changes.hnt) \|
  [`PLtoTF`](texware/pltotf.hnt)+[`chg`](texware/pltotf-changes.hnt) \|
  [`DVItype`](texware/dvitype.hnt)+[`chg`](texware/dvitype-changes.hnt) \]
* `web/` \[
  [`WEBMAN`](web/webman.hnt) \|
  [`WEAVE`](web/weave.hnt)+[`chg`](web/weave-changes.hnt) \|
  [`TANGLE`](web/tangle.hnt)+[`chg`](web/tangle-changes.hnt) \|
  [`TWILL`](web/twill.hnt) \]

## Complementary WEB programs by other authors

* `other/` \[
  [`DVIcopy`](other/dvicopy.hnt)+[`chg`](other/dvicopy-changes.hnt) \|
  [`PatGen`](other/patgen.hnt)+[`chg`](other/patgen-changes.hnt) \|
  [`PKtoGF`](other/pktogf.hnt)+[`chg`](other/pktogf-changes.hnt) \|
  [`PKtype`](other/pktype.hnt)+[`chg`](other/pktype-changes.hnt) \]
* `bibtex/` \[ [`BibTeX`](bibtex/bibtex.hnt)+[`chg`](bibtex/bibtex-changes.hnt) \]
* `pdftex/` \[ [`pdfTeX`](pdftex/pdftex.hnt)+[`chg`](pdftex/pdftex-changes.hnt) \]
* `xetex/` \[ [`XeTeX`](xetex/xetex.pdf)+[`chg`](xetex/xetex-changes.pdf) \]

## CWEB programs by Knuth _et\ al._

* `cweb/` \[
  [`CWEBMAN`](cweb/cwebman.hnt) \|
  [`COMMON`](cweb/common.hnt)+[`chg`](cweb/common-changes.hnt) \|
  [`CTANGLE`](cweb/ctangle.hnt)+[`chg`](cweb/ctangle-changes.hnt) \|
  [`CWEAVE`](cweb/cweave.hnt)+[`chg`](cweb/cweave-changes.hnt) \|\
  [`CTWILL`](cweb/ctwill.pdf) \|
  [`REFSORT`](cweb/refsort.hnt)+[`chg`](cweb/refsort-changes.hnt) \|
  [`TWINX`](cweb/twinx.hnt)+[`chg`](cweb/twinx-changes.hnt) \]
* `ctie/` \[ [`CTIE`](ctie/ctie.hnt)+[`chg`](ctie/ctie-changes.hnt) \]
* `tie/` \[ [`TIE`](tie/tie.hnt)+[`chg`](tie/tie-changes.hnt) \]
* `hitex/` \[ [`HiTeX`](hitex/hitex.hnt) \]
* `mp/` \[ [`MP`](mp/mp.hnt) \| [`MPOST`](mp/mpost.hnt) \]

## Errata for “Computers & Typesetting” by Donald E.\ Knuth

* `errata/`
  * [The Errors of \TeX](errata/errorlog.hnt)
  * [The \TeX book, 1^st^\ printing](errata/errata.one.hnt)
  * [The \TeX book, 2^nd^\ printing](errata/errata.two.hnt)
  * [Computers & Typesetting, 15\ June\ 1987](errata/errata.three.hnt)
  * [Computers & Typesetting, 20\ February\ 1989](errata/errata.four.hnt)
  * [Computers & Typesetting, 30\ September\ 1989](errata/errata.five.hnt)
  * [Computers & Typesetting, 31\ December\ 1990](errata/errata.six.hnt)
  * [Computers & Typesetting, 15\ March\ 1992](errata/errata.seven.hnt)
  * [Computers & Typesetting, pre-Millennium\ ed.](errata/errata.eight.hnt)
  * [The \TeX book, September 1996](errata/errata.nine.hnt)
  * [Computers & Typesetting, 1^st^\ Millennium\ ed.](errata/errata.ten.hnt)
  * [Computers & Typesetting, 2^nd^\ Millennium\ ed.](errata/errata.eleven.hnt)
  * [Computers & Typesetting, early 2014](errata/errata.twelve.hnt)
  * [Computers & Typesetting, 31\ January\ 2021](errata/errata.hnt)

## Happy C/WEB Programming!

2024-07-09 Andreas Scherer
