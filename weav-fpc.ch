Changes for WEAVE.WEB to compile with Free Pascal.

Public domain.  Originally written by Andreas Scherer, 2021.

Section 4.

@x l.124
there is arithmetic overflow.
@y
there is arithmetic overflow.

The Free \PASCAL\ Compiler is set in `ISO' mode and range checking is enabled.
@z

@x l.127
@{@&$C-,A+,D-@} {no range check, catch arithmetic overflow, no debug overhead}
@!debug @{@&$C+,D+@}@+ gubed {but turn everything on when debugging}
@y
@{@&$M@&O@&D@&E@,@,ISO@} {switch to ISO mode of Free \PASCAL}
@!debug @{@&$R+@}@+ gubed {turn range checking on when debugging}
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

@x l.526
on the \PASCAL\ system that was used in \.{TANGLE}'s initial development:
@y
on the Free \PASCAL\ system that was used decades after \.{WEAVE}'s initial
development:
@z

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

Section 124.

@x l.2199
`\.{\\input webmac}'.
@.\\input webmac@>
@.webmac@>
@y
`\.{\\input pwebmac}'.
@.\\input pwebmac@>
@.\\input webmac@>
@.pwebmac@>
@.webmac@>
@z

@x
out_ptr:=1; out_line:=1; out_buf[1]:="c"; write(tex_file,'\input webma');
@y
out_ptr:=1; out_line:=1; out_buf[1]:="c"; write(tex_file,'\input pwebma');
@z

Section 249.

@x l.4663
  begin if sort_ptr>max_sorts then overflow('sorting');
@y
  begin if sort_ptr=max_sorts then overflow('sorting');
@z

Section 263.

@x l.4883
end {there are no other cases}
@y
end; {there are no other cases}
new_line
@z
