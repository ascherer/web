Changes for TANGLE.WEB to adapt to TeX Live convention.

In order to compare output created by TL's TANGLE and by this FPC TANGLE,
invoke TL's TANGLE with option '-uppercase' and extend one internal size
with this patch.

Public domain.  Originally written by Andreas Scherer, 2021.

Limbo.

@x
\def\({} % kludge for alphabetizing certain module names
@y
\def\({} % kludge for alphabetizing certain module names

% Fix several section names in the PDF bookmarks:
\sanitizecommand\PASCAL{Pascal}
\sanitizecommand\S{==}
\sanitizecommand\#{hashmark}
\sanitizecommand\_{_}
\sanitizecommand\ { }
@z

Section 8.

@x l.196
@!max_id_length=12; {long identifiers are chopped to this length, which must
@y
@!max_id_length=32; {long identifiers are chopped to this length, which must
@z
