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
in readable format.  The `NAMED` entries represent the unmodified base sources
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
  [`VFtoVP`](etc/vftovp.pdf)+[`chg`](etc/vftovp-changes.pdf) \|
  [`VPtoVF`](etc/vptovf.pdf)+[`chg`](etc/vptovf-changes.pdf) \]
* `mf/` \[
  [`Metafont`](mf/mf.pdf)+[`chg`](mf/mf-changes.pdf) \|
  [`TRAPMAN`](mf/trapman.pdf) \]
* `mfware/` \[
  [`GFtype`](mfware/gftype.pdf)+[`chg`](mfware/gftype-changes.pdf) \|
  [`GFtoPK`](mfware/gftopk.pdf)+[`chg`](mfware/gftopk-changes.pdf) \|
  [`GFtoDVI`](mfware/gftodvi.pdf)+[`chg`](mfware/gftodvi-changes.pdf) \|
  [`MFT`](mfware/mft.pdf)+[`chg`](mfware/mft-changes.pdf) \]
* `tex/` \[
  [`GLUE`](tex/glue.pdf) \|
  [`TeX`](tex/tex.pdf)+[`chg`](tex/tex-changes.pdf) \|
  [`TRIPMAN`](tex/tripman.pdf) \]
* `texware/` \[
  [`POOLtype`](texware/pooltype.pdf)+[`chg`](texware/pooltype-changes.pdf) \|
  [`TFtoPL`](texware/tftopl.pdf)+[`chg`](texware/tftopl-changes.pdf) \|
  [`PLtoTF`](texware/pltotf.pdf)+[`chg`](texware/pltotf-changes.pdf) \|
  [`DVItype`](texware/dvitype.pdf)+[`chg`](texware/dvitype-changes.pdf) \]
* `web/` \[
  [`WEBMAN`](web/webman.pdf) \|
  [`WEAVE`](web/weave.pdf)+[`chg`](web/weave-changes.pdf) \|
  [`TANGLE`](web/tangle.pdf)+[`chg`](web/tangle-changes.pdf) \|
  [`TWILL`](web/twill.pdf)[^1] \]

[^1]: `TWILL` is presented here as a changed variant of `WEAVE`.

## Complementary WEB programs by other authors

* `other/` \[
  [`DVIcopy`](other/dvicopy.pdf)+[`chg`](other/dvicopy-changes.pdf) \|
  [`PatGen`](other/patgen.pdf)+[`chg`](other/patgen-changes.pdf) \|
  [`PKtoGF`](other/pktogf.pdf)+[`chg`](other/pktogf-changes.pdf) \|
  [`PKtype`](other/pktype.pdf)+[`chg`](other/pktype-changes.pdf) \]
* `bibtex/` \[ [`BibTeX`](bibtex/bibtex.pdf)+[`chg`](bibtex/bibtex-changes.pdf) \]
* `pdftex/` \[ [`pdfTeX`](pdftex/pdftex.pdf)+[`chg`](pdftex/pdftex-changes.pdf) \]
* `xetex/` \[ [`XeTeX`](xetex/xetex.pdf)+[`chg`](xetex/xetex-changes.pdf) \]

## CWEB programs by Knuth _et\ al._

* `cweb/` \[
  [`CWEBMAN`](cweb/cwebman.pdf) \|
  [`COMMON`](cweb/common.pdf)+[`chg`](cweb/common-changes.pdf) \|
  [`CTANGLE`](cweb/ctangle.pdf)+[`chg`](cweb/ctangle-changes.pdf) \|
  [`CWEAVE`](cweb/cweave.pdf)+[`chg`](cweb/cweave-changes.pdf) \|\
  [`CTWILL`](cweb/ctwill.pdf)[^2] \|
  [`REFSORT`](cweb/refsort.pdf)+[`chg`](cweb/refsort-changes.pdf) \|
  [`TWINX`](cweb/twinx.pdf)+[`chg`](cweb/twinx-changes.pdf) \]
* `ctie/` \[ [`CTIE`](ctie/ctie.pdf)+[`chg`](ctie/ctie-changes.pdf) \]
* `tie/` \[ [`TIE`](tie/tie.pdf)+[`chg`](tie/tie-changes.pdf) \]
* `hitex/` \[ [`HiTeX`](hitex/hitex.pdf)[^3] \]
* `mp/` \[ [`MP`](mp/mp.pdf) \| [`MPOST`](mp/mpost.pdf) \][^4]

[^2]: `CTWILL` is presented here in its own format with “mini-indexes” for
  every two consecutive pages.

[^3]: `HiTeX` has received quite a few changes “behind the scenes” in
  order to present it in this collection; see project
  [`web`](https://github.com/ascherer/web) for details.

[^4]: `MP` and `MPOST` have received quite a few changes “behind the scenes” in
  order to present them in this collection; see project
  [`mplibdir`](https://github.com/ascherer/mplibdir) for details.

## Errata for “Computers & Typesetting” by Donald E.\ Knuth

* `errata/`
  * [The Errors of \TeX](errata/errorlog.pdf)
  * [The \TeX book, 1^st^\ printing](errata/errata.one.pdf)
  * [The \TeX book, 2^nd^\ printing](errata/errata.two.pdf)
  * [Computers & Typesetting, 15\ June\ 1987](errata/errata.three.pdf)
  * [Computers & Typesetting, 20\ February\ 1989](errata/errata.four.pdf)
  * [Computers & Typesetting, 30\ September\ 1989](errata/errata.five.pdf)
  * [Computers & Typesetting, 31\ December\ 1990](errata/errata.six.pdf)
  * [Computers & Typesetting, 15\ March\ 1992](errata/errata.seven.pdf)
  * [Computers & Typesetting, pre-Millennium\ ed.](errata/errata.eight.pdf)
  * [The \TeX book, September 1996](errata/errata.nine.pdf)
  * [Computers & Typesetting, 1^st^\ Millennium\ ed.](errata/errata.ten.pdf)
  * [Computers & Typesetting, 2^nd^\ Millennium\ ed.](errata/errata.eleven.pdf)
  * [Computers & Typesetting, early 2014](errata/errata.twelve.pdf)
  * [Computers & Typesetting, 31\ January\ 2021](errata/errata.pdf)

## Happy C/WEB Programming!

\today—Andreas Scherer
