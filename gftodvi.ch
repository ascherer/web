Changes for GFTODVI.WEB to compile it with Free Pascal.

Public domain.  Originally written by Andreas Scherer, 2021.

Limbo.

x
\pageno=\contentspagenumber \advance\pageno by 1
y
\pageno=\contentspagenumber \advance\pageno by 1
\let\maybe=\iffalse
z

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

Section 17.

@x l.394
begin update_terminal; reset(term_in);
@y
begin update_terminal; assign(term_in,''); reset(term_in);
@z

Section 45.

@x l.1628
@!byte_file=packed file of eight_bits; {files that contain binary data}
@y
@!byte_file=packed file of eight_bits; {files that contain binary data}
@!name_string=packed array[1..file_name_size] of char;
  {yet another \.{ISO} \PASCAL\ idiosynchracy}
@z

Section 47.

@x .l1644
known at compile time). The following code assumes that `|reset(f,s)|' and
`|rewrite(f,s)|' do this, when |f| is a file variable and |s| is a string
variable that specifies the file name.
@y
known at compile time). The following code assumes that `|assign(f,s)|'
followed by `|reset(f)|' or `|rewrite(f)|' respectively does this,
when |f| is a file variable and |s| is a string variable that specifies
the file name.  Note that we must trim off the whitespace at the right
that got appended by |pack_file_name|.  (Sadly enough, we can't simply
`|use sysutils|' in \.{ISO} mode, which we have to use because of the
non-local |goto| instruction.)
@z

@x l.1649
@p procedure open_gf_file; {prepares to read packed bytes in |gf_file|}
begin reset(gf_file,name_of_file);
@y
@p function trim(name_of_file: name_string): name_string;
var
  k: integer;
begin
  trim:='';
  for k:=1 to file_name_size do
    if name_of_file[k]<>' ' then
      trim[k]:=name_of_file[k];
end;
@#
procedure open_gf_file; {prepares to read packed bytes in |gf_file|}
begin assign(gf_file,trim(name_of_file)); reset(gf_file);
@z

@x l.1655
begin reset(tfm_file,name_of_file);
@y
begin assign(tfm_file,trim(name_of_file)); reset(tfm_file);
@z

@x l.1659
begin rewrite(dvi_file,name_of_file);
@y
begin assign(dvi_file,trim(name_of_file)); rewrite(dvi_file);
@z

Section 48.

@x l.1670
@!name_of_file:packed array[1..file_name_size] of char; {external file name}
@y
@!name_of_file:name_string; {external file name}
@z

Section 88.

@x l.2433
to place. The program here sets it to `\.{TeXfonts:}'.
@y
to place. The program here sets it to the empty string, i.e., font metric
files are expected to be found in the `local directory'.
@z

@x l.2438
l:=9; init_str9("T")("e")("X")("f")("o")("n")("t")("s")(":")(home_font_area);@/
@y
l:=0; init_str0(home_font_area);@/
@z

Section 160.

@x l.3523
@d lab_typ==prev {the type of a stored label (|"/"..."8"|)}
@y
@d lab_typ==prev {the type of a stored label (|"/".."8"|)}
@z

Section 219.

@x l.4341
final_end:end.
@y
final_end:write_ln;end.
@z
