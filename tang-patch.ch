Changes for TANGLE.WEB to adapt to TeX Live convention.

In order to compare output created by TL's TANGLE and by this FPC TANGLE,
invoke TL's TANGLE with option '-uppercase' and extend one internal size
with this patch.

Public domain.  Originally written by Andreas Scherer, 2021.

Section 8.

@x l.196
@!max_id_length=12; {long identifiers are chopped to this length, which must
@y
@!max_id_length=32; {long identifiers are chopped to this length, which must
@z

Section 31.

@x l.640
procedure error; {prints '\..' and location of error message}
@y
procedure error; {prints `\..' and location of error message}
@z

Section 172.

@x l.3095 - Reject strings as macro names.
  if next_control<>identifier then
@y
  if (next_control<>identifier) or (buffer[id_first]="""") then
@z
