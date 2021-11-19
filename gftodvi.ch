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

Section 47.

@x l.1650
begin reset(gf_file,name_of_file);
@y
begin
@/@{@&$I-@}@/
  assign(gf_file,name_of_file);
  reset(gf_file);
  {see \.{https://www.freepascal.org/docs-html/rtl/system/reset.html}}
@/@{@&$I+@}@/
  if (IoResult=0) then
    writeln('GF file found')
  else
    writeln('GF file not found: ', name_of_file);
@/jump_out; {file not found?}
@z

@x l.1655
begin reset(tfm_file,name_of_file);
@y
begin assign(tfm_file,name_of_file); reset(tfm_file);
@z

@x l.1659
begin rewrite(dvi_file,name_of_file);
@y
begin assign(dvi_file,name_of_file); rewrite(dvi_file);
@z

@x
@p procedure start_gf;
label found,done;
begin loop@+begin print_nl('GF file name: '); input_ln;
@.GF file name@>
  buf_ptr:=0; buffer[line_length]:="?";
  while buffer[buf_ptr]=" " do incr(buf_ptr);
  if buf_ptr<line_length then
    begin @<Scan the file name in the buffer@>;
    if cur_ext=null_string then cur_ext:=gf_ext;
    pack_file_name(cur_name,cur_area,cur_ext); open_gf_file;
    if not eof(gf_file) then goto found;
    print_nl('Oops... I can''t find file '); print(name_of_file);
@.Oops...@>
@.I can't find...@>
    end;
  end;
found:job_name:=cur_name; pack_file_name(job_name,null_string,dvi_ext);
open_dvi_file;
end;
@y
@p procedure start_gf;
label found,done;
begin loop@+begin print_nl('GF file name: '); input_ln;
@.GF file name@>
  buf_ptr:=0; buffer[line_length]:="?";
  while buffer[buf_ptr]=" " do incr(buf_ptr);
  if buf_ptr<line_length then
    begin @<Scan the file name in the buffer@>;
    if cur_ext=null_string then cur_ext:=gf_ext;
    pack_file_name(cur_name,cur_area,cur_ext); open_gf_file;
@/jump_out; {we crashed in |open_gf_file| already}
    if not eof(gf_file) then goto found;
    print_nl('Oops... I can''t find file '); print(name_of_file);
@.Oops...@>
@.I can't find...@>
    end;
  end;
found:job_name:=cur_name; pack_file_name(job_name,null_string,dvi_ext);
open_dvi_file;
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
@/jump_out; {we crashed in |start_gf| already}
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
@z
