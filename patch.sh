ed webmac.tex <<'END'
207a
  \let\toppart\rhead
.
192a
  \let\toppart\rhead
.
159a
\newif\ifdp \dptrue % writing to dummy page
\newif\ifwp \wpfalse % writing not pending
\edef\nextcl{}
.
157c
  \ifcomp
    \global\output{\normaloutput\page\clheader\crheader}
  \else
    \global\output{\normaloutput\page\lheader\rheader}
  \fi
}
.
155a
  \global\dpfalse % not writing to dummy page
.
137c
\def\rhead{WEB OUTPUT} % this running head is reset by starred sections
\def\rrhead{WEB OUTPUT} % \rrhead and \rhead match for unchanged tex.tex
.
124a
\def\toppart{\expandafter\taketwo\topmark}
.
123a
% not compatible
\def\lheader{\mainfont\the\pageno\eightrm\qquad\toppart
  \hfill\title\qquad\mainfont\topsecno} % top line on left-hand pages
\def\rheader{\mainfont\topsecno\eightrm\qquad\title\hfill
  \toppart\qquad\mainfont\the\pageno} % top line on right-hand pages
.
122c
\def\crheader{\mainfont\topsecno\eightrm\qquad\title\hfill
.
120c
\newif\ifcomp \compfalse
% compatible
\def\clheader{\mainfont\the\pageno\eightrm\qquad\rhead
.
89,90c
  \ifon \mark{{{\tensy x}\modno}{\rhead}}\fi}

.
87a
  \comptrue
.
86c
\def\MN#1.{\par % common code for \M, \N only called by private \N module
.
84d
82a
  \ifon\mark{{{\tensy x}\modno}{\rhead}}
    \vfil\eject
  \fi
  \ifdp
    \edef\nextcl{\nextcl\write\cont{\Z{#2}{\modno}{\the\pageno}}}
    \wptrue
  \else
    \ifwp
      \nextcl
      \wpfalse
    \fi
    \edef\nextcl{\write\cont{\Z{#2}{\modno}{\the\pageno}}}\nextcl
      % to contents file
  \fi
.
79,81c
\outer\def\M#1.{ % beginning of section
  {\xdef\modstar{#1}\let\*=\empty\xdef\modno{#1}}
  \ifx\modno\modstar \onmaybe \else\ontrue \fi
  \ifon
    \mark{{{\tensy x}\modno}{\rhead}}
    \vfil\penalty-100\vfilneg
    \vskip12ptminus3pt\startsection\ignorespaces
}
\outer\def\N#1.#2.{ % beginning of starred section
  {\xdef\modstar{#1}\let\*=\empty\xdef\modno{#1}}% remove \* from section name
  \ifx\modno\modstar \onmaybe \else\ontrue \fi
.
2c
\xdef\fmtversion{\fmtversion+WEBMAC4.2+TeX-FPC, 4th ed.}
  % identifies current set of macros
\message{\fmtversion}
.
w nwebmac.tex
END
