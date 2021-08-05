Section 4.

@x l.121
@{@&$C-,A+,D-@} {no range check, catch arithmetic overflow, no debug overhead}
@y
@{@&$mode ISO@} {switch to ISO mode of Free \PASCAL}
@z

Section 7.

@x l.174
@d othercases == others: {default for cases not listed explicitly}
@y
@d othercases == @+else {default for cases not listed explicitly}
@z

Section 8.

@x l.196
@!max_id_length=12; {long identifiers are chopped to this length, which must
@y
@!max_id_length=32; {long identifiers are chopped to this length, which must
@z

Section 12.

Both TL tangle and FPC tangle, i.e., the "original" Knuthian tangle, fail to
grok line 306 in a change:
@<Types...@>=
produces the error message '1 of the preceding lines failed to match'.

@x l.307
@!text_file=packed file of text_char;
@y
@z

Section 21.

@x l.525
rewrite(term_out,'TTY:'); {send |term_out| output to the terminal}
@y
assign(term_out,''); rewrite(term_out);
  {send |term_out| output to the terminal}
@z
 
Section 22.

@x l.532
@d update_terminal == break(term_out) {empty the terminal output buffer}
@y
@d update_terminal == flush(term_out) {empty the terminal output buffer}
@z
