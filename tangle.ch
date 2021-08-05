@x
@{@&$C-,A+,D-@} {no range check, catch arithmetic overflow, no debug overhead}
@y
@{@&$mode ISO@} {switch to ISO mode of Free \PASCAL}
@z

@x 
@d othercases == others: {default for cases not listed explicitly}
@y
@d othercases == @+else {default for cases not listed explicitly}
@z

@x
@!max_id_length=12; {long identifiers are chopped to this length, which must
@y
@!max_id_length=32; {long identifiers are chopped to this length, which must
@z

@x 
@<Types...@>=
@!text_file=packed file of text_char;

@y
@z

@x
@!term_out:text_file; {the terminal as an output file}
@y
@!term_out:text; {the terminal as an output file}
@z
 
@x
rewrite(term_out,'TTY:'); {send |term_out| output to the terminal}
@y
assign(term_out,''); rewrite(term_out);
  {send |term_out| output to the terminal}
@z
 
@x
@d update_terminal == break(term_out) {empty the terminal output buffer}
@y
@d update_terminal == flush(term_out) {empty the terminal output buffer}
@z
