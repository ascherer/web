@x l.2
\input webmac
@y
\input pwebmac
\ifacro
  \pdfpagewidth=\pagewidth \advance\pdfpagewidth by 2cm
  \pdfpageheight=\pageheight \advance\pdfpageheight by 3cm
  \ifpdftex \pdfhorigin=1cm \pdfvorigin=1cm
  \else \advance\pdfpageheight by 1cm \global\pageshift=-1.54cm
    \global\hoffset=-1.54cm \global\voffset=-1.54cm \fi
\else\pageno=1\fi
@z

@x l.16
\outer\def\section #1.{\penalty-50\vskip 12pt plus 3pt minus 3pt
  \noindent{\bf #1.}\quad\ignorespaces}
@y
\newcount\destcount \destcount=1\relax

\def\bkminfo{}
\outer\def\section #1.{\penalty-50\vskip 12pt plus 3pt minus 3pt
  \noindent\ifacro\vbox to 0pt{\kern-2.5ex\relax
    \ifpdftex\pdfdest num \destcount fitbh\relax
    \else\special{pdf: dest (\the\destcount) [ @thispage /FitBH @ypos ]}\fi
    \def\.##1{##1}%
    \ifx\bkminfo\empty\def\sectitle{#1}\else\def\sectitle{#1 (\bkminfo)}\fi
    \ifpdftex\pdfoutline goto num \destcount {\sectitle}\relax
    \else\special{pdf: outline 0 << /Title (\sectitle)
      /A << /S /GoTo /D (\the\destcount) >> >>}\fi
    \gdef\bkminfo{}%
    \global\advance\destcount by 1\relax
    \kern2.5ex\relax
  }\fi{\bf #1.}\quad\ignorespaces}

\def\appA{7}
\def\appB{8}
\def\appC{9}
\def\appD{0}
\def\appE{0}
\def\appF{10}
\def\appG{11}
\def\appH{12}

\def\Appendix#1{\leavevmode
  \ifnum\csname app#1\endcsname>0 %
    \ifacro\ifpdftex
      \pdfstartlink attr{/Border[0 0 0]} goto num\csname app#1\endcsname\relax
      \PDFlinkcolor\hbox{Appendix}~#1\Black
      \pdfendlink
    \else
      \setbox0=\hbox{\special{pdf: bc [ \pdflinkcolor ]}{\hbox{Appendix}~#1}%
      \special{pdf: ec}}\special{pdf: ann width \thewidth height \theheight
        depth \thedepth << /Type /Annot /Subtype /Link /Border [0 0 0]
        /A << /S /GoTo /D (\csname app#1\endcsname) >> >>}\box0\relax
    \fi\else Appendix~#1\fi
  \else Appendix~#1\fi}
@z

@x
program for \.{TANGLE}, in the appendix, gives precise details about this
@y
program for \.{TANGLE}, in \pdfURL{Appendix~E}{tangle.pdf},
gives precise details about this
@z

@x l.626
outputs of \.{WEAVE} and \.{TANGLE} (see Appendix~C\null). Meta-comments
@y
outputs of \.{WEAVE} (see \Appendix B\null) and \.{TANGLE}
(see \Appendix C\null). Meta-comments
@z

@x l.893
examples of ``real'' programs. Appendix~A shows the \.{WEB} input that
generated modules 55--59 of the \.{WEAVE} program; Appendix~B shows the
corresponding \TeX\ code output by \.{WEAVE}; and Appendix~C shows excerpts
@y
examples of ``real'' programs. \Appendix A shows the \.{WEB} input that
generated modules 55--59 of the \.{WEAVE} program; \Appendix B shows the
corresponding \TeX\ code output by \.{WEAVE}; and \Appendix C shows excerpts
@z

@x l.900
report, in Appendices D and~E. The reader should first compare Appendix~A
to the corresponding portion of Appendix~D; then the same material should
be compared to Appendices B and~C. Finally, if time permits, the reader may
enjoy studying the complete programs in Appendices D and~E, since \.{WEAVE}
@y
report, in Appendices \pdfURL{D}{weave.pdf} and~\pdfURL{E}{tangle.pdf}.
The reader should first compare \Appendix A to the corresponding portion of
\pdfURL{Appendix~D}{weave.pdf}; then the same material should be compared to
\Appendix B and \Appendix C. Finally, if time permits, the reader may enjoy
studying the complete programs in Appendices \pdfURL{D}{weave.pdf}
and~\pdfURL{E}{tangle.pdf}, since \.{WEAVE}
@z

@x l.908
Finally, Appendix F is the `\.{webmac}' file that sets \TeX\ up to accept
the output of \.{WEAVE}; Appendix~G discusses how to use some of its macros
to vary the output formats; and Appendix~H discusses what needs to be done
@y
Finally, \Appendix F is the `\.{webmac}' file that sets \TeX\ up to accept
the output of \.{WEAVE}; \Appendix G discusses how to use some of its macros
to vary the output formats; and \Appendix H discusses what needs to be done
@z

@x l.913
The programs in Appendices D and E will optionally keep statistics on
@y
The programs in Appendices \pdfURL{D}{weave.pdf} and \pdfURL{E}{tangle.pdf}
will optionally keep statistics on
@z

@x l.989
\section Appendix A.
This excerpt from \.{WEAVE.WEB} produced modules 55--59 in Appendix~D.
@y
\def\bkminfo{WEB file format}
\section Appendix A.
This excerpt from \.{WEAVE.WEB} produced modules 55--59 in
\pdfURL{Appendix~D}{weave.pdf}.
@z

@x l.1061
\section Appendix B.
This excerpt from \.{WEAVE.TEX} corresponds to Appendix A.
@y
\def\bkminfo{Translations by WEAVE}
\section Appendix B.
This excerpt from \.{WEAVE.TEX} corresponds to \Appendix A.
@z

@x l.1143
\section Appendix C.
@y
\def\bkminfo{Translation by TANGLE}
\section Appendix C.
@z

@x l.1425
in small caps. For example, Appendix~D was produced after saying
@y
in small caps. For example, \pdfURL{Appendix~D}{weave.pdf} was produced
after saying
@z

@x l.1468
\.{\\pageno=\\contentspagenumber} \.{\\advance\\pageno by 1}'. (Appendix~D
@y
\.{\\pageno=\\contentspagenumber} \.{\\advance\\pageno by 1}'.
(\pdfURL{Appendix~D}{weave.pdf}
@z

@x l.1479
For example, Appendix~D was produced with the following definitions:
@y
For example, \pdfURL{Appendix~D}{weave.pdf} was produced with the following
definitions:
@z

@x l.1491
for every starred module. For example, when Appendix~D was being generated,
@y
for every starred module. For example, when \pdfURL{Appendix~D}{weave.pdf}
was being generated,
@z

@x l.1583
dependencies'' in the index of Appendix~E above, and figure out what changes
@y
dependencies'' in the index of \pdfURL{Appendix~E}{tangle.pdf} above,
and figure out what changes
@z

@x l.1609
the index to Appendix~D.
@y
the index to \pdfURL{Appendix~D}{weave.pdf}.
@z

@x l.1616
Appendix~E. This listing will incorporate your changes.
@y
\pdfURL{Appendix~E}{tangle.pdf}. This listing will incorporate your changes.
@z

@x l.1620
Appendix~D that incorporates your changes.
@y
\pdfURL{Appendix~D}{weave.pdf} that incorporates your changes.
@z

@x l.1666
computer by following Appendices D and E. Then you have to simulate the
@y
computer by following Appendices \pdfURL{D}{weave.pdf}
and~\pdfURL{E}{tangle.pdf}. Then you have to simulate the
@z
