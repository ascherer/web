---
title: WEB programs in “TeX Live 2021”
colorlinks: true
---

## Introduction

Welcome to “All Things `WEB`” in “TeX Live.”

Here you find the documented source code of all major `WEB` and `CWEB` programs
in readable format.  The “named” entries represent the unmodified base sources,
the attached `[chg]` links point to “only the changed sections (or modules),”
so you may want to study these pairs in parallel.  Care has been taken to keep
the section numbers for the main parts intact.

Note that all `WEB` programs are mogrified from Pascal code to C code before
compilation, so further modifications and amendments will occur “for the real
thing,” i.e., the production of the executable `WEB` programs.  (The `CWEB`
programs do not require these extra modifications, they get linked directly to
the external runtime environment.)

If you believe to have found anything that remains technically, historically,
typographically, or politically incorrect, please notify the maintainers at
[the tex-k mailing list](mailto:tex-k@tug.org).

## Canonical Knuthian WEB programs

* `errata/`
* `etc/` \[
  [`VFtoVP`](etc/vftovp.pdf)<sub>[chg](etc/vftovp-changes.pdf)</sub> \|
  [`VPtoVF`](etc/vptovf.pdf)<sub>[chg](etc/vptovf-changes.pdf)</sub> \]
* `mf/` \[
  [`Metafont`](mf/mf.pdf)<sub>[chg](mf/mf-changes.pdf)</sub> \|
  [`TRAPMAN`](mf/trapman.pdf) \]
* `mfware/` \[
  [`GFtype`](mfware/gftype.pdf)<sub>[chg](mfware/gftype-changes.pdf)</sub> \|
  [`GFtoPK`](mfware/gftopk.pdf)<sub>[chg](mfware/gftopk-changes.pdf)</sub> \|
  [`GFtoDVI`](mfware/gftodvi.pdf)<sub>[chg](mfware/gftodvi-changes.pdf)</sub> \|
  [`MFT`](mfware/mft.pdf)<sub>[chg](mfware/mft-changes.pdf)</sub> \]
* `tex/` \[
  [`TeX`](tex/tex.pdf)<sub>[chg](tex/tex-changes.pdf)</sub> \|
  [`TRIPMAN`](tex/tripman.pdf) \]
* `texware/` \[
  [`POOLtype`](texware/pooltype.pdf)<sub>[chg](texware/pooltype-changes.pdf)</sub> \|
  [`TFtoPL`](texware/tftopl.pdf)<sub>[chg](texware/tftopl-changes.pdf)</sub> \|
  [`PLtoTF`](texware/pltotf.pdf)<sub>[chg](texware/pltotf-changes.pdf)</sub> \|
  [`DVItype`](texware/dvitype.pdf)<sub>[chg](texware/dvitype-changes.pdf)</sub> \]
* `web/` \[
  [`WEBMAN`](web/webman.pdf) \|
  [`WEAVE`](web/weave.pdf)<sub>[chg](web/weave-changes.pdf)</sub> \|
  [`TANGLE`](web/tangle.pdf)<sub>[chg](web/tangle-changes.pdf)</sub> \]

## Complementary WEB programs

* `other/` \[
  [`DVIcopy`](other/dvicopy.pdf)<sub>[chg](other/dvicopy-changes.pdf)</sub> \|
  [`PatGen`](other/patgen.pdf)<sub>[chg](other/patgen-changes.pdf)</sub> \|
  [`PKtoGF`](other/pktogf.pdf)<sub>[chg](other/pktogf-changes.pdf)</sub> \|
  [`PKtype`](other/pktype.pdf)<sub>[chg](other/pktype-changes.pdf)</sub> \]
* `bibtex/` \[ [`BibTeX`](bibtex/bibtex.pdf)<sub>[chg](bibtex/bibtex-changes.pdf)</sub> \]
* `pdftex/` \[ [`pdfTeX`](pdftex/pdftex.pdf)<sub>[chg](pdftex/pdftex-changes.pdf)</sub> \]
* `xetex/` \[ [`XeTeX`](xetex/xetex.pdf)<sub>[chg](xetex/xetex-changes.pdf)</sub> \]

## CWEB programs

* `cweb/` \[
  [`CWEBMAN`](cweb/cwebman.pdf) \|
  [`COMMON`](cweb/common.pdf)<sub>[chg](cweb/common-changes.pdf)</sub> \|
  [`CTANGLE`](cweb/ctangle.pdf)<sub>[chg](cweb/ctangle-changes.pdf)</sub> \|
  [`CWEAVE`](cweb/cweave.pdf)<sub>[chg](cweb/cweave-changes.pdf)</sub> \|
  [`CTWILL`](cweb/ctwill.pdf) \]
* `ctie/` \[ [`CTIE`](ctie/ctie.pdf)<sub>[chg](ctie/ctie-changes.pdf)</sub> \]
* `tie/` \[ [`TIE`](tie/tie.pdf)<sub>[chg](tie/tie-changes.pdf)</sub> \]

## Happy C/WEB Programming!
