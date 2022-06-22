@x l.2
\input webmac
@y
\input pwebmac
\ifpdf
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
  \noindent\ifpdf\vbox to 0pt{\kern-2.5ex\relax
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
    \ifpdf\ifpdftex
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

@x l.34
\vskip 15pt plus 3pt minus 3pt
\noindent This memo describes how to write programs in the
@y
\section Introduction.
This memo describes how to write programs in the
@z

@x l.180
\yskip\item{1)} A \TeX\ part, containing explanatory material about what
@y
\yskip\itemitem{1)} A \TeX\ part, containing explanatory material about what
@z

@x l.183
\item{2)} A definition part, containing macro definitions that serve as
@y
\itemitem{2)} A definition part, containing macro definitions that serve as
@z

@x l.187
\item{3)} A \PASCAL\ part, containing a piece of the program that
@y
\itemitem{3)} A \PASCAL\ part, containing a piece of the program that
@z

@x l.358
  \.{which is a \\\&\{packed\}{ }\\\&\{array\}{ }\$
@y
  \.{which is a \\\&\{packed\}{ }\\\&\{array\}{ }\$%
@z

@x l.447
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

@x l.1050
ASCII codes is $c_1c_2\ldots c_m$, its hash value will be
@y
ASCII codes is $c_1c_2\ldots c_n$, its hash value will be
@z

@x l.1061
\section Appendix B.
This excerpt from \.{WEAVE.TEX} corresponds to Appendix A.
@y
\def\bkminfo{Translations by WEAVE}
\section Appendix B.
This excerpt from \.{WEAVE.TEX} corresponds to \Appendix A.
@z

@x l.1129
ASCII codes is $c_1c_2\ldots c_m$, its hash value will be
@y
ASCII codes is $c_1c_2\ldots c_n$, its hash value will be
@z

@x l.1139
\U section~58.\fi
@y
\U58.\fi
@z

@x l.1143
\section Appendix C.
@y
\def\bkminfo{Translation by TANGLE}
\section Appendix C.
@z

@x l.1149
those lines. There are 1559 lines in all; the notation
@y
those lines. There are 1585 lines in all; the notation
@z

@x l.1158
{2:}{4:}{$C-,A+,D-}{[$C+,D+]}{:4}
PROGRAM WEAVE(WEBFILE,CHANGEFILE,TEXFILE);LABEL 9999;CONST{8:}
MAXBYTES=45000;MAXNAMES=5000;MAXMODULES=2000;HASHSIZE=353;BUFSIZE=100;
@y
{2:}{4:}{$C-,A+,D-}{[$C+,D+]}
{:4}PROGRAM WEAVE(WEBFILE,CHANGEFILE,TEXFILE);LABEL 9999;
CONST{8:}MAXBYTES=45000;MAXNAMES=5000;MAXMODULES=2000;HASHSIZE=353;
@z

@x l.1162
TOKPTR:0..MAXTOKS;{MAXTOKPTR,MAXTXTPTR:0..MAXTOKS;}{:53}{55:}
IDFIRST:0..LONGBUFSIZE;IDLOC:0..LONGBUFSIZE;
@y
TOKPTR:0..MAXTOKS;{MAXTOKPTR,MAXTXTPTR:0..MAXTOKS;}
{:53}{55:}IDFIRST:0..LONGBUFSIZE;IDLOC:0..LONGBUFSIZE;
@z

@x l.1166
PROCEDURE INITIALIZE;VAR{16:}I:0..127;{:16}{40:}WI:0..1;{:40}{56:}
H:0..HASHSIZE;{:56}{247:}C:ASCIICODE;{:247}BEGIN{10:}HISTORY:=0;{:10}
@y
{:33}PROCEDURE INITIALIZE;VAR{16:}I:0..255;{:16}{40:}WI:0..1;
{:40}{56:}H:0..HASHSIZE;{:56}{247:}C:ASCIICODE;
@z

@x l.1169
TOKPTR:=1;TEXTPTR:=1;TOKSTART[0]:=1;TOKSTART[1]:=1;{MAXTOKPTR:=1;
MAXTXTPTR:=1;}{:54}{57:}FOR H:=0 TO HASHSIZE-1 DO HASH[H]:=0;{:57}{94:}
SCANNINGHEX:=FALSE;{:94}{102:}MODTEXT[0]:=32;{:102}{124:}OUTPTR:=1;
@y
{MAXTOKPTR:=1;MAXTXTPTR:=1;}
{:54}{57:}FOR H:=0 TO HASHSIZE-1 DO HASH[H]:=0;
{:57}{94:}SCANNINGHEX:=FALSE;{:94}{102:}MODTEXT[0]:=32;
@z

@x l.1173
IF R=0 THEN XREF[P]:=XREFPTR ELSE XMEM[R].XLINKFIELD:=XREFPTR;END;{:51}
{58:}FUNCTION IDLOOKUP(T:EIGHTBITS):NAMEPOINTER;LABEL 31;
@y
IF R=0 THEN XREF[P]:=XREFPTR ELSE XMEM[R].XLINKFIELD:=XREFPTR;END;
{:51}{58:}FUNCTION IDLOOKUP(T:EIGHTBITS):NAMEPOINTER;LABEL 31;
@z

@x l.1176
L:0..LONGBUFSIZE;P:NAMEPOINTER;BEGIN L:=IDLOC-IDFIRST;{59:}
H:=BUFFER[IDFIRST];I:=IDFIRST+1;
@y
L:0..LONGBUFSIZE;P:NAMEPOINTER;BEGIN L:=IDLOC-IDFIRST;
{59:}H:=BUFFER[IDFIRST];I:=IDFIRST+1;
@z

@x l.1184
LINK[P]:=HASH[H];HASH[H]:=P;31:{:60};IF P=NAMEPTR THEN{62:}
BEGIN W:=NAMEPTR MOD 2;
@y
LINK[P]:=HASH[H];HASH[H]:=P;31:{:60};
IF P=NAMEPTR THEN{62:}BEGIN W:=NAMEPTR MOD 2;
@z

@x l.1194
XREF[P]:=0;END{:62};IDLOOKUP:=P;END;{:58}{66:}
FUNCTION MODLOOKUP(L:SIXTEENBITS):NAMEPOINTER;LABEL 31;VAR C:0..4;
@y
XREF[P]:=0;END{:62};IDLOOKUP:=P;END;
{:58}{66:}FUNCTION MODLOOKUP(L:SIXTEENBITS):NAMEPOINTER;LABEL 31;
@z

@x l.1208
\verbatim
@y
\begingroup \def\tt{\ninett} \baselineskip10pt
\verbatim
@z

@x l.1210
\xdef\fmtversion{\fmtversion+WEBMAC4.0} % identifies current set of macros
@y
\xdef\fmtversion{\fmtversion+WEBMAC4.2} % identifies current set of macros
@z

@x l.1218
\font\tentex=cmtex10 % TeX extended character set (used in strings)
@y
\font\tentex=cmtex10 % TeX extended character set (used in strings)
\fontdimen7\tentex=0pt % no extra space after punctuation
@z

@x l.1294
  {\xdef\modstar{#1}\let\*=\empty\xdef\modno{#1}}
  \ifx\modno\modstar \onmaybe \else\ontrue \fi \mark{\modno}}
@y
  {\xdef\modstar{#1}\let\*=\empty\xdef\modno{#1}}% remove \* from section name
  \ifx\modno\modstar \onmaybe \else\ontrue \fi
  \mark{{{\tensy x}\modno}{\rhead}}}
  % each \mark is {section reference or null}{group title}
@z

@x l.1325
\def\lheader{\mainfont\the\pageno\eightrm\qquad\rhead\hfill\title\qquad
  \tensy x\mainfont\topmark} % top line on left-hand pages
\def\rheader{\tensy x\mainfont\topmark\eightrm\qquad\title\hfill\rhead
  \qquad\mainfont\the\pageno} % top line on right-hand pages
@y
\def\lheader{\mainfont\the\pageno\eightrm\qquad\rhead
  \hfill\title\qquad\mainfont\topsecno} % top line on left-hand pages
\def\rheader{\mainfont\topsecno\eightrm\qquad\title\hfill
  \rhead\qquad\mainfont\the\pageno} % top line on right-hand pages
\def\topsecno{\expandafter\takeone\topmark}
\def\takeone#1#2{#1}
\def\taketwo#1#2{#2}
\def\nullsec{\eightrm\kern-2em} % the \kern-2em cancels \qquad in headers
@z

@x l.1336
\def\rhead{\.{WEB} OUTPUT} % this running head is reset by starred sections
@y
\def\rhead{\.{WEB} OUTPUT} % this running head is reset by starred sections
\mark{\noexpand\nullsec{\rhead}}
@z

@x l.1392
  \def\rhead{NAMES OF THE SECTIONS}
@y
  \def\rhead{NAMES OF THE SECTIONS}
  \let\topsecno=\nullsec
@z

@x l.1395
  \def\note##1##2.{\hfil\penalty-1\hfilneg\quad{\eightrm##1 ##2.}}
@y
  \def\note##1##2.{\hfil\penalty-1\hfilneg\quad{\eightrm##1~##2.}}
@z

@x l.1414
?endgroup
@y
?endgroup
\endgroup
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

@x l.1592
first change files; then you can sure that your compiler will handle
@y
first change files; then you can be sure that your compiler will handle
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

@x l.1632
\def\substep(10.#1){\par\hangindent 4em\noindent
  \hbox to 4em{\hfil(10.#1) }\ignorespaces}
@y
\def\substep(10.#1){\par\hangindent 3em\noindent
  \hbox to 3em{\hfil(10.#1) }\ignorespaces}
@z

@x l.1666
computer by following Appendices D and E. Then you have to simulate the
@y
computer by following Appendices \pdfURL{D}{weave.pdf}
and~\pdfURL{E}{tangle.pdf}. Then you have to simulate the
@z
