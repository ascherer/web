Changes for TANGLE.WEB to compile itself with Free Pascal.

Public domain.  Originally written by Andreas Scherer, 2021.

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

@x l.304
@d last_text_char=255 {ordinal number of the largest element of |text_char|}

@<Types...@>=
@!text_file=packed file of text_char;
@y
@d last_text_char=255 {ordinal number of the largest element of |text_char|}
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

Section 187

@x l.3305
end {there are no other cases}
@y
end; {there are no other cases}
new_line
@z
