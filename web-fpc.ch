Changes for TANGLE.WEB to compile itself with Free Pascal.

Also applicable for WEAVE.WEB (section and line numbers in []).

Public domain.  Originally written by Andreas Scherer, 2021.

Section 4.

@x l.118 [124]
there is arithmetic overflow.
@y
there is arithmetic overflow.

The Free \PASCAL\ Compiler is set in `ISO' mode and range checking is enabled.
@z

@x l.121 [127]
@{@&$C-,A+,D-@} {no range check, catch arithmetic overflow, no debug overhead}
@!debug @{@&$C+,D+@}@+ gubed {but turn everything on when debugging}
@y
@{@&$M@&O@&D@&E@,@,ISO@} {switch to ISO mode of Free \PASCAL}
@!debug @{@&$R+@}@+ gubed {turn range checking on when debugging}
@z

Section 7.

@x l.174 [177]
@d othercases == others: {default for cases not listed explicitly}
@y
@d othercases == @+else {default for cases not listed explicitly}
@z

Section 12.

Both TL tangle and FPC tangle, i.e., the "original" Knuthian tangle, fail to
grok line 306 as the first line in a change:
'at'x
@<Types...@>=
@!text_file=packed file of text_char;
'at'y
'at'z
produces the error message '1 of the preceding lines failed to match'.

With a little more context, the intended change succeeds:

@x l.304 [309]
@d last_text_char=255 {ordinal number of the largest element of |text_char|}

@<Types...@>=
@!text_file=packed file of text_char;
@y
@d last_text_char=255 {ordinal number of the largest element of |text_char|}
@z

Section 21.

@x l.521 [526]
on the \PASCAL\ system that was used in \.{TANGLE}'s initial development:
@y
on the Free \PASCAL\ system that was used decades after \.{TANGLE}'s initial
development:
@z

@x l.525 [530]
rewrite(term_out,'TTY:'); {send |term_out| output to the terminal}
@y
assign(term_out,''); rewrite(term_out);
  {send |term_out| output to the terminal}
@z

Section 22.

@x l.532 [537]
@d update_terminal == break(term_out) {empty the terminal output buffer}
@y
@d update_terminal == flush(term_out) {empty the terminal output buffer}
@z

Section 180 [259].

@x l.3206 [4903]
reset(term_in,'TTY:','/I'); {open |term_in| as the terminal, don't do a |get|}
@y
assign(term_in,''); reset(term_in);
  {open |term_in| as the terminal, don't do a |get|}
@z

Section 187 [263].

@x l.3305 [4883]
end {there are no other cases}
@y
end; {there are no other cases}
new_line
@z
