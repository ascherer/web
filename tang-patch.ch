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

Section 70.

@x l.1253
Replacement texts, which represent \PASCAL\ code in a compressed format,
appear in |tok_mem| as mentioned above. The codes in
@y
Replacement texts, which represent \PASCAL\ code in a compressed format,
appear in the array |tok_mem| as mentioned above. The codes in
@z
