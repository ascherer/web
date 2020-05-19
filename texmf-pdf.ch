@x
\outer\def\N#1. \[#2]#3.{\MN#1.\vfil\eject % begin starred section
  \def\rhead{PART #2:\uppercase{#3}} % define running headline
  \message{*\modno} % progress report
  \edef\next{\write\cont{\Z{\?#2]#3}{\modno}{\the\pageno}}}\next
  \ifon\startsection{\bf\ignorespaces#3.\quad}\ignorespaces}
@y
\outer\def\N#1. \[#2]#3.{\MN#1.\vfil\eject % begin starred section
  \ifacro{\toksF={}\makeoutlinetoks{[#2] #3}\outlinedone\outlinedone}\fi
  \def\rhead{PART #2:\uppercase{#3}} % define running headline
  \message{*\modno} % progress report
  \edef\next{\write\cont{\Z{\?#2]#3}{\modno}{\the\pageno}}}\next
  \ifpdf\special{pdf: outline 0 << /Title (\the\toksE) /Dest
    [ @@thispage /FitH @@ypos ] >>}\fi
  \ifon\startsection{\bf\ignorespaces#3.\quad}\ignorespaces}
@z
