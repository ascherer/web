@x [0.0] l.239
@s uint8_t int
@y
@s int8_t int
@s uint8_t int
@s UTF_code int
@s UTF8_code int
@z
@x [0.0] l.262
@s to   do
@y
@s to   do

\def\contentspagenumber{0}
\def\tocpages{3} % HiTeX has a long ToC
\pageno=\contentspagenumber \advance \pageno by \tocpages
@z

@x [1.4] l.464
  @<Initialize whatever \TeX\ might access@>;
@y
  @<Initialize whatever \TeX\ might access@>@;
@z

@x [3.22] l.748
static unsigned char @!name_of_file0[file_name_size+1]={0},
@y
static unsigned char @!name_of_file0[file_name_size+1]={0},@|
@z

@x [4.42] l.1147
@t\4@>@<Declare \Prote\ procedures for strings@>@;
@y
@#@<Declare \Prote\ procedures for strings@>@;
@z

@x [5.51] l.1310
@<Basic printing procedures@>=
#define @[put(F)@]    @[fwrite(&((F).d)@],@[sizeof((F).d),1,(F).f)@]@;
@y
@s sizeof x

@<Basic printing procedures@>=
#define @[put(F)@]    @[fwrite(&((F).d),sizeof((F).d),1,(F).f)@]
@z

@x [5.54] l.1392
  while (*s!=0) print_char(*s++);@+
@y
  while (*s!=0) print_char(*s++);
@z

@x [5.60] l.1518
@/do@+{dig[k]=n%10;n=n/10;incr(k);
}@+ while (!(n==0));
@y
do {dig[k]=n%10;n=n/10;incr(k);
} while (!(n==0));
@z

@x [5.62] l.1537
@/do@+{dig[k]=n%16;n=n/16;incr(k);
}@+ while (!(n==0));
@y
do {dig[k]=n%16;n=n/16;incr(k);
} while (!(n==0));
@z

@x [6.67] l.1614
|error;|\cr}}$$
@y
|error();|\cr}}$$
@z

@x [6.79] l.1833
  @<Delete \(c)|c-"0"| tokens and |goto resume|@>@;@+break;
@t\4\4@>@;
@y
  @<Delete \(c)|c-"0"| tokens and |goto resume|@>@;@+break;
@z

@x [6.84] l.1927
  @/do@+{decr(help_ptr);print(help_line[help_ptr]);print_ln();
  }@+ while (!(help_ptr==0));
@y
  do {decr(help_ptr);print(help_line[help_ptr]);print_ln();
  } while (!(help_ptr==0));
@z

@x [7.96] l.2097
typedef int32_t nonnegative_integer; /*$0\le x<2^{31}$*/
@y
typedef uint32_t nonnegative_integer; /*$0\le x<2^{31}$*/
@z

@x [7.98] l.2135
@/do@+{if (delta > unity) s=s+0100000-50000; /*round the last digit*/
print_char('0'+(s/unity));s=10*(s%unity);delta=delta*10;
}@+ while (!(s <= delta));
@y
do {if (delta > unity) s=s+0100000-50000; /*round the last digit*/
print_char('0'+(s/unity));s=10*(s%unity);delta=delta*10;
} while (!(s <= delta));
@z

@x [7.103] l.2254
@p @<Declare \Prote\ arithmetic routines@>@/
@y
@p @<Declare \Prote\ arithmetic routines@>@;
@z

@x [7.104] l.2288
@d float_constant(A) ((double)(A)) /*convert |int| constant to |double|*/
@y
@d float_constant(A) ((double)(A)) /*convert |int| constant to |double|*/
@#
@d perror e@&r@&r@&o@&r /* this is a \.{CWEB} coding trick: */
@f perror error /* `\&{perror}' will be equivalent to `\&{error}' */
@f error x /* but `|error|' will not be treated as a reserved word */
@z
@x [7.104] l.2294
#error  @=float type must have size 4@>
@y
#perror @=float type must have size 4@>
@z

@x [8.108] l.2404
typedef struct { @;@/
@y
@#
typedef struct {
@z
@x [8.108] l.2411
typedef struct { @;@/
@y
@#
typedef struct {
@z
@x [8.108] l.2417
typedef struct { @;@/
@y
@#
typedef struct {
@z
@x [8.108] l.2424
typedef struct {@+FILE *f;@+memory_word@,d;@+} word_file;
@y
@#
typedef struct {@+FILE *f;@+memory_word@,d;@+} word_file;
@z

@x [9.115] l.2567
link(p)=null; /*provide an oft-desired initialization of the new node*/
#ifdef @!STAT
incr(dyn_used);
#endif
@; /*maintain statistics*/
@y
link(p)=null; /*provide an oft-desired initialization of the new node*/
incr_dyn_used; /*maintain statistics*/
@z

@x [9.118] l.2606
  @/do@+{q=r;r=link(r);
#ifdef @!STAT
decr(dyn_used);
#endif
  }@+ while (!(r==null)); /*now |q| is the last node on the list*/
@y
  do {q=r;r=link(r);
    decr_dyn_used; /*maintain statistics*/
  } while (!(r==null)); /*now |q| is the last node on the list*/
@z

@x [9.120] l.2655
@/do@+{@<Try to allocate within node |p| and its physical successors, and
@y
do {@<Try to allocate within node |p| and its physical successors, and
@z
@x [9.120] l.2659
}@+ while (!(p==rover)); /*repeat until the whole list has been traversed*/
@y
} while (!(p==rover)); /*repeat until the whole list has been traversed*/
@z

@x [10.129] l.2828
In order to make sure that the |character| code fits in a quarterword,
@y
In order to ensure that the |character| code fits in a quarterword,
@z

@x [10.140] l.3003
If |pre_break(p)==null|, the |ex_hyphen_penalty| will be charged for this
break.  Otherwise the |hyphen_penalty| will be charged.  The texts will
@y
If |pre_break(p)==null|, |ex_hyphen_penalty| will be charged for this
break.  Otherwise |hyphen_penalty| will be charged.  The texts will
@z

@x [10.147] l.3152
q=@<Current |mem| equivalent of glue parameter number |n|@>@t@>;
@y
q=@[@<Current |mem| equivalent of glue parameter number |n|@>@];
@z

@x [10.150] l.3192
@d kern_node 11 /*|type| of a kern node*/
@d explicit 1 /*|subtype| of kern nodes from \.{\\kern} and \.{\\/}*/
@y
@s explicit true

@d kern_node 11 /*|type| of a kern node*/
@d explicit 1 /*|subtype| of kern nodes from \.{\\kern} and \.{\\/}*/
@z

@x [11.160] l.3353
@t\hskip10pt@>static bool @!was_free0[mem_max-mem_min+1],
@y
static bool @!was_free0[mem_max-mem_min+1],
@z
@x [11.160] l.3356
@t\hskip10pt@>static pointer @!was_mem_end, @!was_lo_max, @!was_hi_min;
@y
static pointer @!was_mem_end, @!was_lo_max, @!was_hi_min;
@z
@x [11.160] l.3358
@t\hskip10pt@>static bool @!panicking; /*do we want to check memory constantly?*/
@y
static bool @!panicking; /*do we want to check memory constantly?*/
@z

@x [11.164] l.3408
@/do@+{if ((p >= lo_mem_max)||(p < mem_min)) clobbered=true;
@y
do {if ((p >= lo_mem_max)||(p < mem_min)) clobbered=true;
@z
@x [11.164] l.3425
}@+ while (!(p==rover));
@y
} while (!(p==rover));
@z

@x [12.169] l.3520
        else@<Print the font identifier for |font(p)|@>;
@y
        else@<Print the font identifier for |font(p)|@>@;
@z
@x [12.169] l.3529
  else@<Print a short indication of the contents of node |p|@>;
@y
  else@<Print a short indication of the contents of node |p|@>@;
@z

@x [12.171] l.3562
  else@<Print the font identifier for |font(p)|@>;
@y
  else@<Print the font identifier for |font(p)|@>@;
@z

@x [12.178] l.3702
  @t\4@>@<Cases of |show_node_list| that arise in mlists only@>@;
@y
  @/@t\4@>@<Cases of |show_node_list| that arise in mlists only@>@;
@z

@x [12.193] l.3863
{@+@<Assign the values |depth_threshold:=show_box_depth| and |breadth_max:=show_box_breadth|@>;
@y
{@+@<Assign the values |depth_threshold=show_box_depth| and |breadth_max=show_box_breadth|@>;
@z

@x [13.196] l.3901
fast_delete_glue_ref(p)
@y
fast_delete_glue_ref(p)@;
@z

@x [13.197] l.3942
    @t\4@>@<Cases of |flush_node_list| that arise in mlists only@>@;
@y
    @/@t\4@>@<Cases of |flush_node_list| that arise in mlists only@>@;
@z

@x [17.226] l.4851
  @/@<Cases of |assign_toks| for |print_cmd_chr|@>@/
@y
  @/@t\4@>@<Cases of |assign_toks| for |print_cmd_chr|@>@;
@z

@x [17.231] l.5119
@<Assign the values |depth_threshold:=show_box_depth|...@>=
@y
@<Assign the values |depth_threshold=show_box_depth|...@>=
@z

@x [17.232] l.5184
@/@<Cases for |print_param|@>@/
@y
@/@t\4@>@<Cases for |print_param|@>@;
@z

@x [17.236] l.5339
@p static void fix_date_and_time(void)
@y
@s tm int
@p static void fix_date_and_time(void)
@z

@x [17.247] l.5542
@p @t\4@>@<Declare the procedure called |print_cmd_chr|@>@;@/
#ifdef @!STAT
@y
@p @<Declare the procedure called |print_cmd_chr|@>@;
#ifdef @!STAT
@+@t}\6\4\4{@>
@z

@x [18.255] l.5668
  {@+@/do@+{if (hash_is_full) overflow("hash size", hash_size);
@y
  {@+do {if (hash_is_full) overflow("hash size", hash_size);
@z
@x [18.255] l.5671
  }@+ while (!(text(hash_used)==0)); /*search for an empty location in |hash|*/
@y
  } while (!(text(hash_used)==0)); /*search for an empty location in |hash|*/
@z

@x [18.261] l.5892
@/@<Cases of |expandafter| for |print_cmd_chr|@>@/
@y
@/@t\4@>@<Cases of |expandafter| for |print_cmd_chr|@>@;
@z
@x [18.261] l.5912
case read_to_cs: if (chr_code==0) print_esc("read")
  @<Cases of |read| for |print_cmd_chr|@>;@+break;
@y
case read_to_cs: if (chr_code==0) print_esc("read");
  else @<Cases of |read| for |print_cmd_chr|@>;@+break;
@z
@x [18.261] l.5919
  @<Cases of |set_shape| for |print_cmd_chr|@>@;@/
@y
  @/@t\4@>@<Cases of |set_shape| for |print_cmd_chr|@>@;
@z
@x [18.261] l.5921
case the: if (chr_code==0) print_esc("the")
  @<Cases of |the| for |print_cmd_chr|@>;@+break;
@y
case the: if (chr_code==0) print_esc("the");
  else @<Cases of |the| for |print_cmd_chr|@>;@+break;
@z

@x [18.262] l.5943
printn_esc(font_id_text(font(p)))
@y
printn_esc(font_id_text(font(p)));
@z

@x [19.263] l.5969
of the current group, when it should be
@y
of the current group and
@z

@x [19.270] l.6128
@/@<Cases for |eq_destroy|@>@/
@y
@/@t\4@>@<Cases for |eq_destroy|@>@;
@z

@x [19.272] l.6166
#define  assign_trace(A, B) ;
@y
#define  assign_trace(A, B) @[@];
@z

@x [21.293] l.6678
@t\4@>@<Cases of |print_cmd_chr| for symbolic printing of primitives@>@/
@y
@/@t\4@>@<Cases of |print_cmd_chr| for symbolic printing of primitives@>@;
@z

@x [23.326] l.7424
first=buf_size;@/do@+{buffer[first]=0;decr(first);}@+ while (!(first==0));
@y
first=buf_size; do {buffer[first]=0;decr(first);} while (!(first==0));
@z

@x [24.328] l.7458
to the appearance of \.{\\par}; we must set |cur_cs:=par_loc|
@y
to the appearance of \.{\\par}; we must set |cur_cs=par_loc|
@z

@x [24.339] l.7629
any_state_plus(escape): @<Scan a control sequence and set |state:=skip_blanks|
@y
any_state_plus(escape): @<Scan a control sequence and set |state=skip_blanks|
@z
@x [24.339] l.7632
and set |state:=mid_line|@>@;@+break;
@y
and set |state=mid_line|@>@;@+break;
@z
@x [24.339] l.7634
like~\.{\^\^A} or~\.{\^\^df}, then |goto reswitch|, otherwise set |state:=mid_line|@>@;@+break;
@y
like~\.{\^\^A} or~\.{\^\^df}, then |goto reswitch|, otherwise set |state=mid_line|@>@;@+break;
@z
@x [24.339] l.7636
@t\4@>@<Handle situations involving spaces, braces, changes of state@>@;
@y
@/@t\4@>@<Handle situations involving spaces, braces, changes of state@>@;
@z

@x [24.353] l.7852
@/do@+{j=k; k=utf8_get_cur_chr(buffer,k,limit);
@y
@/do {j=k; k=utf8_get_cur_chr(buffer,k,limit);
@z
@x [24.353] l.7854
}@+ while (!((cat!=letter)||(k > limit)));
@y
}@+ while (!((cat!=letter)||(k > limit)));
@z

@x [25.364] l.8099
@/@<Cases for |expandafter|@>@/
@y
@/@t\4@>@<Cases for |expandafter|@>@;
@z

@x [25.366] l.8121
necessary to insert a special `|dont_expand|' marker into \TeX's reading
@y
necessary to insert a special marker `|dont_expand|' into \TeX's reading
@z

@x [25.369] l.8163
@/do@+{get_x_token();
if (cur_cs==0) store_new_token(cur_tok);
}@+ while (!(cur_cs!=0));
@y
do {get_x_token();
if (cur_cs==0) store_new_token(cur_tok);
} while (!(cur_cs!=0));
@z

@x [25.374] l.8226
case input: if (chr_code==0) print_esc("input")
  @/@<Cases of |input| for |print_cmd_chr|@>;@/
@y
case input: if (chr_code==0) print_esc("input");
  else @<Cases of |input| for |print_cmd_chr|@>@;
@z

@x [25.375] l.8231
if (cur_chr==1) force_eof=true
@/@<Cases for |input|@>;@/
else if (name_in_progress) insert_relax();
else start_input()
@y
if (cur_chr==1) force_eof=true;
else @<Cases for |input|@>@;
else if (name_in_progress) insert_relax();
else start_input();
@z

@x [25.388] l.8444
@/do@+{link(temp_head)=null;
@y
do {link(temp_head)=null;
@z
@x [25.388] l.8449
@<Scan a parameter until its delimiter string has been found; or, if |s=null|,
@y
@<Scan a parameter until its delimiter string has been found; or, if |s==null|,
@z
@x [25.388] l.8452
}@+ while (!(info(r)==end_match_token));
@y
} while (!(info(r)==end_match_token));
@z

@x [25.389] l.8466
resume| if a partial match is still in effect; but abort if |s=null|@>;
@y
resume| if a partial match is still in effect; but abort if |s==null|@>;
@z

@x [25.394] l.8552
    @/do@+{store_new_token(info(t));incr(m);u=link(t);v=s;
@y
    do {store_new_token(info(t));incr(m);u=link(t);v=s;
@z
@x [25.394] l.8561
    }@+ while (!(t==r));
@y
    } while (!(t==r));
@z

@x [26.401] l.8653
@/do@+{get_x_token();
}@+ while (!((cur_cmd!=spacer)&&(cur_cmd!=relax)))
@y
do get_x_token(); while (!((cur_cmd!=spacer)&&(cur_cmd!=relax)))
@z

@x [26.403] l.8665
@/do@+{get_x_token();
}@+ while (!(cur_cmd!=spacer))
@y
do get_x_token(); while (!(cur_cmd!=spacer))
@z

@x [26.406] l.8725
@t\4\4@>@<Declare procedures that scan restricted classes of integers@>@;
@t\4\4@>@<Declare \eTeX\ procedures for scanning@>@;
@t\4\4@>@<Declare procedures that scan font-related stuff@>@;
@y
@#@<Declare procedures that scan restricted classes of integers@>@;
@<Declare \eTeX\ procedures for scanning@>@;
@<Declare procedures that scan font-related stuff@>@;
@z

@x [26.408] l.8770
and `\.{\\muskip}' all having |internal_register| as their command code; they are
@y
and `\.{\\muskip}' all having command code |internal_register|; they are
@z

@x [26.410] l.8808
identifier, provided that |level=tok_val|@>@;@+break;
@y
identifier, provided that |level==tok_val|@>@;@+break;
@z

@x [26.414] l.8930
case set_page_int: if (chr_code==0) print_esc("deadcycles")
@/@<Cases of |set_page_int| for |print_cmd_chr|@>;@/
@+else print_esc("insertpenalties");@+break;
@y
case set_page_int: if (chr_code==0) print_esc("deadcycles");
else @<Cases of |set_page_int| for |print_cmd_chr|@>@;
else print_esc("insertpenalties");@+break;
@z
@x [26.414] l.8941
  @/@<Cases of |last_item| for |print_cmd_chr|@>@/
@y
  @/@t\4@>@<Cases of |last_item| for |print_cmd_chr|@>@;
@z

@x [26.416] l.8963
{@+if (m==0) cur_val=dead_cycles
@/@<Cases for `Fetch the |dead_cycles| or the |insert_penalties|'@>;@/
@y
{@+if (m==0) cur_val=dead_cycles;
else @<Cases for `Fetch the |dead_cycles| or the |insert_penalties|'@>@;
@z

@x [26.421] l.9015
  @/@<Cases for fetching a dimension value@>@/
@y
  @/@t\4@>@<Cases for fetching a dimension value@>@;
@z
@x [26.421] l.9022
  @/@<Cases for fetching an integer value@>@/
@y
  @/@t\4@>@<Cases for fetching an integer value@>@;
@z

@x [26.438] l.9247
@/do@+{@<Get the next non-blank non-call token@>;
@y
do {@<Get the next non-blank non-call token@>;
@z
@x [26.438] l.9251
}@+ while (!(cur_tok!=other_token+'+'))
@y
} while (!(cur_tok!=other_token+'+'));
@z

@x [26.445] l.9388
  {@+@<Get the next non-blank non-sign...@>;
@y
  {@+@<Get the next non-blank non-sign...@>@;
@z

@x [26.458] l.9627
mu=(level==mu_val);@<Get the next non-blank non-sign...@>;
@y
mu=(level==mu_val);@<Get the next non-blank non-sign...@>@;
@z

@x [27.466] l.9833
  @/@<Cases of |convert| for |print_cmd_chr|@>@/
@y
  @/@t\4@>@<Cases of |convert| for |print_cmd_chr|@>@;
@z

@x [27.468] l.9885
@/@<Cases of `Scan the argument for command |c|'@>@/
@y
@/@t\4@>@<Cases of `Scan the argument for command |c|'@>@;
@z

@x [27.469] l.9904
@/@<Cases of `Print the result of command |c|'@>@/
@y
@/@t\4@>@<Cases of `Print the result of command |c|'@>@;
@z

@x [27.470] l.9950
@t\4@>@<Declare \Prote\ procedures for token lists@>@;@/
@y
@#@<Declare \Prote\ procedures for token lists@>@;
@z

@x [27.479] l.10080
@/do@+{@<Input and store tokens from the next line of the file@>;
}@+ while (!(align_state==1000000));
@y
do @<Input and store tokens from the next line of the file@>@;
while (!(align_state==1000000));
@z

@x [27.480] l.10086
begin_file_reading();name=m+1;
@y
{begin_file_reading();name=m+1;
@z
@x [27.480] l.10099
    {@+@/do@+{get_token();}@+ while (!(cur_tok==0));
@y
    {@+do get_token(); while (!(cur_tok==0));
@z
@x [27.480] l.10104
done: end_file_reading()
@y
done: end_file_reading();}
@z

@x [28.485] l.10222
  @/@<Cases of |if_test| for |print_cmd_chr|@>@/
@y
  @/@t\4@>@<Cases of |if_test| for |print_cmd_chr|@>@;
@z

@x [28.498] l.10403
@/@<Cases for |conditional|@>@/
@y
@/@t\4@>@<Cases for |conditional|@>@;
@z

@x [28.503] l.10449
\.{\\if\\noexpand} or following \.{\\ifcat\\noexpand}. We use the fact that
@y
\.{\\if\\noexpand} or \.{\\ifcat\\noexpand}. We use the fact that
@z

@x [29.515] l.10693
into the |name_of_file| value that is used to open files. The present code
@y
into the value |name_of_file| that is used to open files. The present code
@z

@x [29.521] l.10768
#ifdef @!INIT
@y
#ifdef @!INIT
@+@t}\6\4\4{@>
@z

@x [30.562] l.11699
@ The preliminary settings of the index-offset variables |char_base|,
@y
@ The preliminary values of the index-offset variables |char_base|,
@z

@x [30.574] l.11944
@<Issue an error message if |cur_val=fmem_ptr|@>;
@y
@<Issue an error message if |cur_val==fmem_ptr|@>;
@z

@x [30.575] l.11947
@ @<Issue an error message if |cur_val=fmem_ptr|@>=
@y
@ @<Issue an error message if |cur_val==fmem_ptr|@>=
@z

@x [30.576] l.11959
{@+@/do@+{if (fmem_ptr==font_mem_size)
@y
{@+do {if (fmem_ptr==font_mem_size)
@z
@x [30.576] l.11963
}@+ while (!(n==font_params[f]));
@y
} while (!(n==font_params[f]));
@z

@x [32.605] l.12363
@p static void append_to_vlist(pointer @!b)@t\2\2@>@/
{ bool height_known;@t\1@>@/
@y
@p static void append_to_vlist(pointer @!b)
{ @+bool height_known;
@z
@x [32.605] l.12368
  {@+scaled d;@t\1@> /*deficiency of space between baselines*/
@y
  {@+scaled d; /*deficiency of space between baselines*/
@z
@x [32.605] l.12370
  {@+d=width(baseline_skip)-prev_depth-height(b);
@y
  d=width(baseline_skip)-prev_depth-height(b);
@z
@x [32.605] l.12376
  }@+
} @+  else @+if (prev_depth<=unknown_depth || prev_depth>ignore_depth )@t\2@>@/
@y
} @+  else @+if (prev_depth<=unknown_depth || prev_depth>ignore_depth ) @/
@z

@x [34.626] l.12890
@d mathsy_end(A) fam_fnt(2+A)]].sc
@d mathsy(A) font_info[A+param_base[mathsy_end
@y
@d mathsy_end(A) @[fam_fnt(2+A)]].sc@]
@d mathsy(A) @[font_info[A+param_base[mathsy_end@]
@z

@x [34.633] l.13018
  @/do@+{z=z-16;g=fam_fnt(z);
@y
  do {z=z-16;g=fam_fnt(z);
@z
@x [34.633] l.13023
  }@+ while (!(z < 16));
@y
  } while (!(z < 16));
@z

@x [35.654] l.13433
@t\4@>@<Cases for noads that can follow a |bin_noad|@>@;
@t\4@>@<Cases for nodes that can appear in an mlist, after which we |goto
@y
@/@t\4@>@<Cases for noads that can follow a |bin_noad|@>@;
@/@t\4@>@<Cases for nodes that can appear in an mlist, after which we |goto
@z

@x [35.660] l.13522
by procedures with names
like |make_fraction|, |make_radical|, etc. To illustrate
@y
by procedures
like |make_fraction|, |make_radical|, etc. To illustrate
@z

@x [35.693] l.14194
  @/do@+{p=link(p);
  }@+ while (!(link(p)==null));
@y
  do p=link(p); while (!(link(p)==null));
@z

@x [36.695] l.14336
Their |glue_sign| and |glue_order| are pre-empted as well, since it
@y
And their fields |glue_sign| and |glue_order| are pre-empted as well, since it
@z

@x [36.700] l.14420
@p @t\4@>@<Declare the procedure called |get_preamble_token|@>@t@>@/
@y
@p @<Declare the procedure called |get_preamble_token|@>@;
@z

@x [36.711] l.14608
@/do@+{get_x_or_protected();
}@+ while (!(cur_cmd!=spacer));
@y
do get_x_or_protected(); while (!(cur_cmd!=spacer));
@z

@x [36.712] l.14628
@p @t\4@>@<Declare the procedure called |init_span|@>@t@>@/
@y
@p @<Declare the procedure called |init_span|@>@;
@z

@x [36.717] l.14721
@/do@+{get_x_or_protected();
}@+ while (!(cur_cmd!=spacer));
@y
do get_x_or_protected(); while (!(cur_cmd!=spacer));
@z

@x [36.724] l.14816
@/do@+{incr(n);q=link(link(q));
}@+ while (!(q==cur_align));
@y
do {incr(n);q=link(link(q));
} while (!(q==cur_align));
@z

@x [36.726] l.14874
the alignrecords to dummy unset boxes@>;
@y
the alignrecords to dummy unset boxes@>@;
@z
@x [36.726] l.14876
{ @<Handle an alignment that depends on |hsize| or |vsize|@>@;
  pop_alignment();
@y
{ /*Handle an alignment that depends on |hsize| or |vsize|*/
 pointer r=get_node(align_node_size);
 save_ptr=save_ptr-2;pack_begin_line=-mode_line;

 type(r)=whatsit_node; subtype(r)=align_node;
 align_preamble(r)=preamble;
 align_list(r)=link(head);
 align_extent(r)=new_xdimen(saved(1),saved_hfactor(1),saved_vfactor(1));
 align_m(r)= saved(0);
 align_v(r)= (mode!=-vmode);
 link(head)=r; tail=r;
 pack_begin_line=0;
 pop_alignment();
@z
@x [36.726] l.14881
  and let |p| point to this prototype box@>;
  @<Set the glue in all the unset boxes of the current list@>;
  flush_node_list(p);pop_alignment();
@y
  and let |p| point to this prototype box@>@;
  @<Set the glue in all the unset boxes of the current list@>@;
  flush_node_list(p);pop_alignment();
@z
@x [36.726] l.14885
@<Insert the \(c)current list into its environment@>;
} @/
@y
@<Insert the \(c)current list into its environment@>;
} @#
@z

@x [36.727] l.14888
@ @<Handle an alignment that depends on |hsize| or |vsize|@>=
 pointer r=get_node(align_node_size);
 save_ptr=save_ptr-2;pack_begin_line=-mode_line;

 type(r)=whatsit_node; subtype(r)=align_node;
 align_preamble(r)=preamble;
 align_list(r)=link(head);
 align_extent(r)=new_xdimen(saved(1),saved_hfactor(1),saved_vfactor(1));
 align_m(r)= saved(0);
 align_v(r)= (mode!=-vmode);
 link(head)=r; tail=r;
 pack_begin_line=0;
@y
@z

@x [36.728] l.14926
@/do@+{flush_list(u_part(q));flush_list(v_part(q));
@y
do {flush_list(u_part(q));flush_list(v_part(q));
@z
@x [36.728] l.14940
}@+ while (!(q==null))
@y
} while (!(q==null));
@z

@x [36.730] l.14952
|@/do@+{| loop is that we want to dispense with node |r|, in |q|'s list,
@y
|do {| loop is that we want to dispense with node |r|, in |q|'s list,
@z
@x [36.730] l.14960
@/do@+{width(r)=width(r)-t;u=info(r);
@y
do {width(r)=width(r)-t;u=info(r);
@z
@x [36.730] l.14971
}@+ while (!(r==end_span));
@y
} while (!(r==end_span));
@z

@x [36.731] l.14988
  @/do@+{height(q)=width(q);width(q)=0;q=link(link(q));
  }@+ while (!(q==null));
@y
  do {height(q)=width(q);width(q)=0;q=link(link(q));
  } while (!(q==null));
@z
@x [36.731] l.14992
  @/do@+{width(q)=height(q);height(q)=0;q=link(link(q));
  }@+ while (!(q==null));
@y
  do {width(q)=height(q);height(q)=0;q=link(link(q));
  } while (!(q==null));
@z

@x [36.734] l.15031
@/do@+{@<Set the glue in node |r| and change it from an unset node@>;
r=link(link(r));s=link(link(s));
}@+ while (!(r==null));
@y
do {@<Set the glue in node |r| and change it from an unset node@>;
r=link(link(r));s=link(link(s));
} while (!(r==null));
@z

@x [37.750] l.15365
@d do_all_six(A) A(1);A(2);A(3);A(4);A(5);A(6)
@y
@d do_all_six(A) A(1);A(2);A(3);A(4);A(5);A(6)@;
@z

@x [37.756] l.15523
feasible breaks in that class; then |return| if |r=last_active|, otherwise
@y
feasible breaks in that class; then |return| if |r==last_active|, otherwise
@z

@x [37.763] l.15625
@ It is not necessary to create new active nodes having |minimal_demerits|
greater than
|minimum_demerits+abs(adj_demerits)|, since such active nodes will never
@y
@ It is not necessary to create new active nodes with |minimal_demerits|
greater than
|minimum_demerits| ${}+|abs(adj_demerits)|$, since such active nodes will never
@z

@x [37.779] l.15939
subarray |cur_active_width[2 dotdot 5]|, in units of points, fil, fill, and filll.
@y
array |cur_active_width| at positions |[2 dotdot 5]|, in units of points, fil, fill, and filll.
@z

@x [37.783] l.16015
  @<Print the list between |printed_node| and |cur_p|, then set |printed_node:=cur_p|@>;
@y
  @<Print the list between |printed_node| and |cur_p|, then set |printed_node=cur_p|@>;
@z

@x [38.794] l.16276
@/do@+{f=font(cur_p);
@y
do {f=font(cur_p);
@z
@x [38.794] l.16279
}@+ while (!(!is_char_node(cur_p)));
@y
} while (!(!is_char_node(cur_p)));
@z

@x [38.796] l.16304
else{@+@/do@+{@<Add the width of node |s| to |disc_width|@>;
    s=link(s);
  }@+ while (!(s==null));
@y
else{@+do {@<Add the width of node |s| to |disc_width|@>;
    s=link(s);
  } while (!(s==null));
@z

@x [38.801] l.16384
@/do@+{if (type(r)!=delta_node) if (total_demerits(r) < fewest_demerits)
@y
do {if (type(r)!=delta_node) if (total_demerits(r) < fewest_demerits)
@z
@x [38.801] l.16388
}@+ while (!(r==last_active));
@y
} while (!(r==last_active));
@z

@x [38.802] l.16398
@/do@+{if (type(r)!=delta_node)
@y
do {if (type(r)!=delta_node)
@z
@x [38.802] l.16411
}@+ while (!(r==last_active));
@y
} while (!(r==last_active));
@z

@x [38.803] l.16415
@ Once the best sequence of breakpoints has been found (hurray), we call on the
@y
@ Once the best sequence of breakpoints has been found, we call on the
@z

@x [38.804] l.16446
first breakpoint@>;
@y
first breakpoint@>@;
@z
@x [38.804] l.16449
@/do@+{@<Justify the line ending at breakpoint |cur_p|, and append it to the
@y
do {@<Justify the line ending at breakpoint |cur_p|, and append it to the
@z
@x [38.804] l.16454
}@+ while (!(cur_p==null));
@y
} while (!(cur_p==null));
@z

@x [38.805] l.16469
@/do@+{r=q;q=prev_break(q);next_break(r)=cur_p;cur_p=r;
}@+ while (!(q==null))
@y
do {r=q;q=prev_break(q);next_break(r)=cur_p;cur_p=r;
} while (!(q==null));
@z

@x [38.808] l.16526
      @<Change discretionary to compulsory and set |disc_break:=true|@>@;
@y
      @<Change discretionary to compulsory and set |disc_break=true|@>@;
@z

@x [38.817] l.16633
from the |inter_line_penalty| parameter, and from lines that end at
@y
from the parameter |inter_line_penalty|, and from lines that end at
@z

@x [39.821] l.16755
static void hyphenate_word(void)@t\2\2@>@/
{ pointer @!q, @!s, @!prev_s;@t\1@> /*miscellaneous nodes of temporary interest*/
@y
static void hyphenate_word(void)
{ @+pointer @!q, @!s, @!prev_s; /*miscellaneous nodes of temporary interest*/
@z

@x [40.840] l.17195
@/do@+{l=j;j=reconstitute(j, hn, bchar, qi(hyf_char))+1;
@y
do {l=j;j=reconstitute(j, hn, bchar, qi(hyf_char))+1;
@z
@x [40.840] l.17205
word, and continue to develop both branches until they become equivalent@>;
}@+ while (!(j > hn));
@y
word, and continue to develop both branches until they become equivalent@>@;
} while (!(j > hn));
@z

@x [40.841] l.17220
@/do@+{r=get_node(small_node_size);
@y
do {r=get_node(small_node_size);
@z
@x [40.841] l.17231
}@+ while (!(!odd(hyf[j-1])))
@y
} while (!(!odd(hyf[j-1])));
@z

@x [40.843] l.17263
  {@+@/do@+{l=reconstitute(l, hn, bchar, non_char)+1;
@y
  {@+do {l=reconstitute(l, hn, bchar, non_char)+1;
@z
@x [40.843] l.17273
  }@+ while (!(l >= j));
@y
  } while (!(l >= j));
@z

@x [41.851] l.17391
@/do@+{v=v+op_start[cur_lang];i=l-hyf_distance[v];
@y
do {v=v+op_start[cur_lang];i=l-hyf_distance[v];
@z
@x [41.851] l.17394
}@+ while (!(v==min_quarterword));
@y
} while (!(v==min_quarterword));
@z

@x [41.858] l.17459
  @/do@+{if (str_pool[u] < hc[j]) goto not_found;
@y
  @/do {if (str_pool[u] < hc[j]) goto not_found;
@z
@x [41.858] l.17462
  }@+ while (!(j > hn));
@y
  } while (!(j > hn));
@z

@x [41.868] l.17588
@/do@+{if (str_pool[u] < str_pool[v]) goto found;
@y
do {if (str_pool[u] < str_pool[v]) goto found;
@z
@x [41.868] l.17591
}@+ while (!(u==str_start[k+1]));
@y
} while (!(u==str_start[k+1]));
@z

@x [42.870] l.17616
problem of creating the |hyf_distance|, |hyf_num|, and |hyf_next| arrays.
@y
problem of creating the arrays |hyf_distance|, |hyf_num|, and |hyf_next|.
@z

@x [42.874] l.17737
@t\hskip10pt@>static quarterword @!trie_o[trie_size+1];
@y
static quarterword @!trie_o[trie_size+1];
@z
@x [42.874] l.17739
@t\hskip10pt@>static trie_pointer @!trie_l[trie_size+1];
@y
static trie_pointer @!trie_l[trie_size+1];
@z
@x [42.874] l.17741
@t\hskip10pt@>static trie_pointer @!trie_r[trie_size+1];
@y
static trie_pointer @!trie_r[trie_size+1];
@z
@x [42.874] l.17743
@t\hskip10pt@>static trie_pointer @!trie_ptr; /*the number of nodes in the trie*/
@y
static trie_pointer @!trie_ptr; /*the number of nodes in the trie*/
@z
@x [42.874] l.17744
@t\hskip10pt@>static trie_pointer @!trie_hash[trie_size+1];
@y
static trie_pointer @!trie_hash[trie_size+1];
@z

@x [42.877] l.17828
@t\hskip10pt@>static trie_pointer @!trie_max; /*largest location used in |trie|*/
@y
static trie_pointer @!trie_max; /*largest location used in |trie|*/
@z
@x [42.877] l.17829
@t\hskip10pt@>static bool @!trie_not_ready; /*is the trie still in linked form?*/
@y
static bool @!trie_not_ready; /*is the trie still in linked form?*/
@z

@x [42.880] l.17881
found: @<Pack the family into |trie| relative to |h|@>;
@y
found: @<Pack the family into |trie| relative to |h|@>@;
@z

@x [42.881] l.17892
  @/do@+{incr(trie_max);trie_taken[trie_max]=false;
  trie_link(trie_max)=trie_max+1;trie_back(trie_max)=trie_max-1;
  }@+ while (!(trie_max==h+max_hyph_char));
@y
  do {incr(trie_max);trie_taken[trie_max]=false;
  trie_link(trie_max)=trie_max+1;trie_back(trie_max)=trie_max-1;
  } while (!(trie_max==h+max_hyph_char));
@z

@x [42.883] l.17907
@/do@+{
@y
@/do {
@z
@x [42.883] l.17912
  @/do@+{trie_min[l]=r;incr(l);

  }@+ while (!(l==ll));
@y
  do {trie_min[l]=r;incr(l);
  } while (!(l==ll));
@z
@x [42.883] l.17917
}@+ while (!(q==0))
@y
} while (!(q==0));
@z

@x [42.884] l.17925
@/do@+{q=trie_l[p];
@y
do {q=trie_l[p];
@z
@x [42.884] l.17930
}@+ while (!(p==0));
@y
} while (!(p==0));
@z

@x [42.885] l.17948
  @/do@+{s=trie_link(r);trie[r]=h;r=s;
  }@+ while (!(r > trie_max));
@y
  do {s=trie_link(r);trie[r]=h;r=s;
  } while (!(r > trie_max));
@z

@x [42.886] l.17965
@/do@+{q=trie_l[p];c=trie_c[p];
@y
@/do {q=trie_l[p];c=trie_c[p];
@z
@x [42.886] l.17969
}@+ while (!(p==0));
@y
} while (!(p==0));
@z

@x [42.891] l.18069
{@+@<Compute the trie op code, |v|, and set |l:=0|@>;
@y
{@+@<Compute the trie op code, |v|, and set |l=0|@>;
@z

@x [43.896] l.18159
and set~|p:=null|@>@;@+break;
@y
and set~|p=null|@>@;@+break;
@z

@x [44.914] l.18606
        @/do@+{q=link(q);
        if ((type(q)==ins_node)&&(subtype(q)==subtype(r))) incr(t);
        }@+ while (!(q==broken_ins(r)));
@y
        do {q=link(q);
        if ((type(q)==ins_node)&&(subtype(q)==subtype(r))) incr(t);
        } while (!(q==broken_ins(r)));
@z

@x [44.925] l.18756
@/do@+{get_token();
}@+ while (!(loc==null));
@y
do get_token(); while (!(loc==null));
@z

@x [45.928] l.18841
@t\4@>@<Cases of |main_control| that are not part of the inner loop@>@;
@y
@/@t\4@>@<Cases of |main_control| that are not part of the inner loop@>@;
@z

@x [45.932] l.18903
set it equal to |sf_code(cur_chr)|, except that it should never change
@y
set it equal to |sf_code|( |cur_chr|), except that it should never change
@z

@x [45.941] l.19156
  @<Modify the glue specification in |main_p| according to the space factor@>;
@y
  @<Modify the glue specification in |main_p| according to the space factor@>@;
@z

@x [45.942] l.19165
shrink(main_p)=xn_over_d(shrink(main_p), 1000, space_factor)
@y
shrink(main_p)=xn_over_d(shrink(main_p), 1000, space_factor);
@z

@x [45.943] l.19180
@t\4@>@<Forbidden cases detected in |main_control|@>@+@, any_mode(mac_param):
@y
@<Forbidden cases detected in |main_control|@>@+@, any_mode(mac_param):
@z

@x [46.966] l.19533
@t\4@>@<Cases of |handle_right_brace| where a |right_brace| triggers a delayed
@y
@/@t\4@>@<Cases of |handle_right_brace| where a |right_brace| triggers a delayed
@z

@x [46.969] l.19574
`\.{\\lower3.8pt\\hbox...}'
@y
`\.{\\lower3.8pt} \.{\\hbox...}'
@z

@x [46.975] l.19729
if (cur_val < 256) define(box_base+cur_val, box_ref, cur_box);
@y
if (cur_val < 256) g_define(box_base+cur_val, box_ref, cur_box);
@z

@x [46.977] l.19768
from the list and make |cur_box| point to it; otherwise set |cur_box:=null|@>@;@+break;
@y
from the list and make |cur_box| point to it; otherwise set |cur_box=null|@>@;@+break;
@z

@x [46.979] l.19797
@/do@+{p=q;
@y
do {p=q;
@z
@x [46.979] l.19803
}@+ while (!(q==tail));
@y
} while (!(q==tail));
@z

@x [46.1003] l.20114
    @/do@+{p=q;
@y
    do {p=q;
@z
@x [46.1003] l.20120
    }@+ while (!(q==tail));
@y
    } while (!(q==tail));
@z

@x [46.1006] l.20161
case un_vbox: if (chr_code==copy_code) print_esc("unvcopy")
  @<Cases of |un_vbox| for |print_cmd_chr|@>;@/
@y
case un_vbox: if (chr_code==copy_code) print_esc("unvcopy");
  else @<Cases of |un_vbox| for |print_cmd_chr|@>@;
@z

@x [46.1021] l.20366
  if (q!=null) @<Append the accent with appropriate kerns, then set |p:=q|@>;
@y
  if (q!=null) @<Append the accent with appropriate kerns, then set |p=q|@>;
@z

@x [47.1055] l.20863
to null; set~|cur_val:=0|@>;
@y
to null; set~|cur_val=0|@>;
@z

@x [47.1084] l.21174
case left_right: if (chr_code==left_noad) print_esc("left")
@/@<Cases of |left_right| for |print_cmd_chr|@>;@/
@y
case left_right: if (chr_code==left_noad) print_esc("left");
else @<Cases of |left_right| for |print_cmd_chr|@>@;
@z

@x [47.1089] l.21242
the current math lists and set |danger:=true|@>;
@y
the current math lists and set |danger=true|@>;
@z
@x [47.1089] l.21252
the current math lists and set |danger:=true|@>;
@y
the current math lists and set |danger=true|@>;
@z

@x [48.1099] l.21459
  else if (chr_code==2) print_esc("outer")
  @/@<Cases of |prefix| for |print_cmd_chr|@>;@/
@y
  else if (chr_code==2) print_esc("outer");
  else @<Cases of |prefix| for |print_cmd_chr|@>@;
@z

@x [48.1104] l.21570
@d define(A, B, C) if (global) geq_define(A, B, C);@+else eq_define(A, B, C)
@y
@d g_define(A, B, C) if (global) geq_define(A, B, C);@+else eq_define(A, B, C)
@z

@x [48.1105] l.21588
restart: @/do@+{get_token();
}@+ while (!(cur_tok!=space_token));
@y
restart: do get_token(); while (!(cur_tok!=space_token));
@z

@x [48.1107] l.21610
defined in a format file, but are not yet loaded intp memory---the |define|
@y
defined in a format file, but are not yet loaded intp memory---the |g_define|
@z

@x [48.1107] l.21618
  define(cur_font_loc, data, cur_chr);@+break;
@y
  g_define(cur_font_loc, data, cur_chr);@+break;
@z

@x [48.1108] l.21632
  define(p, call+(a%4), def_ref);
@y
  g_define(p, call+(a%4), def_ref);
@z

@x [48.1111] l.21650
    {@+@/do@+{get_token();
    }@+ while (!(cur_cmd!=spacer));
@y
    {@+do get_token(); while (!(cur_cmd!=spacer));
@z
@x [48.1111] l.21664
  define(p, cur_cmd, cur_chr);
@y
  g_define(p, cur_cmd, cur_chr);
@z

@x [48.1114] l.21719
case shorthand_def: {@+n=cur_chr;get_r_token();p=cur_cs;define(p, relax, 256);
@y
case shorthand_def: {@+n=cur_chr;get_r_token();p=cur_cs;g_define(p, relax, 256);
@z
@x [48.1114] l.21722
  case char_def_code: {@+scan_char_num();define(p, char_given, cur_val);
@y
  case char_def_code: {@+scan_char_num();g_define(p, char_given, cur_val);
@z
@x [48.1114] l.21724
  case math_char_def_code: {@+scan_fifteen_bit_int(); math_to_Umath(cur_val); define(p, math_given, cur_val);
@y
  case math_char_def_code: {@+scan_fifteen_bit_int(); math_to_Umath(cur_val); g_define(p, math_given, cur_val);
@z
@x [48.1114] l.21732
      define(p, j, cur_ptr);
@y
      g_define(p, j, cur_ptr);
@z
@x [48.1114] l.21736
    case count_def_code: define(p, assign_int, count_base+cur_val);@+break;
    case dimen_def_code: define(p, assign_dimen, scaled_base+cur_val);@+break;
    case skip_def_code: define(p, assign_glue, skip_base+cur_val);@+break;
    case mu_skip_def_code: define(p, assign_mu_glue, mu_skip_base+cur_val);@+break;
    case toks_def_code: define(p, assign_toks, toks_base+cur_val);
@y
    case count_def_code: g_define(p, assign_int, count_base+cur_val);@+break;
    case dimen_def_code: g_define(p, assign_dimen, scaled_base+cur_val);@+break;
    case skip_def_code: g_define(p, assign_glue, skip_base+cur_val);@+break;
    case mu_skip_def_code: g_define(p, assign_mu_glue, mu_skip_base+cur_val);@+break;
    case toks_def_code: g_define(p, assign_toks, toks_base+cur_val);
@z

@x [48.1115] l.21756
  p=cur_cs;read_toks(n, p, j);define(p, call, cur_val);
@y
  p=cur_cs;read_toks(n, p, j);g_define(p, call, cur_val);
@z

@x [48.1118] l.21826
  define(p, glue_ref, cur_val);
@y
  g_define(p, glue_ref, cur_val);
@z

@x [48.1122] l.21907
  else if (p < math_code_base) define(p+cp, data, cur_val);
  else if (p < del_code_base) define(p+cp, data, hi(cur_val));
@y
  else if (p < math_code_base) g_define(p+cp, data, cur_val);
  else if (p < del_code_base) g_define(p+cp, data, hi(cur_val));
@z

@x [48.1124] l.21925
  scan_optional_equals();scan_font_ident();define(p, data, cur_val);
@y
  scan_optional_equals();scan_font_ident();g_define(p, data, cur_val);
@z

@x [48.1136] l.22135
if (c==0) dead_cycles=cur_val
@/@<Cases for |alter_integer|@>@;@/
@y
if (c==0) dead_cycles=cur_val;
else @<Cases for |alter_integer|@>@;
@z

@x [48.1138] l.22174
  define(q, shape_ref, p);
@y
  g_define(q, shape_ref, p);
@z

@x [48.1142] l.22205
    @/do@+{get_token();}@+ while (!(cur_cmd==right_brace)); /*flush the patterns*/
@y
    do get_token(); while (!(cur_cmd==right_brace)); /*flush the patterns*/
@z

@x [48.1147] l.22267
define(u, set_font, null_font);scan_optional_equals();scan_font_name();
@y
g_define(u, set_font, null_font);scan_optional_equals();scan_font_name();
@z

@x [48.1147] l.22299
define(u, set_font, f);eqtb[font_id_base+f]=eqtb[u];font_id_text(f)=t;
@y
g_define(u, set_font, f);eqtb[font_id_base+f]=eqtb[u];font_id_text(f)=t;
@z

@x [49.1201] l.22884
@/do@+{for (k=p; k<=q+1; k++) dump_wd(mem[k]);
@y
do {for (k=p; k<=q+1; k++) dump_wd(mem[k]);
@z
@x [49.1201] l.22887
}@+ while (!(q==rover));
@y
} while (!(q==rover));
@z

@x [49.1202] l.22909
@/do@+{for (k=p; k<=q+1; k++) undump_wd(mem[k]);
@y
do {for (k=p; k<=q+1; k++) undump_wd(mem[k]);
@z
@x [49.1202] l.22913
}@+ while (!(q==rover));
@y
} while (!(q==rover));
@z

@x [49.1203] l.22928
@<Dump regions 1 to 4 of |eqtb|@>;
@<Dump regions 5 and 6 of |eqtb|@>;
@y
@<Dump regions 1 to 4 of |eqtb|@>@;
@<Dump regions 5 and 6 of |eqtb|@>@;
@z

@x [49.1204] l.22936
@<Undump regions 1 to 6 of |eqtb|@>;
@y
@<Undump regions 1 to 6 of |eqtb|@>@;
@z

@x [49.1205] l.22952
@/do@+{j=k;
@y
do {j=k;
@z
@x [49.1205] l.22970
}@+ while (!(k==int_base))
@y
} while (!(k==int_base));
@z

@x [49.1206] l.22973
@/do@+{j=k;
@y
do {j=k;
@z
@x [49.1206] l.22989
}@+ while (!(k > eqtb_size))
@y
} while (!(k > eqtb_size));
@z

@x [49.1207] l.22993
@/do@+{undump_int(x);
@y
do {undump_int(x);
@z
@x [49.1207] l.23001
}@+ while (!(k > eqtb_size))
@y
} while (!(k > eqtb_size));
@z

@x [49.1209] l.23019
@/do@+{undump(p+1, hash_used, p);undump_hh(hash[p]);
}@+ while (!(p==hash_used));
@y
do {undump(p+1, hash_used, p);undump_hh(hash[p]);
} while (!(p==hash_used));
@z

@x [52.1236] l.23824
  @/@<Cases of |extension| for |print_cmd_chr|@>@/
@y
  @/@t\4@>@<Cases of |extension| for |print_cmd_chr|@>@;
@z

@x [52.1238] l.24068
@/@<Cases for |do_extension|@>@/
@y
@/@t\4@>@<Cases for |do_extension|@>@;
@z

@x [52.1247] l.24199
@/@<Cases for displaying the |whatsit| node@>@/
@y
@/@t\4@>@<Cases for displaying the |whatsit| node@>@;
@z

@x [52.1248] l.24351
@/@<Cases for making a partial copy of the whatsit node@>@/
@y
@/@t\4@>@<Cases for making a partial copy of the whatsit node@>@;
@z

@x [52.1249] l.24545
@/@<Cases for wiping out the whatsit node@>@/
@y
@/@t\4@>@<Cases for wiping out the whatsit node@>@;
@z

@x [52.1257] l.24642
@/do@+{get_token();
}@+ while (!(cur_tok==end_write_token));
@y
do get_token(); while (!(cur_tok==end_write_token));
@z

@x [53.1294] l.25100
  @/do@+{m=nest[p].mode_field;
  if (p > 0) decr(p);else m=vmode;
  }@+ while (!(m!=hmode));
@y
  do {m=nest[p].mode_field;
  if (p > 0) decr(p);else m=vmode;
  } while (!(m!=hmode));
@z

@x [53.1302] l.25250
@ @<Cases of |the| for |print_cmd_chr|@>=;
else if (chr_code==1) print_esc("unexpanded");
else print_esc("detokenize")
@y
@ @<Cases of |the| for |print_cmd_chr|@>=
if (chr_code==1) print_esc("unexpanded");
else print_esc("detokenize");
@z

@x [53.1306] l.25287
    @/do@+{incr(n);p=link(p);@+}@+ while (!(p==null));
@y
    do {incr(n);p=link(p);@+} while (!(p==null));
@z
@x [53.1306] l.25289
    @/do@+{print_nl("### level ");print_int(n);print(": ");
@y
    do {print_nl("### level ");print_int(n);print(": ");
@z
@x [53.1306] l.25294
    }@+ while (!(p==null));
@y
    } while (!(p==null));
@z

@x [53.1308] l.25305
@ @<Cases of |set_page_int| for |print_cmd_chr|@>=;
else if (chr_code==2) print_esc("interactionmode")

@ @<Cases for `Fetch the |dead_cycles| or the |insert_penalties|'@>=;
else if (m==2) cur_val=interaction
@y
@ @<Cases of |set_page_int| for |print_cmd_chr|@>=
if (chr_code==2) print_esc("interactionmode");

@ @<Cases for `Fetch the |dead_cycles| or the |insert_penalties|'@>=
if (m==2) cur_val=interaction;
@z

@x [53.1311] l.25314
@ @<Cases for |alter_integer|@>=;
else if (c==2)
@y
@ @<Cases for |alter_integer|@>=
if (c==2)
@z

@x [53.1313] l.25334
@ @<Cases of |left_right| for |print_cmd_chr|@>=;
else if (chr_code==middle_noad) print_esc("middle")
@y
@ @<Cases of |left_right| for |print_cmd_chr|@>=
if (chr_code==middle_noad) print_esc("middle");
@z

@x [53.1315] l.25344
@ @<Cases of |input| for |print_cmd_chr|@>=;
else if (chr_code==2) print_esc("scantokens")

@ @<Cases for |input|@>=;
else if (cur_chr==2) pseudo_start()
@y
@ @<Cases of |input| for |print_cmd_chr|@>=
if (chr_code==2) print_esc("scantokens");

@ @<Cases for |input|@>=
if (cur_chr==2) pseudo_start();
@z

@x [53.1327] l.25474
@ @<Cases of |read| for |print_cmd_chr|@>=;
else print_esc("readline")
@y
@ @<Cases of |read| for |print_cmd_chr|@>=
print_esc("readline");
@z

@x [53.1334] l.25550
  @/do@+{get_x_token();
  if (cur_cs==0) store_new_token(cur_tok);
  }@+ while (!(cur_cs!=0));
@y
  do {get_x_token();
  if (cur_cs==0) store_new_token(cur_tok);
  } while (!(cur_cs!=0));
@z

@x [53.1338] l.25597
@ @<Cases of |prefix| for |print_cmd_chr|@>=;
else if (chr_code==8) print_esc("protected")
@y
@ @<Cases of |prefix| for |print_cmd_chr|@>=
if (chr_code==8) print_esc("protected");
@z

@x [53.1350] l.25836
switch (s) {@<Cases for evaluation of the current term@>@;
@y
switch (s) {@t\4@>@<Cases for evaluation of the current term@>@;
@z

@x [53.1388] l.26497
@/do@+{i=hex_dig4(sa_index(q));p=q;q=link(p);free_node(p, s);
@y
do {i=hex_dig4(sa_index(q));p=q;q=link(p);free_node(p, s);
@z
@x [53.1388] l.26502
}@+ while (!(sa_used(q) > 0));
@y
} while (!(sa_used(q) > 0));
@z

@x [53.1392] l.26605
  @<Cases for |do_marks|@>@;
@y
  @t\4@>@<Cases for |do_marks|@>@;
@z

@x [53.1407] l.26872
@/do@+{p=sa_loc(sa_chain);
@y
do {p=sa_loc(sa_chain);
@z
@x [53.1407] l.26895
}@+ while (!(sa_chain==null));
@y
} while (!(sa_chain==null));
@z

@x [53.1409] l.26916
@/do@+{q=p;p=trie_r[q];
}@+ while (!((p==0)||(c <= trie_c[p])));
@y
@/do {q=p;p=trie_r[q];
} while (!((p==0)||(c <= trie_c[p])));
@z

@x [53.1415] l.26984
command code |un_vbox| with \.{\\unvbox} and \.{\\unvcopy}, they are
@y
command code |un_vbox| with commands \.{\\unvbox} and \.{\\unvcopy}, they are
@z

@x [53.1416] l.26995
@ @<Cases of |un_vbox| for |print_cmd_chr|@>=;
else if (chr_code==last_box_code) print_esc("pagediscards");
else if (chr_code==vsplit_code) print_esc("splitdiscards")
@y
@ @<Cases of |un_vbox| for |print_cmd_chr|@>=
if (chr_code==last_box_code) print_esc("pagediscards");
else if (chr_code==vsplit_code) print_esc("splitdiscards");
@z

@x [60.1460] l.27352
case if_primitive_code: {@+@/do@+{get_token();}@+ while (!(cur_tok!=space_token));
@y
case if_primitive_code: {@+do get_token(); while (!(cur_tok!=space_token));
@z

@x [61.1464] l.27427
an |ROM_undefined_primitive| that will allow an easy test.
@y
|ROM_undefined_primitive| that will allow an easy test.
@z

@x [64.1497] l.27693
@ The \.{\\filemoddate} expands to a date with the same format as the
creation date (see \.{\\creationdate}).
@y
@ The \.{\\filemoddate} expands to a date with the same format as
\.{\\creationdate}.
@z

@x [64.1499] l.27710
simply setting |xchg_buffer_length| to $0$.
@y
simply setting |xchg_buffer_length| to~$0$.
@z

@x [64.1504] l.27787
      do@+{i=fgetc(f); if (i==EOF) break;
@y
      do {i=fgetc(f); if (i==EOF) break;
@z
@x [64.1504] l.27790
       }@+ while (!(feof(f)||(l==0)));
@y
       } while (!(feof(f)||(l==0)));
@z

@x [65.1517] l.27998
@ The |@/do@+{| loop here preserves the following invariant relations
@y
@ The |do {| loop here preserves the following invariant relations
@z
@x [65.1517] l.28013
@/do@+{be_careful=p-q;p=be_careful+p;
@y
do {be_careful=p-q;p=be_careful+p;
@z
@x [65.1517] l.28017
}@+ while (!(f >= mpfract_one));
@y
} while (!(f >= mpfract_one));
@z

@x [65.1518] l.28040
@<Compute $p=\lfloor qf/2^{28}+{1\over2}\rfloor-q$@>;
@y
@<Compute $p=\lfloor qf/2^{28}+{1\over2}\rfloor-q$@>@;
@z

@x [65.1520] l.28065
  @/do@+{if (odd(f)) p=halfp(p+q);@+else p=halfp(p);
  f=halfp(f);
  }@+ while (!(f==1));
else@/do@+{if (odd(f)) p=p+halfp(q-p);@+else p=halfp(p);
  f=halfp(f);
  }@+ while (!(f==1))
@y
  do {if (odd(f)) p=halfp(p+q);@+else p=halfp(p);
  f=halfp(f);
  } while (!(f==1));
else do {if (odd(f)) p=p+halfp(q-p);@+else p=halfp(p);
  f=halfp(f);
  } while (!(f==1));
@z

@x [65.1540] l.28258
@/do@+{
  @/do@+{next_random;
@y
do {
  do {next_random;
@z
@x [65.1540] l.28263
  }@+ while (!(abs(x) < u));
@y
  } while (!(abs(x) < u));
@z
@x [65.1540] l.28266
}@+ while (!(ab_vs_cd(1024, l, x, x) >= 0));
@y
} while (!(ab_vs_cd(1024, l, x, x) >= 0));
@z

@x [71.1589] l.29112
@ Writing a color node to the output is simple.
@y
@ Outputting a color node is simple.
@z

@x [73.1616] l.29674
  while (true)
@y
  loop@+
@z

@x [74.1630] l.30263
  else /* if (x<0) */
@y
  else /* if |(x<0)| */
@z

@x [77.1637] l.30547
    @<allocate a new |setpage_node| |p|@>@;
@y
    @<Allocate a new |setpage_node| |p|@>@;
@z

@x [77.1638] l.30554
@
@<allocate a new |setpage_node| |p|@>=
@y
@ @<Allocate a new |setpage_node| |p|@>=
@z

@x [81.1656] l.30859
static const int hmap_int[] ={@/
@y
static const int hmap_int[] ={@t\1\1@>@/
@z
@x [81.1656] l.30902
floating_penalty_no  /* |floating_penalty_code|	42*/
@y
@t\2\2@> floating_penalty_no  /* |floating_penalty_code| 42*/
@z

@x [81.1658] l.30914
if not successful, it returns $-1$.
@y
if not successful, it returns~$-1$.
@z

@x [82.1662] l.30957
static const int hmap_dimen[] ={@/
@y
static const int hmap_dimen[] ={@t\1\1@>@/
@z
@x [82.1662] l.30978
  emergency_stretch_no /* |emergency_stretch_code| 20 */
@y
  @t\2\2@> emergency_stretch_no /* |emergency_stretch_code| 20 */
@z
@x [84.1672] l.31084
static int hmap_glue[] ={

@y
static int hmap_glue[] ={@t\1\1@>@/
@z
@x [84.1672] l.31100
par_fill_skip_no  /* |par_fill_skip_code| 14 */
@y
@t\2\2@> par_fill_skip_no  /* |par_fill_skip_code| 14 */
@z

@x [86.1685] l.31352
{@+while (true)
@y
{@+loop@+
@z

@x [97.1716] l.31986
\TeX's math nodes have an optional width---a copy of the mathsurround parameter---while
@y
\TeX's math nodes have an optional width---a copy of the \.{\\mathsurround} parame\-ter---while
@z

@x [119.1748] l.32773
#define TL_VERSION "(TeX Live "WEB2CVERSION")"
@y
#define TL_VERSION @["(TeX Live "WEB2CVERSION")"@]
@z

@x [121.1756] l.32957
static struct option long_options[] = {@/
@y
static struct option long_options[] = {@t\1\1@>@/
@z
@x [121.1756] l.32990
      { 0, 0, 0, 0 }@+}@+;
@y
@t\2\2@> { 0, 0, 0, 0 } @/
};
@z

@x [121.1757] l.33000
{@+ while (true) {
@y
{@+ loop @+ {
@z

@x [121.1760] l.33050
#define ARGUMENT_IS(S) argument_is(long_options+option_index,S)
@y
#define ARGUMENT_IS(S) @[argument_is(long_options+option_index,S)@]
@z

@x [128.1791] l.33692
@+ }
@y
}
@z

@x [129.1793] l.33746
#ifdef @!INIT
@y
@#
#ifdef @!INIT
@+@t}\6\4\4{@>
@z

@x [131.1800] l.33940
the \TeX\ Live distribution and slightly modified.
@y
the \TeX\ Live distribution and slightly modified.

@s md5_byte_t int
@s md5_state_t int
@z
@x [131.1800] l.34001
/* static structure for file status set by |find_input_file| */
#ifdef WIN32
@y
@#
#ifdef WIN32
/* static structure for file status set by |find_input_file| */
@+@t}\6{@>
@z
@x [131.1800] l.34004
#define GET_FILE_STAT _stat(fname,&file_stat)
@y
#define GET_FILE_STAT @[_stat(fname,&file_stat)@]
@Z
@x [131.1800] l.34007
#define GET_FILE_STAT stat(fname,&file_stat)
@y
#define GET_FILE_STAT @[stat(fname,&file_stat)@]
@z

@x [133.1841] l.35074
@ Since specifying, finding, and loading a font can be quite complex process,
@y
@ Since specifying, finding, and loading a font can be quite complex,
@z
