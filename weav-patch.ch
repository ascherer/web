Changes for WEAVE.WEB to compile with Free Pascal.

Here we modify WEAVE's convention and write '\input pwebmac' in the first line
of TeX output, because in general, we want to create PDF instead of DVI files.

And we fix one potential bug -- reported on the tex-k mailing list.

This file expects WEB-FPC.CH to be applied first.

Public domain.  Originally written by Andreas Scherer, 2021.

Limbo.

@x l.41
\def\({} % kludge for alphabetizing certain module names
@y
\def\({} % kludge for alphabetizing certain module names
\ifhint\else\ifpdf\sanitizecommand\max{max}\fi\fi
@z

Section 21.

@x l.526
on the Free \PASCAL\ system that was used decades after \.{TANGLE}'s initial
@y
on the Free \PASCAL\ system that was used decades after \.{WEAVE}'s initial
@z

Section 124.

@x l.2199
`\.{\\input webmac}'.
@.\\input webmac@>
@.webmac@>
@y
`\.{\\input pwebmac}'.
@.\\input pwebmac@>
@.\\input webmac@>
@.pwebmac@>
@.webmac@>
@z

@x l.2204
out_ptr:=1; out_line:=1; out_buf[1]:="c"; write(tex_file,'\input webma');
@y
out_ptr:=1; out_line:=1; out_buf[1]:="c"; write(tex_file,'\input pwebma');
@z

Section 127.

@x l.2234
preceded by another backslash. In the latter case, a |"%"| is output at
the break.
@y
preceded by another backslash or a \TeX\ comment marker. In the latter case, a
|'%'| is output at the break.
@z

@x l.2248
  if (d="\")and(out_buf[k-1]<>"\") then {in this case |k>1|}
@y
  if (d="\")and(out_buf[k-1]<>"\")and(out_buf[k-1]<>"%") then
    {in this case |k>1|}
@z

Section 172.

@x l.3337
@<Change |pp| to $\max(|scrap_base|,|pp+d|)$@>;
@y
@<Change |pp| to $\max(|scrap_base|,\,|pp+d|)$@>;
@z

Section 173.

@x l.3340
@ @<Change |pp| to $\max(|scrap_base|,|pp+d|)$@>=
@y
@ @<Change |pp| to $\max(|scrap_base|,\,|pp+d|)$@>=
@z

Section 249.

@x l.4663
  begin if sort_ptr>max_sorts then overflow('sorting');
@y
  begin if sort_ptr=max_sorts then overflow('sorting');
@z
