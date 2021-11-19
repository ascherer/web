Section 2.

@x l.88
@d othercases == others: {default for cases not listed explicitly}
@y
@d othercases == @+else {default for cases not listed explicitly}
@z

Section 3.

@x l.108
@p program GF_to_DVI(@!output);
@y
@p
@{@&$M@&O@&D@&E@,@,ISO@} {switch to ISO mode of Free \PASCAL}
program GF_to_DVI(@!output);
@z

Section 11.

@x l.233
@d last_text_char=255 {ordinal number of the largest element of |text_char|}

@<Types ...@>=
@!text_file=packed file of text_char;
@y
@d last_text_char=255 {ordinal number of the largest element of |text_char|}
@z

Section 16.

@x l.383
@d update_terminal == break(output) {empty the terminal output buffer}
@y
@d update_terminal == flush(output) {empty the terminal output buffer}
@z
