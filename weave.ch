Changes for WEAVE.WEB to compile with Free Pascal.

Public domain.  Originally written by Andreas Scherer, 2021.

Section 4.

@x l.127
@{@&$C-,A+,D-@} {no range check, catch arithmetic overflow, no debug overhead}
@y
@{@&$mode ISO@} {switch to ISO mode of Free \PASCAL}
@z

Section 7.

@x l.177
@d othercases == others: {default for cases not listed explicitly}
@y
@d othercases == @+else {default for cases not listed explicitly}
@z

Section 12.

@x l.309
@d last_text_char=255 {ordinal number of the largest element of |text_char|}

@<Types...@>=
@!text_file=packed file of text_char;
@y
@d last_text_char=255 {ordinal number of the largest element of |text_char|}
@z

Section 21.

@x l.530
rewrite(term_out,'TTY:'); {send |term_out| output to the terminal}
@y
assign(term_out,''); rewrite(term_out);
  {send |term_out| output to the terminal}
@z

Section 22.

@x l.537
@d update_terminal == break(term_out) {empty the terminal output buffer}
@y
@d update_terminal == flush(term_out) {empty the terminal output buffer}
@z

Section 263.

@x
end {there are no other cases}
@y
end; {there are no other cases}
new_line
@z
