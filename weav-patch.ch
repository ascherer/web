Changes for WEAVE.WEB to compile with Free Pascal.

Here we modify WEAVE's convention and write '\input pwebmac' in the first line
of TeX output, because in general, we want to create PDF instead of DVI files.

And we fix one potential bug -- reported on the tex-k mailing list.

This file expects WEB-FPC.CH to be applied first.

Public domain.  Originally written by Andreas Scherer, 2021.

Limbo.

@x l.41
\def\({} % kludge for alphabetizing certain module names
@y
\def\({} % kludge for alphabetizing certain module names
\ifhint\else\ifpdf\sanitizecommand\max{max}\fi\fi
@z

Section 21.

@x l.526
on the Free \PASCAL\ system that was used decades after \.{TANGLE}'s initial
@y
on the Free \PASCAL\ system that was used decades after \.{WEAVE}'s initial
@z

Section 82.

@x l.1448 - Guard against get_line() when parsing a module name
@p procedure get_line; {inputs the next line}
label restart;
begin restart:if changing then
  @<Read from |change_file| and maybe turn off |changing|@>;
if not changing then
  begin @<Read from |web_file| and maybe turn on |changing|@>;
  if changing then goto restart;
  end;
loc:=0; buffer[limit]:=" ";
end;
@y
@p procedure get_line; {inputs the next line}
label restart;
begin
  if in_module_name then begin
    err_print('! Call to get_line when parsing a module name');
    loc:=limit; {Reset to the |'|'| at the end of the line}
  end else
begin restart:if changing then
  @<Read from |change_file| and maybe turn off |changing|@>;
if not changing then
  begin @<Read from |web_file| and maybe turn on |changing|@>;
  if changing then goto restart;
  end;
loc:=0; buffer[limit]:=" ";
end;
end;
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

@x l.2204
out_ptr:=1; out_line:=1; out_buf[1]:="c"; write(tex_file,'\input webma');
@y
out_ptr:=1; out_line:=1; out_buf[1]:="c"; write(tex_file,'\input pwebma');
@z

Section 127.

@x l.2234
preceded by another backslash. In the latter case, a |"%"| is output at
the break.
@y
preceded by another backslash or a \TeX\ comment marker. In the latter case, a
|'%'| is output at the break.
@z

@x l.2248
  if (d="\")and(out_buf[k-1]<>"\") then {in this case |k>1|}
@y
  if (d="\")and(out_buf[k-1]<>"\")and(out_buf[k-1]<>"%") then
    {in this case |k>1|}
@z

Section 172.

@x l.3337
@<Change |pp| to $\max(|scrap_base|,|pp+d|)$@>;
@y
@<Change |pp| to $\max(|scrap_base|,\,|pp+d|)$@>;
@z

Section 173.

@x l.3340
@ @<Change |pp| to $\max(|scrap_base|,|pp+d|)$@>=
@y
@ @<Change |pp| to $\max(|scrap_base|,\,|pp+d|)$@>=
@z

Section 202.

@x l.3913 - Guard against get_line() while parsing module name
@ @d cur_end==cur_state.end_field {current ending location in |tok_mem|}
@y
@ The module name Pascal parser re-uses the buffer and |get_next|
infrastructure. However we don't want |get_next| to cause the next source line
to be read with |get_line|, so we set a flag to trigger an error and recover if
this happens.

@d cur_end==cur_state.end_field {current ending location in |tok_mem|}
@z

@x l.3919
@!cur_state:output_state; {|cur_end|, |cur_tok|, |cur_mode|}
@y
@!in_module_name:boolean; {are we scanning a module name?}
@!cur_state:output_state; {|cur_end|, |cur_tok|, |cur_mode|}
@z

Section 203.

@x l.3925
@ @<Set init...@>=stat max_stack_ptr:=0;@+tats
@y
@ @<Set init...@>=@!in_module_name:=false;
stat max_stack_ptr:=0;@+tats
@z

Section 214.

@x l.4170 - Guard against get_line() while parsing module name
    buffer[limit]:="|"; output_Pascal;
@y
    buffer[limit]:="|";
    in_module_name:=true; output_Pascal; in_module_name:=false;
@z

Section 222.

@x l.4285 - Reject verbatim in TeX part
TeX_string,xref_roman,xref_wildcard,xref_typewriter,module_name:
  begin loc:=loc-2; next_control:=get_next; {skip to \.{@@>}}
  if next_control=TeX_string then
    err_print('! TeX string should be in Pascal text only');
@.TeX string should be...@>
  end;
@y
TeX_string,xref_roman,xref_wildcard,xref_typewriter,module_name,verbatim:
  begin loc:=loc-2; next_control:=get_next; {skip to \.{@@>}}
  if next_control=TeX_string then
    err_print('! TeX string should be in Pascal text only')
@.TeX string should be...@>
  else if next_control=verbatim then
    err_print('! Verbatim string should be in Pascal text only');
@.Verbatim string should be...@>
  end;
@z

Section 249.

@x l.4663
  begin if sort_ptr>max_sorts then overflow('sorting');
@y
  begin if sort_ptr=max_sorts then overflow('sorting');
@z
