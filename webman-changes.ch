@x l.8
\font\eighttt=cmtt8
@y
\font\eighttt=cmtt8
\font\authorfont=cmr12
@z

@x l.16
\def\appA{7}
\def\appB{8}
\def\appC{9}
\def\appD{0}
\def\appE{0}
\def\appF{10}
\def\appG{11}
\def\appH{12}
@y
% 1 Introduction (new!)
% 2 General rules
% 3 Macros
% 4 Control codes
% 5 Additional features and caveats
% 6 Appendices
% 7 Performance statistics
\def\appA{8}
\def\appB{9}
\def\appC{10}
\def\appD{0}
\def\appE{0}
\def\appF{11}
\def\appG{12}
\def\appH{13}
@z

@x l.21
\def\runninghead{{\tentt WEB} USER MANUAL}
@y
\def\runninghead{{\ninett WEB} USER MANUAL}
@z

@x l.31
\centerline{\titlefont The {\ttitlefont WEB} System
@y

\null\vfill
\centerline{\titlefont The {\ttitlefont WEB} System of
    Structured Documentation}
\vskip 18pt\centerline{(Version 4.5 --- January 2021)}
\vskip 24pt
\centerline{\authorfont Donald E. Knuth}
\vfill

\noindent
Editor's Note: This document describes the extended \.{WEB} system
(Version 4.5 [\TeX~Live]).

\noindent
It fixes a set of bugs in \pdfURL{the original variant}{webman.pdf}, replaces
the \.{webmac.tex} file in \Appendix F\null\ with the most recent version, and
adds new material describing extended features of the \.{WEB} system as
distributed in current \TeX\ Live. For the most part, this is the \.{-p}
command-line option of the \.{WEAVE} processor and the associated
\.{pwebmac.tex} macro file with support for {\mc PDF} and {\mc HINT} output
formats; see section ``Hypertext and hyperdocumentation'' below.

\smallskip\noindent
See also the online project
\pdfURL{\.{https://github.com/ascherer/web}}{https://github.com/ascherer/web}
for more information.

\pageno=0 \titletrue\eject

\titlefalse
\centerline{\titlefont The {\ttitlefont WEB} System
@z

@x l.34
\vskip 15pt plus 3pt minus 3pt
\noindent This memo describes how to write programs in the
@y
\section Introduction.
This memo describes how to write programs in the
@z

@x l.126
well known work of Pierre-Arnoul de Marneffe [``Holon programming: A
survey,'' Univ.\ de Liege, Service Informatique, Liege, Belgium, 1973; 135
@y
well known work of Pierre-Arnoul de Marneffe [``\pdfURL{Holon programming:
A survey}{https://github.com/holon-scribe/holon-programming},'' Univ.\ de
Li\`ege, Service d'Informatique, Li\`ege, Belgium, 1973; 135
@z

@x l.180
\yskip\item{1)} A \TeX\ part, containing explanatory material about what
@y
\begingroup\parindent=2.5em
\yskip\item{1)} A \TeX\ part, containing explanatory material about what
@z

@x l.190
that its structure is readily perceived.
@y
that its structure is readily perceived.\par
\endgroup
@z

@x l.304
`\.{\\input webmac}'; this will cause \TeX\ to read in the macros that
@y
`\.{\\input webmac}'---or, if you invoke `\.{weave -p}',
`\.{\\input pwebmac}'---; this will cause \TeX\ to read in the macros that
@z

@x l.358
  \.{which is a \\\&\{packed\}{ }\\\&\{array\}{ }\$
@y
  \.{which is a \\\&\{packed\}{ }\\\&\{array\}{ }\$%
@z

@x l.607
the \.{TANGLE} processor will treat this an equivalent to `\.{64}';
the constant will be formatted as ``\O{100}'' in the \TeX\ output
@y
the \.{TANGLE} processor will treat this as equivalent to `\.{64}';
the constant will be formatted as `\O{100}' in the \TeX\ output
@z

@x l.628
outputs of \.{WEAVE} and \.{TANGLE} (see \Appendix C\null). Meta-comments
@y
outputs of \.{WEAVE} (see \Appendix B\null) and \.{TANGLE}
(see \Appendix C\null). Meta-comments
@z

@x l.788
\yskip\itemitem{a)}Comments in \PASCAL\ text should appear only after
@y
\yskip
\begingroup\parindent=1.5em
\itemitem{a)}Comments in \PASCAL\ text should appear only after
@z

@x l.796
statements.
@y
statements.\par
\endgroup
@z

@x l.909
Finally, \Appendix F is the `\.{webmac}' file that sets \TeX\ up to accept
the output of \.{WEAVE}; \Appendix G discusses how to use some of its macros
to vary the output formats; and \Appendix H discusses what needs to be done
@y
Finally, \Appendix F shows the `\.{webmac.tex}' file that sets \TeX\ up to
accept the output of \.{WEAVE}; it also shows the `\.{pwebmac.tex}' file that
provides alternative macros more suited for {\mc PDF} output with modern \TeX\
engines; \Appendix G discusses how to use some of these macros
to vary the output formats; and \Appendix H discusses what needs to be done
@z

@x l.989
\def\runninghead{APPENDIX A --- {\tentt WEB} FILE FORMAT}
@y
\def\runninghead{APPENDIX A --- {\ninett WEB} FILE FORMAT}
@z

@x l.1050
ASCII codes is $c_1c_2\ldots c_m$, its hash value will be
@y
ASCII codes is $c_1c_2\ldots c_n$, its hash value will be
@z

@x l.1061
\def\runninghead{APPENDIX B --- TRANSLATION BY {\tentt WEAVE}}
@y
\def\runninghead{APPENDIX B --- TRANSLATION BY {\ninett WEAVE}}
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
\def\runninghead{APPENDIX C --- TRANSLATION BY {\tentt TANGLE}}
@y
\def\runninghead{APPENDIX C --- TRANSLATION BY {\ninett TANGLE}}
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

@x l.1203
\section Appendix F: The \.{webmac.tex} file.
This is the file that extends ``plain \TeX'' format in order to support the
@y
\section Appendix F: Macros for formatting.
The \.{webmac.tex} file extends ``plain \TeX'' format in order to support the
@z

@x l.1208
\verbatim
% standard macros for WEB listings (in addition to PLAIN.TEX)
\xdef\fmtversion{\fmtversion+WEBMAC4.0} % identifies current set of macros
\parskip 0pt % no stretch between paragraphs
\parindent 1em % for paragraphs and for the first line of Pascal text

\font\eightrm=cmr8 \let\sc=\eightrm % NOT a caps-and-small-caps font!
\let\mainfont=\tenrm
\font\titlefont=cmr7 scaled\magstep4 % title on the contents page
\font\ttitlefont=cmtt10 scaled\magstep2 % typewriter type in title
\font\tentex=cmtex10 % TeX extended character set (used in strings)

\def\\#1{\hbox{\it#1\/\kern.05em}} % italic type for identifiers
\def\|#1{\hbox{$#1$}} % one-letter identifiers look a bit better this way
\def\&#1{\hbox{\bf#1\/}} % boldface type for reserved words
\def\.#1{\hbox{\tentex % typewriter type for strings
  \let\\=\BS % backslash in a string
  \let\'=\RQ % right quote in a string
  \let\`=\LQ % left quote in a string
  \let\{=\LB % left brace in a string
  \let\}=\RB % right brace in a string
  \let\~=\TL % tilde in a string
  \let\ =\SP % space in a string
  \let\_=\UL % underline in a string
  \let\&=\AM % ampersand in a string
  #1}}
\def\#{\hbox{\tt\char`\#}} % parameter sign
\def\${\hbox{\tt\char`\$}} % dollar sign
\def\%{\hbox{\tt\char`\%}} % percent sign
\def\^{\ifmmode\mathchar"222 \else\char`^ \fi} % pointer or hat
% circumflex accents can be obtained from \^^D instead of \^
\def\AT!{@} % at sign for control text

\chardef\AM=`\& % ampersand character in a string
\chardef\BS=`\\ % backslash in a string
\chardef\LB=`\{ % left brace in a string
\def\LQ{{\tt\char'22}} % left quote in a string
\chardef\RB=`\} % right brace in a string
\def\RQ{{\tt\char'23}} % right quote in a string
\def\SP{{\tt\char`\ }} % (visible) space in a string
\chardef\TL=`\~ % tilde in a string
\chardef\UL=`\_ % underline character in a string

\newbox\bak \setbox\bak=\hbox to -1em{} % backspace one em
\newbox\bakk\setbox\bakk=\hbox to -2em{} % backspace two ems

\newcount\ind % current indentation in ems
\def\1{\global\advance\ind by1\hangindent\ind em} % indent one more notch
\def\2{\global\advance\ind by-1} % indent one less notch
\def\3#1{\hfil\penalty#10\hfilneg} % optional break within a statement
\def\4{\copy\bak} % backspace one notch
\def\5{\hfil\penalty-1\hfilneg\kern2.5em\copy\bakk\ignorespaces}% optional break
\def\6{\ifmmode\else\par % forced break
  \hangindent\ind em\noindent\kern\ind em\copy\bakk\ignorespaces\fi}
\def\7{\Y\6} % forced break and a little extra space

\let\yskip=\smallskip
\def\to{\mathrel{.\,.}} % double dot, used only in math mode
\def\note#1#2.{\Y\noindent{\hangindent2em\baselineskip10pt\eightrm#1~#2.\par}}
\def\lapstar{\rlap{*}}
\def\startsection{\Q\noindent{\let\*=\lapstar\bf\modstar.\quad}}
\def\defin#1{\global\advance\ind by 2 \1\&{#1 }} % begin `define' or `format'
\def\A{\note{See also section}} % crossref for doubly defined section name
\def\As{\note{See also sections}} % crossref for multiply defined section name
\def\B{\mathopen{\.{@\{}}} % begin controlled comment
\def\C#1{\ifmmode\gdef\XX{\null$\null}\else\gdef\XX{}\fi % Pascal comments
  \XX\hfil\penalty-1\hfilneg\quad$\{\,$#1$\,\}$\XX}
\def\D{\defin{define}} % macro definition
\def\E{\cdot10^} % exponent in floating point constant
\def\ET{ and~} % conjunction between two section numbers
\def\ETs{, and~} % conjunction between the last two of several section numbers
\def\F{\defin{format}} % format definition
\let\G=\ge % greater than or equal sign
\def\H#1{\hbox{\rm\char"7D\tt#1}} % hexadecimal constant
\let\I=\ne % unequal sign
\def\J{\.{@\&}} % TANGLE's join operation
\let\K=\gets % left arrow
\let\L=\le % less than or equal sign
\outer\def\M#1.{\MN#1.\ifon\vfil\penalty-100\vfilneg % beginning of section
  \vskip12ptminus3pt\startsection\ignorespaces}
\outer\def\N#1.#2.{\MN#1.\vfil\eject % beginning of starred section
  \def\rhead{\uppercase{\ignorespaces#2}} % define running headline
  \message{*\modno} % progress report
  \edef\next{\write\cont{\Z{#2}{\modno}{\the\pageno}}}\next % to contents file
  \ifon\startsection{\bf\ignorespaces#2.\quad}\ignorespaces}
\def\MN#1.{\par % common code for \M, \N
  {\xdef\modstar{#1}\let\*=\empty\xdef\modno{#1}}
  \ifx\modno\modstar \onmaybe \else\ontrue \fi \mark{\modno}}
\def\O#1{\hbox{\rm\char'23\kern-.2em\it#1\/\kern.05em}} % octal constant
\def\P{\rightskip=0pt plus 100pt minus 10pt % go into Pascal mode
  \sfcode`;=3000
  \pretolerance 10000
  \hyphenpenalty 10000 \exhyphenpenalty 10000
  \global\ind=2 \1\ \unskip}
\def\Q{\rightskip=0pt % get out of Pascal mode
  \sfcode`;=1500 \pretolerance 200 \hyphenpenalty 50 \exhyphenpenalty 50 }
\let\R=\lnot % logical not
\let\S=\equiv % equivalence sign
\def\T{\mathclose{\.{@\}}}} % terminate controlled comment
\def\U{\note{This code is used in section}} % crossref for use of a section
\def\Us{\note{This code is used in sections}} % crossref for uses of a section
\let\V=\lor % logical or
\let\W=\land % logical and
\def\X#1:#2\X{\ifmmode\gdef\XX{\null$\null}\else\gdef\XX{}\fi % section name
  \XX$\langle\,$#2{\eightrm\kern.5em#1}$\,\rangle$\XX}
\def\Y{\par\yskip}
\let\Z=\let % now you can \send the control sequence \Z
\def\){\hbox{\.{@\$}}} % sign for string pool check sum
\def\]{\hbox{\.{@\\}}} % sign for forced line break
\def\=#1{\kern2pt\hbox{\vrule\vtop{\vbox{\hrule
        \hbox{\strut\kern2pt\.{#1}\kern2pt}}
      \hrule}\vrule}\kern2pt} % verbatim string
\let\~=\ignorespaces
\let\*=*

\def\onmaybe{\let\ifon=\maybe} \let\maybe=\iftrue
\newif\ifon \newif\iftitle \newif\ifpagesaved
\def\lheader{\mainfont\the\pageno\eightrm\qquad\rhead\hfill\title\qquad
  \tensy x\mainfont\topmark} % top line on left-hand pages
\def\rheader{\tensy x\mainfont\topmark\eightrm\qquad\title\hfill\rhead
  \qquad\mainfont\the\pageno} % top line on right-hand pages
\def\page{\box255 }
\def\normaloutput#1#2#3{\ifodd\pageno\hoffset=\pageshift\fi
  \shipout\vbox{
    \vbox to\fullpageheight{
      \iftitle\global\titlefalse
      \else\hbox to\pagewidth{\vbox to10pt{}\ifodd\pageno #3\else#2\fi}\fi
      \vfill#1}} % parameter #1 is the page itself
  \global\advance\pageno by1}

\def\rhead{\.{WEB} OUTPUT} % this running head is reset by starred sections
\def\title{} % an optional title can be set by the user
\def\topofcontents{\centerline{\titlefont\title}
  \vfill} % this material will start the table of contents page
\def\botofcontents{\vfill} % this material will end the table of contents page
\def\contentspagenumber{0} % default page number for table of contents
\newdimen\pagewidth \pagewidth=6.5in % the width of each page
\newdimen\pageheight \pageheight=8.7in % the height of each page
\newdimen\fullpageheight \fullpageheight=9in % page height including headlines
\newdimen\pageshift \pageshift=0in % shift righthand pages wrt lefthand ones
\def\magnify#1{\mag=#1\pagewidth=6.5truein\pageheight=8.7truein
  \fullpageheight=9truein\setpage}
\def\setpage{\hsize\pagewidth\vsize\pageheight} % use after changing page size
\def\contentsfile{CONTENTS} % file that gets table of contents info
\def\readcontents{\input CONTENTS}

\newwrite\cont
\output{\setbox0=\page % the first page is garbage
  \openout\cont=\contentsfile
  \global\output{\normaloutput\page\lheader\rheader}}
\setpage
\vbox to \vsize{} % the first \topmark won't be null

\def\ch{\note{The following sections were changed by the change file:}
  \let\*=\relax}
\newbox\sbox % saved box preceding the index
\newbox\lbox % lefthand column in the index
\def\inx{\par\vskip6pt plus 1fil % we are beginning the index
  \write\cont{} % ensure that the contents file isn't empty
  \closeout\cont % the contents information has been fully gathered
  \output{\ifpagesaved\normaloutput{\box\sbox}\lheader\rheader\fi
    \global\setbox\sbox=\page \global\pagesavedtrue}
  \pagesavedfalse \eject % eject the page-so-far and predecessors
  \setbox\sbox\vbox{\unvbox\sbox} % take it out of its box
  \vsize=\pageheight \advance\vsize by -\ht\sbox % the remaining height
  \hsize=.5\pagewidth \advance\hsize by -10pt
    % column width for the index (20pt between cols)
  \parfillskip 0pt plus .6\hsize % try to avoid almost empty lines
  \def\lr{L} % this tells whether the left or right column is next
  \output{\if L\lr\global\setbox\lbox=\page \gdef\lr{R}
    \else\normaloutput{\vbox to\pageheight{\box\sbox\vss
        \hbox to\pagewidth{\box\lbox\hfil\page}}}\lheader\rheader
    \global\vsize\pageheight\gdef\lr{L}\global\pagesavedfalse\fi}
  \message{Index:}
  \parskip 0pt plus .5pt
  \outer\def\:##1, {\par\hangindent2em\noindent##1:\kern1em} % index entry
  \let\ttentry=\. \def\.##1{\ttentry{##1\kern.2em}} % give \tt a little room
  \def\[##1]{$\underline{##1}$} % underlined index item
  \rm \rightskip0pt plus 2.5em \tolerance 10000 \let\*=\lapstar
  \hyphenpenalty 10000 \parindent0pt}
\def\fin{\par\vfill\eject % this is done when we are ending the index
  \ifpagesaved\null\vfill\eject\fi % output a null index column
  \if L\lr\else\null\vfill\eject\fi % finish the current page
  \parfillskip 0pt plus 1fil
  \def\rhead{NAMES OF THE SECTIONS}
  \message{Section names:}
  \output{\normaloutput\page\lheader\rheader}
  \setpage
  \def\note##1##2.{\hfil\penalty-1\hfilneg\quad{\eightrm##1 ##2.}}
  \linepenalty=10 % try to conserve lines
  \def\U{\note{Used in section}} % crossref for use of a section
  \def\Us{\note{Used in sections}} % crossref for uses of a section
  \def\:{\par\hangindent 2em}\let\*=*\let\.=\ttentry}
\def\con{\par\vfill\eject % finish the section names
  \rightskip 0pt \hyphenpenalty 50 \tolerance 200
  \setpage
  \output{\normaloutput\page\lheader\rheader}
  \titletrue % prepare to output the table of contents
  \pageno=\contentspagenumber \def\rhead{TABLE OF CONTENTS}
  \message{Table of contents:}
  \topofcontents
  \line{\hfil Section\hbox to3em{\hss Page}}
  \def\Z##1##2##3{\line{\ignorespaces##1
    \leaders\hbox to .5em{.\hfil}\hfil\ ##2\hbox to3em{\hss##3}}}
  \readcontents\relax % read the contents info
  \botofcontents \end} % print the contents page(s) and terminate
?endgroup
@y
\begingroup \def\tt{\eighttt} \baselineskip9pt
\def\printmacs#1{\begingroup
  \def\do##1{\catcode`##1=12 } \dospecials
  \parskip 0pt \parindent 0pt
  \catcode`\ =13 \catcode`\^^M=13
  \tt \verbatimdefs \input #1 \endgroup}
\printmacs{webmac}
\vskip6pt \baselineskip12pt
\section Hypertext and hyperdocumentation.
Many people have of course noticed analogies between \.{WEB} and the
World Wide Web. The following \.{WEB} macros \.{pwebmac.tex} are in fact
set up so that the output of \.{WEAVE} can be converted easily into
Portable Document Format, with clickable hyperlinks that can be read
with your favorite {\mc PDF} viewer.
After using \.{WEAVE} with command line option `\.{-p}' to convert
\.{cob.web} into \.{cob.tex}, you can prepare a hypertext version of
the program by giving the commands
$$\vbox{\halign{\.{#}\hfil\cr
tex "\\let\\pdf+ \\input cob"\cr
dvipdfm cob\cr}}$$
instead of invoking \TeX\ in the normal way.
Alternatively you can generate \.{cob.pdf} in one step by simply saying
`\.{pdftex}~\.{cob}' or `\.{xetex}~\.{cob}' or `\.{luatex}~\.{cob}'.
(You are advised to use the command line option `\.{--shell-escape}' with
\.{pdftex} and \.{luatex} in order to receive ``valid'' {\mc PDF} output;
otherwise, the internal counter for the ``Names of the sections'' part
in the {\mc PDF} ``bookmarks'' will be incorrect.)

Similar output for ``smart'' devices can be created with Martin Ruckert's
Hi\TeX\ and its dynamic {\mc HINT} format; just say `\.{hitex}~\.{cob}'.
{\mc HINT} files can be viewed with the \.{hintview} program, which is
available from
\pdfURL{\.{https://hint.userweb.mwn.de/hint/hintview.html}}%
          {https://hint.userweb.mwn.de/hint/hintview.html}.%

A more elaborate system called \pdfURL{\.{TWILL}}{twill.pdf}, which extends
the usual cross references of \.{WEAVE} by preparing links from the uses of
identifiers to their definitions, is also available---provided that you are
willing to work a bit harder in cases where an identifier is multiply defined.
\.{TWILL} is intended primarily for hardcopy output, but its principles could
be used for hypertext as well. It uses its own set of macros
`\.{twimac-web.tex}'.

\vskip6pt \baselineskip9pt
\printmacs{pwebmac}
\endgroup
\vfill\eject
@z

@x l.1418
The macros in \.{webmac} make it possible to produce a variety of formats
@y
The macros in \.{webmac} and \.{pwebmac} make it possible to produce
a variety of formats
@z

@x l.1569
\.{\\ch}, \.{\\fin}, and \.{\\con}. \.{WEAVE} itself need not be changed.
@y
\.{\\ch}, \.{\\fin}, and \.{\\con}. \.{WEAVE} itself need not be changed.

\point 15. In conjunction with `\.{weave -p}' and the \.{pwebmac} macros you
can say `\.{\\input pdfwebtocfront}' as the last command in the limbo section
and run \TeX\ \\{twice} on your woven \.{WEB} document, in order to shift the
table-of-contents to the front of the {\mc PDF} output.
@z

@x l.1592
first change files; then you can sure that your compiler will handle
@y
first change files; then you can be sure that your compiler will handle
@z
