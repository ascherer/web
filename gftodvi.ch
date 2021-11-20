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
@!string=packed array[1..file_name_size] of char;
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
@p function trim(name_of_file: string): string;
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
begin assign(tfm_file,trim(name_of_file));
write_ln('Looking for TFM file "', trim(name_of_file), '"');
reset(tfm_file);
@z

@x l.1659
begin rewrite(dvi_file,name_of_file);
@y
begin assign(dvi_file,trim(name_of_file)); rewrite(dvi_file);
@z

@x
@ After the following procedure has been performed, there will be no
turning back; the fonts will have been firmly established in
\.{GFtoDVI}'s memory.

@<Declare the procedure called |load_fonts|@>=
procedure load_fonts;
label done,continue,found,not_found;
var @!f:internal_font_number;
@!i:four_quarters; {font information word}
@!j,@!k,@!v:integer; {registers for initializing font tables}
@!m:title_font..slant_font+area_code; {keyword found}
@!n1:0..longest_keyword; {buffered character being checked}
@!n2:pool_pointer; {pool character being checked}
begin if interaction then @<Get online special input@>;
fonts_not_loaded:=false;
for f:=title_font to logo_font do
 if (f<>slant_font)or(length(font_name[f])>0) then
  begin if length(font_area[f])=0 then font_area[f]:=home_font_area;
  pack_file_name(font_name[f],font_area[f],tfm_ext);
  open_tfm_file; read_font_info(f,font_at[f]);
  if font_area[f]=home_font_area then font_area[f]:=null_string;
  dvi_font_def(f); {put the font name in the \.{DVI} file}
  end;
@<Initialize global variables that depend on the font data@>;
end;
@y
@ After the following procedure has been performed, there will be no
turning back; the fonts will have been firmly established in
\.{GFtoDVI}'s memory.

@<Declare the procedure called |load_fonts|@>=
procedure load_fonts;
label done,continue,found,not_found;
var @!f:internal_font_number;
@!i:four_quarters; {font information word}
@!j,@!k,@!v:integer; {registers for initializing font tables}
@!m:title_font..slant_font+area_code; {keyword found}
@!n1:0..longest_keyword; {buffered character being checked}
@!n2:pool_pointer; {pool character being checked}
begin
 if interaction then @<Get online special input@>;
fonts_not_loaded:=false;
for f:=title_font to logo_font do
 if (f<>slant_font)or(length(font_name[f])>0) then
  begin if length(font_area[f])=0 then font_area[f]:=home_font_area;
  pack_file_name(font_name[f],font_area[f],tfm_ext);
  open_tfm_file;
@/jump_out; {we cool}
 read_font_info(f,font_at[f]);
  if font_area[f]=home_font_area then font_area[f]:=null_string;
  dvi_font_def(f); {put the font name in the \.{DVI} file}
  end;
@<Initialize global variables that depend on the font data@>;
end;
@z

@x
@p begin initialize; {get all variables initialized}
@<Initialize the strings@>;
start_gf; {open the input and output files}
@<Process the preamble@>;
cur_gf:=get_byte; init_str_ptr:=str_ptr;
loop@+  begin @<Initialize variables for the next character@>;
  while (cur_gf>=xxx1)and(cur_gf<=no_op) do @<Process a no-op command@>;
  if cur_gf=post then @<Finish the \.{DVI} file and |goto final_end|@>;
  if cur_gf<>boc then if cur_gf<>boc1 then abort('Missing boc!');
@.Missing boc@>
  @<Process a character@>;
  cur_gf:=get_byte; str_ptr:=init_str_ptr; pool_ptr:=str_start[str_ptr];
  end;
final_end:end.
@y
@p begin initialize; {get all variables initialized}
@<Initialize the strings@>;
start_gf; {open the input and output files}
@<Process the preamble@>;
cur_gf:=get_byte; init_str_ptr:=str_ptr;
loop@+  begin @<Initialize variables for the next character@>;
  while (cur_gf>=xxx1)and(cur_gf<=no_op) do @<Process a no-op command@>;
  if cur_gf=post then @<Finish the \.{DVI} file and |goto final_end|@>;
  if cur_gf<>boc then if cur_gf<>boc1 then abort('Missing boc!');
@.Missing boc@>
  @<Process a character@>;
@/jump_out; {we crashed in the preceding line}
  cur_gf:=get_byte; str_ptr:=init_str_ptr; pool_ptr:=str_start[str_ptr];
  end;
final_end:end.
@z
