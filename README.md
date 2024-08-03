# pwebmac – Consolidated WEB macros for DVI, PDF, and HINT output

The original [WEB](https://ctan.org/pkg/web) system by Donald Knuth has the
macros `webmac.tex` that produce DVI output only; for historic reasons, they
will never be modified (apart from catastrophic errors).
Hàn Thế Thành has extended these macros in his (outdated?) `pdfwebmac.tex` for
PDF output (only) with [pdfTeX](https://ctan.org/pkg/pdftex).
Jonathan Kew's [XeTeX](https://ctan.org/pkg/xetex) has similar macros
`xewebmac.tex` by Khaled Hosny that include and _modify_ `webmac.tex` for PDF
output; all these macros can only be used with a specific “TeX engine” each.

The present `pwebmac` package integrates these three WEB macro files similar
to `cwebmac.tex` in Silvio Levy's and Don Knuth's
[CWEB](https://ctan.org/pkg/cweb) system, so `pwebmac.tex` can be used with
“plain TeX,” “pdfTeX,” “LuaTeX,” and “XeTeX” alike. And it adds full support
for Martin Ruckert's “[HiTeX](https://ctan.org/pkg/hitex)” engine and its
[`HINT`](https://hint.userweb.mwn.de/hint/format.html) output format.

Its initial application is the production of PDF and HINT files for all major
WEB programs for “TeX and friends” as distributed in
[TeX Live](https://www.tug.org/texlive).  For this purpose, the shell script
`makeall` was whipped together; it provides various command-line options and
works around several “quirks” in the WEB sources.  The resulting collections
of PDF and HINT documents can be browsed in the
[`knuth-pdf`](https://ctan.org/pkg/knuth-pdf) and
[`knuth-hint`](https://ctan.org/pkg/knuth-hint) packages.

WEB programmers who want to use `pwebmac.tex` instead of the default
`webmac.tex` in their programs have to change the first line in the TeX file
created by `WEAVE` (try `weave -p`).  From there, all depends on the “TeX
engine” you use: “plain TeX” by default creates DVI output, “plain TeX” with
the invocation `tex "\let\pdf+\input…"`, as well as `pdftex`, `luatex`, and
`xetex` create PDF output with clickable links and bookmarks (with `pdftex`
and `luatex` you are advised to apply the “`--shell-escape`” command-line
option in order to avoid an internal miscalculation in the resulting PDF
file), and `hitex` creates HINT output that can be viewed with the
[`hintview`](https://hint.userweb.mwn.de/hint/hintview.html) program.

The `pwebmac` package is free software and may be used without constraints.

This is version **5.0** of the `pwebmac` package — 2024-08-03, Andreas Scherer.
