@x [0.0] l.227
@s uint8_t int
@y
@s int8_t int
@s uint8_t int
@z
@x [0.0] l.250
@s to   do
@y
@s to   do

\def\contentspagenumber{0}
\def\tocpages{3} % HiTeX has a long ToC
\pageno=\contentspagenumber \advance \pageno by \tocpages
@z

@x [1.4] l.434
uses identifiers that \TeX will declare as macros.
@y
uses identifiers that \TeX\ will declare as macros.
@z
@x [1.4] l.447
  @<Initialize whatever \TeX\ might access@>;
@y
  @<Initialize whatever \TeX\ might access@>@;
@z

@x [1.16] l.633
   /*\.{WEB}'s |else| acts like `\ignorespaces|while true do|\unskip'*/
@y
   /*\.{WEB}'s |loop| acts like `\ignorespaces|while true do|\unskip'*/
@z

@x [4.46] l.1333
@t\4@>@<Declare \Prote\ procedures for strings@>@;
@y
@#@<Declare \Prote\ procedures for strings@>@;
@z

@x [4.52] l.1422
static int s_no(const char *str);
@y
static int s_no(const char *str);

@ (Empty section to keep numbering intact.)
@z

@x [5.55] l.1495
@<Basic printing procedures@>=
#define @[put(F)@]    @[fwrite(&((F).d)@],@[sizeof((F).d),1,(F).f)@]@;
@y
@s sizeof x

@<Basic printing procedures@>=
#define @[put(F)@]    @[fwrite(&((F).d),sizeof((F).d),1,(F).f)@]
@z

@x [5.58] l.1581
  while (*s!=0) print_char(*s++);@+
@y
  while (*s!=0) print_char(*s++);
@z

@x [5.64] l.1707
@/do@+{dig[k]=n%10;n=n/10;incr(k);
}@+ while (!(n==0));
@y
do {dig[k]=n%10;n=n/10;incr(k);
} while (!(n==0));
@z

@x [5.66] l.1726
@/do@+{dig[k]=n%16;n=n/16;incr(k);
}@+ while (!(n==0));
@y
do {dig[k]=n%16;n=n/16;incr(k);
} while (!(n==0));
@z

@x [6.71] l.1803
|error;|\cr}}$$
@y
|error();|\cr}}$$
@z

@x [6.83] l.2015
  @<Delete \(c)|c-"0"| tokens and |goto resume|@>@;@+break;
@t\4\4@>@;
@y
  @<Delete \(c)|c-"0"| tokens and |goto resume|@>@;@+break;
@z

@x [6.88] l.2109
  @/do@+{decr(help_ptr);print(help_line[help_ptr]);print_ln();
  }@+ while (!(help_ptr==0));
@y
  do {decr(help_ptr);print(help_line[help_ptr]);print_ln();
  } while (!(help_ptr==0));
@z

@x [7.100] l.2279
typedef int32_t nonnegative_integer; /*$0\le x<2^{31}$*/
@y
typedef uint32_t nonnegative_integer; /*$0\le x<2^{31}$*/
@z

@x [7.102] l.2317
@/do@+{if (delta > unity) s=s+0100000-50000; /*round the last digit*/
print_char('0'+(s/unity));s=10*(s%unity);delta=delta*10;
}@+ while (!(s <= delta));
@y
do {if (delta > unity) s=s+0100000-50000; /*round the last digit*/
print_char('0'+(s/unity));s=10*(s%unity);delta=delta*10;
} while (!(s <= delta));
@z

@x [7.107] l.2436
@p @<Declare \Prote\ arithmetic routines@>@/
@y
@p @<Declare \Prote\ arithmetic routines@>@;
@z

@x [7.108] l.2470
@d float_constant(A) ((double)(A)) /*convert |int| constant to |double|*/
@y
@d float_constant(A) ((double)(A)) /*convert |int| constant to |double|*/
@#
@d perror e@&r@&r@&o@&r /* this is a \.{CWEB} coding trick: */
@f perror error /* `\&{perror}' will be equivalent to `\&{error}' */
@f error x /* but `|error|' will not be treated as a reserved word */
@z
@x [7.108] l.2476
#error  @=float type must have size 4@>
@y
#perror @=float type must have size 4@>
@z

@x [8.112] l.2586
typedef struct { @;@/
@y
@#
typedef struct {
@z
@x [8.112] l.2593
typedef struct { @;@/
@y
@#
typedef struct {
@z
@x [8.112] l.2599
typedef struct { @;@/
@y
@#
typedef struct {
@z
@x [8.112] l.2606
typedef struct {@+FILE *f;@+memory_word@,d;@+} word_file;
@y
@#
typedef struct {@+FILE *f;@+memory_word@,d;@+} word_file;
@z

@x [9.119] l.2749
link(p)=null; /*provide an oft-desired initialization of the new node*/
#ifdef @!STAT
incr(dyn_used);
#endif
@; /*maintain statistics*/
@y
link(p)=null; /*provide an oft-desired initialization of the new node*/
incr_dyn_used; /*maintain statistics*/
@z

@x [9.122] l.2788
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

@x [9.124] l.2837
@/do@+{@<Try to allocate within node |p| and its physical successors, and
@y
do {@<Try to allocate within node |p| and its physical successors, and
@z
@x [9.124] l.2841
}@+ while (!(p==rover)); /*repeat until the whole list has been traversed*/
@y
} while (!(p==rover)); /*repeat until the whole list has been traversed*/
@z

@x [10.151] l.3334
q=@<Current |mem| equivalent of glue parameter number |n|@>@t@>;
@y
q=@[@<Current |mem| equivalent of glue parameter number |n|@>@];
@z

@x [10.154] l.3374
@d kern_node 11 /*|type| of a kern node*/
@d explicit 1 /*|subtype| of kern nodes from \.{\\kern} and \.{\\/}*/
@y
@s explicit true

@d kern_node 11 /*|type| of a kern node*/
@d explicit 1 /*|subtype| of kern nodes from \.{\\kern} and \.{\\/}*/
@z

@x [11.164] l.3534
@t\hskip10pt@>static bool @!was_free0[mem_max-mem_min+1],
@y
static bool @!was_free0[mem_max-mem_min+1],
@z
@x [11.164] l.3537
@t\hskip10pt@>static pointer @!was_mem_end, @!was_lo_max, @!was_hi_min;
@y
static pointer @!was_mem_end, @!was_lo_max, @!was_hi_min;
@z
@x [11.164] l.3539
@t\hskip10pt@>static bool @!panicking; /*do we want to check memory constantly?*/
@y
static bool @!panicking; /*do we want to check memory constantly?*/
@z

@x [11.168] l.3589
@/do@+{if ((p >= lo_mem_max)||(p < mem_min)) clobbered=true;
@y
do {if ((p >= lo_mem_max)||(p < mem_min)) clobbered=true;
@z
@x [11.168] l.3606
}@+ while (!(p==rover));
@y
} while (!(p==rover));
@z

@x [12.173] l.3701
        else@<Print the font identifier for |font(p)|@>;
@y
        else@<Print the font identifier for |font(p)|@>@;
@z
@x [12.173] l.3710
  else@<Print a short indication of the contents of node |p|@>;
@y
  else@<Print a short indication of the contents of node |p|@>@;
@z

@x [12.175] l.3743
  else@<Print the font identifier for |font(p)|@>;
@y
  else@<Print the font identifier for |font(p)|@>@;
@z

@x [12.182] l.3883
  @t\4@>@<Cases of |show_node_list| that arise in mlists only@>@;
@y
  @/@t\4@>@<Cases of |show_node_list| that arise in mlists only@>@;
@z

@x [12.197] l.4044
{@+@<Assign the values |depth_threshold:=show_box_depth| and |breadth_max:=show_box_breadth|@>;
@y
{@+@<Assign the values |depth_threshold=show_box_depth| and |breadth_max=show_box_breadth|@>;
@z

@x [13.200] l.4082
fast_delete_glue_ref(p)
@y
fast_delete_glue_ref(p)@;
@z

@x [13.201] l.4123
    @t\4@>@<Cases of |flush_node_list| that arise in mlists only@>@;
@y
    @/@t\4@>@<Cases of |flush_node_list| that arise in mlists only@>@;
@z

@x [17.230] l.5033
  @/@<Cases of |assign_toks| for |print_cmd_chr|@>@/
@y
  @/@t\4@>@<Cases of |assign_toks| for |print_cmd_chr|@>@;
@z

@x [17.235] l.5301
@<Assign the values |depth_threshold:=show_box_depth|...@>=
@y
@<Assign the values |depth_threshold=show_box_depth|...@>=
@z

@x [17.236] l.5366
@/@<Cases for |print_param|@>@/
@y
@/@t\4@>@<Cases for |print_param|@>@;
@z

@x [17.240] l.5521
@p static void fix_date_and_time(void)
@y
@s tm int
@p static void fix_date_and_time(void)
@z

@x [17.251] l.5724
@p @t\4@>@<Declare the procedure called |print_cmd_chr|@>@;@/
#ifdef @!STAT
@y
@p @<Declare the procedure called |print_cmd_chr|@>@;
#ifdef @!STAT
@+@t}\6\4\4{@>
@z

@x [18.259] l.5851
  {@+@/do@+{if (hash_is_full) overflow("hash size", hash_size);
@y
  {@+do {if (hash_is_full) overflow("hash size", hash_size);
@z
@x [18.259] l.5854
  }@+ while (!(text(hash_used)==0)); /*search for an empty location in |hash|*/
@y
  } while (!(text(hash_used)==0)); /*search for an empty location in |hash|*/
@z

@x [18.265] l.6072
@/@<Cases of |expandafter| for |print_cmd_chr|@>@/
@y
@/@t\4@>@<Cases of |expandafter| for |print_cmd_chr|@>@;
@z
@x [18.265] l.6092
case read_to_cs: if (chr_code==0) print_esc("read")
  @<Cases of |read| for |print_cmd_chr|@>;@+break;
@y
case read_to_cs: if (chr_code==0) print_esc("read");
  else @<Cases of |read| for |print_cmd_chr|@>;@+break;
@z
@x [18.265] l.6099
  @<Cases of |set_shape| for |print_cmd_chr|@>@;@/
@y
  @/@t\4@>@<Cases of |set_shape| for |print_cmd_chr|@>@;
@z
@x [18.265] l.6101
case the: if (chr_code==0) print_esc("the")
  @<Cases of |the| for |print_cmd_chr|@>;@+break;
@y
case the: if (chr_code==0) print_esc("the");
  else @<Cases of |the| for |print_cmd_chr|@>;@+break;
@z

@x [18.266] l.6123
printn_esc(font_id_text(font(p)))
@y
printn_esc(font_id_text(font(p)));
@z

@x [19.274] l.6308
@/@<Cases for |eq_destroy|@>@/
@y
@/@t\4@>@<Cases for |eq_destroy|@>@;
@z

@x [19.276] l.6346
#define  assign_trace(A, B)
@y
#define  assign_trace(A, B) @[@]
@z

@x [21.297] l.6858
@t\4@>@<Cases of |print_cmd_chr| for symbolic printing of primitives@>@/
@y
@/@t\4@>@<Cases of |print_cmd_chr| for symbolic printing of primitives@>@;
@z

@x [23.330] l.7596
first=buf_size;@/do@+{buffer[first]=0;decr(first);}@+ while (!(first==0));
@y
first=buf_size; do {buffer[first]=0;decr(first);} while (!(first==0));
@z

@x [24.332] l.7630
to the appearance of \.{\\par}; we must set |cur_cs:=par_loc|
@y
to the appearance of \.{\\par}; we must set |cur_cs=par_loc|
@z

@x [24.343] l.7800
any_state_plus(escape): @<Scan a control sequence and set |state:=skip_blanks|
@y
any_state_plus(escape): @<Scan a control sequence and set |state=skip_blanks|
@z
@x [24.343] l.7803
and set |state:=mid_line|@>@;@+break;
@y
and set |state=mid_line|@>@;@+break;
@z
@x [24.343] l.7805
like~\.{\^\^A} or~\.{\^\^df}, then |goto reswitch|, otherwise set |state:=mid_line|@>@;@+break;
@y
like~\.{\^\^A} or~\.{\^\^df}, then |goto reswitch|, otherwise set |state=mid_line|@>@;@+break;
@z
@x [24.343] l.7807
@t\4@>@<Handle situations involving spaces, braces, changes of state@>@;
@y
@/@t\4@>@<Handle situations involving spaces, braces, changes of state@>@;
@z

x [24.355] l.7926
{@+@/do@+{cur_chr=buffer[k];cat=cat_code(cur_chr);incr(k);
}@+ while (!((cat!=letter)||(k > limit)));
y
{@+do {cur_chr=buffer[k];cat=cat_code(cur_chr);incr(k);
} while (!((cat!=letter)||(k > limit)));
z

@x [25.366] l.8225
@/@<Cases for |expandafter|@>@/
@y
@/@t\4@>@<Cases for |expandafter|@>@;
@z

@x [25.371] l.8289
@/do@+{get_x_token();
if (cur_cs==0) store_new_token(cur_tok);
}@+ while (!(cur_cs!=0));
@y
do {get_x_token();
if (cur_cs==0) store_new_token(cur_tok);
} while (!(cur_cs!=0));
@z

@x [25.376] l.8349
case input: if (chr_code==0) print_esc("input")
  @/@<Cases of |input| for |print_cmd_chr|@>;@/
@y
case input: if (chr_code==0) print_esc("input");
  else @<Cases of |input| for |print_cmd_chr|@>@;
@z

@x [25.377] l.8354
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

@x [25.390] l.8567
@/do@+{link(temp_head)=null;
@y
do {link(temp_head)=null;
@z
@x [25.390] l.8572
@<Scan a parameter until its delimiter string has been found; or, if |s=null|,
@y
@<Scan a parameter until its delimiter string has been found; or, if |s==null|,
@z
@x [25.390] l.8575
}@+ while (!(info(r)==end_match_token));
@y
} while (!(info(r)==end_match_token));
@z

@x [25.391] l.8589
resume| if a partial match is still in effect; but abort if |s=null|@>;
@y
resume| if a partial match is still in effect; but abort if |s==null|@>;
@z

@x [25.396] l.8675
    @/do@+{store_new_token(info(t));incr(m);u=link(t);v=s;
@y
    do {store_new_token(info(t));incr(m);u=link(t);v=s;
@z
@x [25.396] l.8684
    }@+ while (!(t==r));
@y
    } while (!(t==r));
@z

@x [26.403] l.8776
@/do@+{get_x_token();
}@+ while (!((cur_cmd!=spacer)&&(cur_cmd!=relax)))
@y
do get_x_token(); while (!((cur_cmd!=spacer)&&(cur_cmd!=relax)))
@z

@x [26.405] l.8788
@/do@+{get_x_token();
}@+ while (!(cur_cmd!=spacer))
@y
do get_x_token(); while (!(cur_cmd!=spacer))
@z

@x [26.408] l.8848
@t\4\4@>@<Declare procedures that scan restricted classes of integers@>@;
@t\4\4@>@<Declare \eTeX\ procedures for scanning@>@;
@t\4\4@>@<Declare procedures that scan font-related stuff@>@;
@y
@#@<Declare procedures that scan restricted classes of integers@>@;
@<Declare \eTeX\ procedures for scanning@>@;
@<Declare procedures that scan font-related stuff@>@;
@z

@x [26.412] l.8931
identifier, provided that |level=tok_val|@>@;@+break;
@y
identifier, provided that |level==tok_val|@>@;@+break;
@z

@x [26.416] l.9053
case set_page_int: if (chr_code==0) print_esc("deadcycles")
@/@<Cases of |set_page_int| for |print_cmd_chr|@>;@/
@+else print_esc("insertpenalties");@+break;
@y
case set_page_int: if (chr_code==0) print_esc("deadcycles");
else @<Cases of |set_page_int| for |print_cmd_chr|@>@;
else print_esc("insertpenalties");@+break;
@z
@x [26.416] l.9064
  @/@<Cases of |last_item| for |print_cmd_chr|@>@/
@y
  @/@t\4@>@<Cases of |last_item| for |print_cmd_chr|@>@;
@z

@x [26.418] l.9086
{@+if (m==0) cur_val=dead_cycles
@/@<Cases for `Fetch the |dead_cycles| or the |insert_penalties|'@>;@/
@y
{@+if (m==0) cur_val=dead_cycles;
else @<Cases for `Fetch the |dead_cycles| or the |insert_penalties|'@>@;
@z

@x [26.423] l.9138
  @/@<Cases for fetching a dimension value@>@/
@y
  @/@t\4@>@<Cases for fetching a dimension value@>@;
@z
@x [26.423] l.9145
  @/@<Cases for fetching an integer value@>@/
@y
  @/@t\4@>@<Cases for fetching an integer value@>@;
@z

@x [26.440] l.9370
@/do@+{@<Get the next non-blank non-call token@>;
@y
do {@<Get the next non-blank non-call token@>;
@z
@x [26.440] l.9374
}@+ while (!(cur_tok!=other_token+'+'))
@y
} while (!(cur_tok!=other_token+'+'));
@z

@x [26.447] l.9495
  {@+@<Get the next non-blank non-sign...@>;
@y
  {@+@<Get the next non-blank non-sign...@>@;
@z

@x [26.460] l.9734
mu=(level==mu_val);@<Get the next non-blank non-sign...@>;
@y
mu=(level==mu_val);@<Get the next non-blank non-sign...@>@;
@z

@x [27.468] l.9914
  @/@<Cases of |convert| for |print_cmd_chr|@>@/
@y
  @/@t\4@>@<Cases of |convert| for |print_cmd_chr|@>@;
@z

@x [27.470] l.9945
@/@<Cases of `Scan the argument for command |c|'@>@/
@y
@/@t\4@>@<Cases of `Scan the argument for command |c|'@>@;
@z

@x [27.471] l.9963
@/@<Cases of `Print the result of command |c|'@>@/
@y
@/@t\4@>@<Cases of `Print the result of command |c|'@>@;
@z

@x [27.472] l.10009
@t\4@>@<Declare \Prote\ procedures for token lists@>@;@/
@y
@#@<Declare \Prote\ procedures for token lists@>@;
@z

@x [27.481] l.10139
@/do@+{@<Input and store tokens from the next line of the file@>;
}@+ while (!(align_state==1000000));
@y
do @<Input and store tokens from the next line of the file@>@;
while (!(align_state==1000000));
@z

@x [27.482] l.10145
begin_file_reading();name=m+1;
@y
{begin_file_reading();name=m+1;
@z
@x [27.482] l.10158
    {@+@/do@+{get_token();}@+ while (!(cur_tok==0));
@y
    {@+do get_token(); while (!(cur_tok==0));
@z
@x [27.482] l.10163
done: end_file_reading()
@y
done: end_file_reading();}
@z

@x [28.487] l.10281
  @/@<Cases of |if_test| for |print_cmd_chr|@>@/
@y
  @/@t\4@>@<Cases of |if_test| for |print_cmd_chr|@>@;
@z

@x [28.500] l.10462
@/@<Cases for |conditional|@>@/
@y
@/@t\4@>@<Cases for |conditional|@>@;
@z

@x [29.524] l.10839
#ifdef @!INIT
@y
#ifdef @!INIT
@+@t}\6\4\4{@>
@z

@x [30.557] l.11593
@d param_end(A) param_base[A]].sc
@d param(A) font_info[A+param_end
@y
@d param_end(A) @[param_base[A]].sc@]
@d param(A) @[font_info[A+param_end@]
@z

@x [30.577] l.11987
@<Issue an error message if |cur_val=fmem_ptr|@>;
@y
@<Issue an error message if |cur_val==fmem_ptr|@>;
@z

@x [30.578] l.11990
@ @<Issue an error message if |cur_val=fmem_ptr|@>=
@y
@ @<Issue an error message if |cur_val==fmem_ptr|@>=
@z

@x [30.579] l.12002
{@+@/do@+{if (fmem_ptr==font_mem_size)
@y
{@+do {if (fmem_ptr==font_mem_size)
@z
@x [30.579] l.12006
}@+ while (!(n==font_params[f]));
@y
} while (!(n==font_params[f]));
@z

@x [32.618] l.13050
@p @t\4@>@<Declare procedures needed in |hlist_out|, |vlist_out|@>@t@>@/
@y
@p @<Declare procedures needed in |hlist_out|, |vlist_out|@>@t@>@;
@z
@x [32.618] l.13077
maintaining the condition |cur_v=base_line|@>;
@y
maintaining the condition |cur_v==base_line|@>;
@z

@x [32.619] l.13092
  @/do@+{f=font(p);c=character(p);
@y
  do {f=font(p);c=character(p);
@z
@x [32.619] l.13098
  }@+ while (!(!is_char_node(p)));
@y
  } while (!(!is_char_node(p)));
@z

@x [32.628] l.13273
maintaining the condition |cur_h=left_edge|@>;
@y
maintaining the condition |cur_h==left_edge|@>;
@z

@x [33.678] l.13983
@p static void append_to_vlist(pointer @!b)@t\2\2@>@/
{ bool height_known;@t\1@>@/
@y
@p static void append_to_vlist(pointer @!b)
{ @+bool height_known;
@z
@x [33.678] l.13988
  {@+scaled d;@t\1@> /*deficiency of space between baselines*/
@y
  {@+scaled d; /*deficiency of space between baselines*/
@z
@x [33.678] l.13990
  {@+d=width(baseline_skip)-prev_depth-height(b);
@y
  d=width(baseline_skip)-prev_depth-height(b);
@z
@x [33.678] l.13996
  }@+
} @+  else @+if (prev_depth<=unknown_depth || prev_depth>ignore_depth )@t\2@>@/
@y
} @+  else @+if (prev_depth<=unknown_depth || prev_depth>ignore_depth ) @/
@z

@x [35.706] l.14638
  @/do@+{z=z-16;g=fam_fnt(z);
@y
  do {z=z-16;g=fam_fnt(z);
@z
@x [35.706] l.14643
  }@+ while (!(z < 16));
@y
  } while (!(z < 16));
@z

@x [36.727] l.15049
@t\4@>@<Cases for noads that can follow a |bin_noad|@>@;
@t\4@>@<Cases for nodes that can appear in an mlist, after which we |goto
@y
@/@t\4@>@<Cases for noads that can follow a |bin_noad|@>@;
@/@t\4@>@<Cases for nodes that can appear in an mlist, after which we |goto
@z

@x [36.766] l.15810
  @/do@+{p=link(p);
  }@+ while (!(link(p)==null));
@y
  do p=link(p); while (!(link(p)==null));
@z

@x [37.773] l.16036
@p @t\4@>@<Declare the procedure called |get_preamble_token|@>@t@>@/
@y
@p @<Declare the procedure called |get_preamble_token|@>@;
@z

@x [37.784] l.16224
@/do@+{get_x_or_protected();
}@+ while (!(cur_cmd!=spacer));
@y
do get_x_or_protected(); while (!(cur_cmd!=spacer));
@z

@x [37.785] l.16244
@p @t\4@>@<Declare the procedure called |init_span|@>@t@>@/
@y
@p @<Declare the procedure called |init_span|@>@;
@z

@x [37.790] l.16337
@/do@+{get_x_or_protected();
}@+ while (!(cur_cmd!=spacer));
@y
do get_x_or_protected(); while (!(cur_cmd!=spacer));
@z

@x [37.797] l.16432
@/do@+{incr(n);q=link(link(q));
}@+ while (!(q==cur_align));
@y
do {incr(n);q=link(link(q));
} while (!(q==cur_align));
@z

@x [37.799] l.16490
the alignrecords to dummy unset boxes@>;
@y
the alignrecords to dummy unset boxes@>@;
@z
@x [37.799] l.16492
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
@x [37.799] l.16497
  and let |p| point to this prototype box@>;
  @<Set the glue in all the unset boxes of the current list@>;
  flush_node_list(p);pop_alignment();
@y
  and let |p| point to this prototype box@>@;
  @<Set the glue in all the unset boxes of the current list@>@;
  flush_node_list(p);pop_alignment();
@z
@x [37.799] l.16501
@<Insert the \(c)current list into its environment@>;
} @/
@y
@<Insert the \(c)current list into its environment@>;
} @#
@z

@x [37.800] l.16504
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

@x [37.801] l.16542
@/do@+{flush_list(u_part(q));flush_list(v_part(q));
@y
do {flush_list(u_part(q));flush_list(v_part(q));
@z
@x [37.801] l.16556
}@+ while (!(q==null))
@y
} while (!(q==null));
@z

@x [37.803] l.16568
|@/do@+{| loop is that we want to dispense with node |r|, in |q|'s list,
@y
|do {| loop is that we want to dispense with node |r|, in |q|'s list,
@z
@x [37.803] l.16576
@/do@+{width(r)=width(r)-t;u=info(r);
@y
do {width(r)=width(r)-t;u=info(r);
@z
@x [37.803] l.16587
}@+ while (!(r==end_span));
@y
} while (!(r==end_span));
@z

@x [37.804] l.16604
  @/do@+{height(q)=width(q);width(q)=0;q=link(link(q));
  }@+ while (!(q==null));
@y
  do {height(q)=width(q);width(q)=0;q=link(link(q));
  } while (!(q==null));
@z
@x [37.804] l.16608
  @/do@+{width(q)=height(q);height(q)=0;q=link(link(q));
  }@+ while (!(q==null));
@y
  do {width(q)=height(q);height(q)=0;q=link(link(q));
  } while (!(q==null));
@z

@x [37.807] l.16647
@/do@+{@<Set the glue in node |r| and change it from an unset node@>;
r=link(link(r));s=link(link(s));
}@+ while (!(r==null));
@y
do {@<Set the glue in node |r| and change it from an unset node@>;
r=link(link(r));s=link(link(s));
} while (!(r==null));
@z

@x [38.823] l.16981
@d do_all_six(A) A(1);A(2);A(3);A(4);A(5);A(6)
@y
@d do_all_six(A) A(1);A(2);A(3);A(4);A(5);A(6)@;
@z

@x [38.829] l.17139
feasible breaks in that class; then |return| if |r=last_active|, otherwise
@y
feasible breaks in that class; then |return| if |r==last_active|, otherwise
@z

@x [38.856] l.17631
  @<Print the list between |printed_node| and |cur_p|, then set |printed_node:=cur_p|@>;
@y
  @<Print the list between |printed_node| and |cur_p|, then set |printed_node=cur_p|@>;
@z

@x [39.867] l.17892
@/do@+{f=font(cur_p);
@y
do {f=font(cur_p);
@z
@x [39.867] l.17895
}@+ while (!(!is_char_node(cur_p)));
@y
} while (!(!is_char_node(cur_p)));
@z

@x [39.869] l.17920
else{@+@/do@+{@<Add the width of node |s| to |disc_width|@>;
    s=link(s);
  }@+ while (!(s==null));
@y
else{@+do {@<Add the width of node |s| to |disc_width|@>;
    s=link(s);
  } while (!(s==null));
@z

@x [39.874] l.18000
@/do@+{if (type(r)!=delta_node) if (total_demerits(r) < fewest_demerits)
@y
do {if (type(r)!=delta_node) if (total_demerits(r) < fewest_demerits)
@z
@x [39.874] l.18004
}@+ while (!(r==last_active));
@y
} while (!(r==last_active));
@z

@x [39.875] l.18014
@/do@+{if (type(r)!=delta_node)
@y
do {if (type(r)!=delta_node)
@z
@x [39.875] l.18027
}@+ while (!(r==last_active));
@y
} while (!(r==last_active));
@z

@x [39.877] l.18062
first breakpoint@>;
@y
first breakpoint@>@;
@z
@x [39.877] l.18065
@/do@+{@<Justify the line ending at breakpoint |cur_p|, and append it to the
@y
do {@<Justify the line ending at breakpoint |cur_p|, and append it to the
@z
@x [39.877] l.18070
}@+ while (!(cur_p==null));
@y
} while (!(cur_p==null));
@z

@x [39.878] l.18085
@/do@+{r=q;q=prev_break(q);next_break(r)=cur_p;cur_p=r;
}@+ while (!(q==null))
@y
do {r=q;q=prev_break(q);next_break(r)=cur_p;cur_p=r;
} while (!(q==null));
@z

@x [39.881] l.18142
      @<Change discretionary to compulsory and set |disc_break:=true|@>@;
@y
      @<Change discretionary to compulsory and set |disc_break=true|@>@;
@z

@x [40.894] l.18359
static void hyphenate_word(void)@t\2\2@>@/
{ pointer @!q, @!s, @!prev_s;@t\1@> /*miscellaneous nodes of temporary interest*/
@y
static void hyphenate_word(void)
{ @+pointer @!q, @!s, @!prev_s; /*miscellaneous nodes of temporary interest*/
@z

@x [41.913] l.18794
@/do@+{l=j;j=reconstitute(j, hn, bchar, qi(hyf_char))+1;
@y
do {l=j;j=reconstitute(j, hn, bchar, qi(hyf_char))+1;
@z
@x [41.913] l.18804
word, and continue to develop both branches until they become equivalent@>;
}@+ while (!(j > hn));
@y
word, and continue to develop both branches until they become equivalent@>@;
} while (!(j > hn));
@z

@x [41.914] l.18819
@/do@+{r=get_node(small_node_size);
@y
do {r=get_node(small_node_size);
@z
@x [41.914] l.18830
}@+ while (!(!odd(hyf[j-1])))
@y
} while (!(!odd(hyf[j-1])));
@z

@x [41.916] l.18862
  {@+@/do@+{l=reconstitute(l, hn, bchar, non_char)+1;
@y
  {@+do {l=reconstitute(l, hn, bchar, non_char)+1;
@z
@x [41.916] l.18872
  }@+ while (!(l >= j));
@y
  } while (!(l >= j));
@z

@x [42.924] l.18990
@/do@+{v=v+op_start[cur_lang];i=l-hyf_distance[v];
@y
do {v=v+op_start[cur_lang];i=l-hyf_distance[v];
@z
@x [42.924] l.18993
}@+ while (!(v==min_quarterword));
@y
} while (!(v==min_quarterword));
@z

@x [42.931] l.19058
  @/do@+{if (so(str_pool[u]) < hc[j]) goto not_found;
@y
  do {if (so(str_pool[u]) < hc[j]) goto not_found;
@z
@x [42.931] l.19061
  }@+ while (!(j > hn));
@y
  } while (!(j > hn));
@z

@x [42.941] l.19187
@/do@+{if (str_pool[u] < str_pool[v]) goto found;
@y
do {if (str_pool[u] < str_pool[v]) goto found;
@z
@x [42.941] l.19190
}@+ while (!(u==str_start[k+1]));
@y
} while (!(u==str_start[k+1]));
@z

@x [43.947] l.19336
@t\hskip10pt@>static quarterword @!trie_o[trie_size+1];
@y
static quarterword @!trie_o[trie_size+1];
@z
@x [43.947] l.19338
@t\hskip10pt@>static trie_pointer @!trie_l[trie_size+1];
@y
static trie_pointer @!trie_l[trie_size+1];
@z
@x [43.947] l.19340
@t\hskip10pt@>static trie_pointer @!trie_r[trie_size+1];
@y
static trie_pointer @!trie_r[trie_size+1];
@z
@x [43.947] l.19342
@t\hskip10pt@>static trie_pointer @!trie_ptr; /*the number of nodes in the trie*/
@y
static trie_pointer @!trie_ptr; /*the number of nodes in the trie*/
@z
@x [43.947] l.19343
@t\hskip10pt@>static trie_pointer @!trie_hash[trie_size+1];
@y
static trie_pointer @!trie_hash[trie_size+1];
@z

@x [43.950] l.19424
@t\hskip10pt@>static trie_pointer @!trie_min[256];
@y
static trie_pointer @!trie_min[256];
@z
@x [43.950] l.19426
@t\hskip10pt@>static trie_pointer @!trie_max; /*largest location used in |trie|*/
@y
static trie_pointer @!trie_max; /*largest location used in |trie|*/
@z
@x [43.950] l.19427
@t\hskip10pt@>static bool @!trie_not_ready; /*is the trie still in linked form?*/
@y
static bool @!trie_not_ready; /*is the trie still in linked form?*/
@z

@x [43.953] l.19478
found: @<Pack the family into |trie| relative to |h|@>;
@y
found: @<Pack the family into |trie| relative to |h|@>@;
@z

@x [43.954] l.19489
  @/do@+{incr(trie_max);trie_taken[trie_max]=false;
  trie_link(trie_max)=trie_max+1;trie_back(trie_max)=trie_max-1;
  }@+ while (!(trie_max==h+256));
@y
  do {incr(trie_max);trie_taken[trie_max]=false;
  trie_link(trie_max)=trie_max+1;trie_back(trie_max)=trie_max-1;
  } while (!(trie_max==h+256));
@z

@x [43.956] l.19504
@/do@+{z=h+so(trie_c[q]);l=trie_back(z);r=trie_link(z);
@y
do {z=h+so(trie_c[q]);l=trie_back(z);r=trie_link(z);
@z
@x [43.956] l.19508
  @/do@+{trie_min[l]=r;incr(l);
  }@+ while (!(l==ll));
@y
  do {trie_min[l]=r;incr(l);
  } while (!(l==ll));
@z
@x [43.956] l.19512
}@+ while (!(q==0))
@y
} while (!(q==0));
@z

@x [43.957] l.19520
@/do@+{q=trie_l[p];
@y
do {q=trie_l[p];
@z
@x [43.957] l.19525
}@+ while (!(p==0));
@y
} while (!(p==0));
@z

@x [43.958] l.19543
  @/do@+{s=trie_link(r);trie[r]=h;r=s;
  }@+ while (!(r > trie_max));
@y
  do {s=trie_link(r);trie[r]=h;r=s;
  } while (!(r > trie_max));
@z

@x [43.959] l.19560
@/do@+{q=trie_l[p];c=so(trie_c[p]);
@y
do {q=trie_l[p];c=so(trie_c[p]);
@z
@x [43.959] l.19564
}@+ while (!(p==0));
@y
} while (!(p==0));
@z

@x [43.963] l.19639
{@+@<Compute the trie op code, |v|, and set |l:=0|@>;
@y
{@+@<Compute the trie op code, |v|, and set |l=0|@>;
@z

@x [44.968] l.19727
and set~|p:=null|@>@;@+break;
@y
and set~|p=null|@>@;@+break;
@z

@x [45.986] l.20176
        @/do@+{q=link(q);
        if ((type(q)==ins_node)&&(subtype(q)==subtype(r))) incr(t);
        }@+ while (!(q==broken_ins(r)));
@y
        do {q=link(q);
        if ((type(q)==ins_node)&&(subtype(q)==subtype(r))) incr(t);
        } while (!(q==broken_ins(r)));
@z

@x [45.1027] l.20838
@/do@+{get_token();
}@+ while (!(loc==null));
@y
do get_token(); while (!(loc==null));
@z

@x [46.1030] l.20923
@t\4@>@<Cases of |main_control| that are not part of the inner loop@>@;
@y
@/@t\4@>@<Cases of |main_control| that are not part of the inner loop@>@;
@z

@x [46.1043] l.21236
  @<Modify the glue specification in |main_p| according to the space factor@>;
@y
  @<Modify the glue specification in |main_p| according to the space factor@>@;
@z

@x [46.1044] l.21245
shrink(main_p)=xn_over_d(shrink(main_p), 1000, space_factor)
@y
shrink(main_p)=xn_over_d(shrink(main_p), 1000, space_factor);
@z

@x [46.1045] l.21260
@t\4@>@<Forbidden cases detected in |main_control|@>@+@, any_mode(mac_param):
@y
@<Forbidden cases detected in |main_control|@>@+@, any_mode(mac_param):
@z

@x [47.1068] l.21613
@t\4@>@<Cases of |handle_right_brace| where a |right_brace| triggers a delayed
@y
@/@t\4@>@<Cases of |handle_right_brace| where a |right_brace| triggers a delayed
@z

@x [47.1077] l.21809
if (cur_val < 256) define(box_base+cur_val, box_ref, cur_box);
@y
if (cur_val < 256) @[g_define(box_base+cur_val, box_ref, cur_box)@];
@z

@x [47.1079] l.21848
from the list and make |cur_box| point to it; otherwise set |cur_box:=null|@>@;@+break;
@y
from the list and make |cur_box| point to it; otherwise set |cur_box=null|@>@;@+break;
@z

@x [47.1081] l.21877
@/do@+{p=q;
@y
do {p=q;
@z
@x [47.1081] l.21883
}@+ while (!(q==tail));
@y
} while (!(q==tail));
@z

@x [47.1105] l.22194
    @/do@+{p=q;
@y
    do {p=q;
@z
@x [47.1105] l.22200
    }@+ while (!(q==tail));
@y
    } while (!(q==tail));
@z

@x [47.1108] l.22241
case un_vbox: if (chr_code==copy_code) print_esc("unvcopy")
  @<Cases of |un_vbox| for |print_cmd_chr|@>;@/
@y
case un_vbox: if (chr_code==copy_code) print_esc("unvcopy");
  else @<Cases of |un_vbox| for |print_cmd_chr|@>@;
@z

@x [47.1123] l.22433
  @<Create a character node |q| for the next character, but set |q:=null|
@y
  @<Create a character node |q| for the next character, but set |q=null|
@z
@x [47.1123] l.22435
  if (q!=null) @<Append the accent with appropriate kerns, then set |p:=q|@>;
@y
  if (q!=null) @<Append the accent with appropriate kerns, then set |p=q|@>;
@z

@x [48.1160] l.22983
to null; set~|cur_val:=0|@>;
@y
to null; set~|cur_val=0|@>;
@z

@x [48.1189] l.23294
case left_right: if (chr_code==left_noad) print_esc("left")
@/@<Cases of |left_right| for |print_cmd_chr|@>;@/
@y
case left_right: if (chr_code==left_noad) print_esc("left");
else @<Cases of |left_right| for |print_cmd_chr|@>@;
@z

@x [48.1194] l.23362
the current math lists and set |danger:=true|@>;
@y
the current math lists and set |danger=true|@>;
@z
@x [48.1194] l.23372
the current math lists and set |danger:=true|@>;
@y
the current math lists and set |danger=true|@>;
@z

@x [49.1209] l.23647
  else if (chr_code==2) print_esc("outer")
  @/@<Cases of |prefix| for |print_cmd_chr|@>;@/
@y
  else if (chr_code==2) print_esc("outer");
  else @<Cases of |prefix| for |print_cmd_chr|@>@;
@z

@x [49.1214] l.23758
@d define(A, B, C) if (global) geq_define(A, B, C);@+else eq_define(A, B, C)
@y
@d g_define(A, B, C) if (global) geq_define(A, B, C);@+else eq_define(A, B, C)
@z

@x [49.1215] l.23776
restart: @/do@+{get_token();
}@+ while (!(cur_tok!=space_token));
@y
restart: do get_token(); while (!(cur_tok!=space_token));
@z

@x [49.1217] l.23800
case set_font: define(cur_font_loc, data, cur_chr);@+break;
@y
case set_font: g_define(cur_font_loc, data, cur_chr);@+break;
@z

@x [49.1218] l.23814
  define(p, call+(a%4), def_ref);
@y
  g_define(p, call+(a%4), def_ref);
@z

@x [49.1221] l.23832
    {@+@/do@+{get_token();
    }@+ while (!(cur_cmd!=spacer));
@y
    {@+do get_token(); while (!(cur_cmd!=spacer));
@z
@x [49.1221] l.23846
  define(p, cur_cmd, cur_chr);
@y
  g_define(p, cur_cmd, cur_chr);
@z

@x [49.1224] l.23901
case shorthand_def: {@+n=cur_chr;get_r_token();p=cur_cs;define(p, relax, 256);
@y
case shorthand_def: {@+n=cur_chr;get_r_token();p=cur_cs;g_define(p, relax, 256);
@z
@x [49.1224] l.23904
  case char_def_code: {@+scan_char_num();define(p, char_given, cur_val);
@y
  case char_def_code: {@+scan_char_num();g_define(p, char_given, cur_val);
@z
@x [49.1224] l.23906
  case math_char_def_code: {@+scan_fifteen_bit_int(); math_to_Umath(cur_val); define(p, math_given, cur_val);
@y
  case math_char_def_code: {@+scan_fifteen_bit_int(); math_to_Umath(cur_val); g_define(p, math_given, cur_val);
@z
@x [49.1224] l.23914
      define(p, j, cur_ptr);
@y
      g_define(p, j, cur_ptr);
@z
@x [49.1224] l.23918
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

@x [49.1225] l.23938
  p=cur_cs;read_toks(n, p, j);define(p, call, cur_val);
@y
  p=cur_cs;read_toks(n, p, j);g_define(p, call, cur_val);
@z

@x [49.1228] l.24008
  define(p, glue_ref, cur_val);
@y
  g_define(p, glue_ref, cur_val);
@z

@x [49.1232] l.24087
  else if (p < math_code_base) define(p+cp, data, cur_val);
  else if (p < del_code_base) define(p+cp, data, hi(cur_val));
@y
  else if (p < math_code_base) g_define(p+cp, data, cur_val);
  else if (p < del_code_base) g_define(p+cp, data, hi(cur_val));
@z

@x [49.1234] l.24105
  scan_optional_equals();scan_font_ident();define(p, data, cur_val);
@y
  scan_optional_equals();scan_font_ident();g_define(p, data, cur_val);
@z

@x [49.1246] l.24313
if (c==0) dead_cycles=cur_val
@/@<Cases for |alter_integer|@>@;@/
@y
if (c==0) dead_cycles=cur_val;
else @<Cases for |alter_integer|@>@;
@z

@x [49.1248] l.24352
  define(q, shape_ref, p);
@y
  g_define(q, shape_ref, p);
@z

@x [49.1252] l.24383
    @/do@+{get_token();}@+ while (!(cur_cmd==right_brace)); /*flush the patterns*/
@y
    do get_token(); while (!(cur_cmd==right_brace)); /*flush the patterns*/
@z

@x [49.1257] l.24437
define(u, set_font, null_font);scan_optional_equals();scan_file_name();
@y
g_define(u, set_font, null_font);scan_optional_equals();scan_file_name();
@z
@x [49.1257] l.24444
define(u, set_font, f);eqtb[font_id_base+f]=eqtb[u];font_id_text(f)=t;
@y
g_define(u, set_font, f);eqtb[font_id_base+f]=eqtb[u];font_id_text(f)=t;
@z

@x [50.1299] l.24836
for example, `\.{ (preloaded format=plain 1982.11.19)}', showing the year,
@y
for example, `\.{(preloaded format=plain 1982.11.19)}', showing the year,
@z

@x [50.1311] l.25026
@/do@+{for (k=p; k<=q+1; k++) dump_wd(mem[k]);
@y
do {for (k=p; k<=q+1; k++) dump_wd(mem[k]);
@z
@x [50.1311] l.25029
}@+ while (!(q==rover));
@y
} while (!(q==rover));
@z

@x [50.1312] l.25051
@/do@+{for (k=p; k<=q+1; k++) undump_wd(mem[k]);
@y
do {for (k=p; k<=q+1; k++) undump_wd(mem[k]);
@z
@x [50.1312] l.25055
}@+ while (!(q==rover));
@y
} while (!(q==rover));
@z

@x [50.1313] l.25070
@<Dump regions 1 to 4 of |eqtb|@>;
@<Dump regions 5 and 6 of |eqtb|@>;
@y
@<Dump regions 1 to 4 of |eqtb|@>@;
@<Dump regions 5 and 6 of |eqtb|@>@;
@z

@x [50.1314] l.25077
@<Undump regions 1 to 6 of |eqtb|@>;
@y
@<Undump regions 1 to 6 of |eqtb|@>@;
@z

@x [50.1315] l.25092
@/do@+{j=k;
@y
do {j=k;
@z
@x [50.1315] l.25110
}@+ while (!(k==int_base))
@y
} while (!(k==int_base));
@z

@x [50.1316] l.25113
@/do@+{j=k;
@y
do {j=k;
@z
@x [50.1316] l.25129
}@+ while (!(k > eqtb_size))
@y
} while (!(k > eqtb_size));
@z

@x [50.1317] l.25133
@/do@+{undump_int(x);
@y
do {undump_int(x);
@z
@x [50.1317] l.25141
}@+ while (!(k > eqtb_size))
@y
} while (!(k > eqtb_size));
@z

@x [50.1319] l.25159
@/do@+{undump(p+1, hash_used, p);undump_hh(hash[p]);
}@+ while (!(p==hash_used));
@y
do {undump(p+1, hash_used, p);undump_hh(hash[p]);
} while (!(p==hash_used));
@z

@x [53.1341] l.25860
@d label_node hitex_ext+23 /* represents a link to a another location */
@y
@d label_node hitex_ext+23 /* represents a link to another location */
@z

@x [53.1346] l.25955
  @/@<Cases of |extension| for |print_cmd_chr|@>@/
@y
  @/@t\4@>@<Cases of |extension| for |print_cmd_chr|@>@;
@z

@x [53.1348] l.26199
@/@<Cases for |do_extension|@>@/
@y
@/@t\4@>@<Cases for |do_extension|@>@;
@z

@x [53.1357] l.26330
@/@<Cases for displaying the |whatsit| node@>@/
@y
@/@t\4@>@<Cases for displaying the |whatsit| node@>@;
@z

@x [53.1358] l.26482
@/@<Cases for making a partial copy of the whatsit node@>@/
@y
@/@t\4@>@<Cases for making a partial copy of the whatsit node@>@;
@z

@x [53.1359] l.26676
@/@<Cases for wiping out the whatsit node@>@/
@y
@/@t\4@>@<Cases for wiping out the whatsit node@>@;
@z

@x [53.1363] l.26689
@ @d adv_past(A) @+if (subtype(A)==language_node)
@y
@ @d adv_past(A) if (subtype(A)==language_node)
@z

@x [53.1373] l.26788
@/do@+{get_token();
}@+ while (!(cur_tok==end_write_token));
@y
do get_token(); while (!(cur_tok==end_write_token));
@z

@x [54.1411] l.27263
  @/do@+{m=nest[p].mode_field;
  if (p > 0) decr(p);else m=vmode;
  }@+ while (!(m!=hmode));
@y
  do {m=nest[p].mode_field;
  if (p > 0) decr(p);else m=vmode;
  } while (!(m!=hmode));
@z

@x [54.1416] l.27390
@d show_tokens 5 /* \.{\\showtokens} , must be odd! */
@y
@d show_tokens 5 /* \.{\\showtokens}, must be odd! */
@z

@x [54.1419] l.27413
@ @<Cases of |the| for |print_cmd_chr|@>=;
else if (chr_code==1) print_esc("unexpanded");
else print_esc("detokenize")
@y
@ @<Cases of |the| for |print_cmd_chr|@>=
if (chr_code==1) print_esc("unexpanded");
else print_esc("detokenize");
@z

@x [54.1423] l.27450
    @/do@+{incr(n);p=link(p);@+}@+ while (!(p==null));
@y
    do {incr(n);p=link(p);@+} while (!(p==null));
@z
@x [54.1423] l.27452
    @/do@+{print_nl("### level ");print_int(n);print(": ");
@y
    do {print_nl("### level ");print_int(n);print(": ");
@z
@x [54.1423] l.27457
    }@+ while (!(p==null));
@y
    } while (!(p==null));
@z

@x [54.1425] l.27468
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

@x [54.1428] l.27477
@ @<Cases for |alter_integer|@>=;
else if (c==2)
@y
@ @<Cases for |alter_integer|@>=
if (c==2)
@z

@x [54.1430] l.27497
@ @<Cases of |left_right| for |print_cmd_chr|@>=;
else if (chr_code==middle_noad) print_esc("middle")
@y
@ @<Cases of |left_right| for |print_cmd_chr|@>=
if (chr_code==middle_noad) print_esc("middle");
@z

@x [54.1432] l.27507
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

@x [54.1444] l.27637
@ @<Cases of |read| for |print_cmd_chr|@>=;
else print_esc("readline")
@y
@ @<Cases of |read| for |print_cmd_chr|@>=
print_esc("readline");
@z

@x [54.1451] l.27713
  @/do@+{get_x_token();
  if (cur_cs==0) store_new_token(cur_tok);
  }@+ while (!(cur_cs!=0));
@y
  do {get_x_token();
  if (cur_cs==0) store_new_token(cur_tok);
  } while (!(cur_cs!=0));
@z

@x [54.1455] l.27757
@ @<Cases of |prefix| for |print_cmd_chr|@>=;
else if (chr_code==8) print_esc("protected")
@y
@ @<Cases of |prefix| for |print_cmd_chr|@>=
if (chr_code==8) print_esc("protected");
@z

@x [54.1467] l.27996
switch (s) {@<Cases for evaluation of the current term@>@;
@y
switch (s) {@t\4@>@<Cases for evaluation of the current term@>@;
@z

@x [54.1505] l.28657
@/do@+{i=hex_dig4(sa_index(q));p=q;q=link(p);free_node(p, s);
@y
do {i=hex_dig4(sa_index(q));p=q;q=link(p);free_node(p, s);
@z
@x [54.1505] l.28662
}@+ while (!(sa_used(q) > 0));
@y
} while (!(sa_used(q) > 0));
@z

@x [54.1509] l.28765
  @<Cases for |do_marks|@>@;
@y
  @t\4@>@<Cases for |do_marks|@>@;
@z

@x [54.1525] l.29042
@/do@+{p=sa_loc(sa_chain);
@y
do {p=sa_loc(sa_chain);
@z
@x [54.1525] l.29065
}@+ while (!(sa_chain==null));
@y
} while (!(sa_chain==null));
@z

@x [54.1527] l.29086
@/do@+{q=p;p=trie_r[q];
}@+ while (!((p==0)||(c <= so(trie_c[p]))));
@y
do {q=p;p=trie_r[q];
} while (!((p==0)||(c <= so(trie_c[p]))));
@z

@x [54.1534] l.29165
@ @<Cases of |un_vbox| for |print_cmd_chr|@>=;
else if (chr_code==last_box_code) print_esc("pagediscards");
else if (chr_code==vsplit_code) print_esc("splitdiscards")
@y
@ @<Cases of |un_vbox| for |print_cmd_chr|@>=
if (chr_code==last_box_code) print_esc("pagediscards");
else if (chr_code==vsplit_code) print_esc("splitdiscards");
@z

@x [61.1578] l.29522
case if_primitive_code: {@+@/do@+{get_token();}@+ while (!(cur_tok!=space_token));
@y
case if_primitive_code: {@+do get_token(); while (!(cur_tok!=space_token));
@z

@x [65.1617] l.29884
simply setting |xchg_buffer_length| to $0$.
@y
simply setting |xchg_buffer_length| to~$0$.
@z

@x [65.1622] l.29961
      do@+{i=fgetc(f); if (i==EOF) break;
@y
      do {i=fgetc(f); if (i==EOF) break;
@z
@x [65.1622] l.29964
       }@+ while (!(feof(f)||(l==0)));
@y
       } while (!(feof(f)||(l==0)));
@z

@x [66.1642] l.30249
@ The |@/do@+{| loop here preserves the following invariant relations
@y
@ The |do {| loop here preserves the following invariant relations
@z
@x [66.1642] l.30264
@/do@+{be_careful=p-q;p=be_careful+p;
@y
do {be_careful=p-q;p=be_careful+p;
@z
@x [66.1642] l.30268
}@+ while (!(f >= mpfract_one));
@y
} while (!(f >= mpfract_one));
@z

@x [66.1643] l.30291
@<Compute $p=\lfloor qf/2^{28}+{1\over2}\rfloor-q$@>;
@y
@<Compute $p=\lfloor qf/2^{28}+{1\over2}\rfloor-q$@>@;
@z

@x [66.1645] l.30316
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

@x [66.1665] l.30509
@/do@+{
  @/do@+{next_random;
@y
do {
  do {next_random;
@z
@x [66.1665] l.30514
  }@+ while (!(abs(x) < u));
@y
  } while (!(abs(x) < u));
@z
@x [66.1665] l.30517
}@+ while (!(ab_vs_cd(1024, l, x, x) >= 0));
@y
} while (!(ab_vs_cd(1024, l, x, x) >= 0));
@z

@x [74.1742] l.31954
  while (true)
  { r =link(prev_r);
@y
  loop@+{
    r =link(prev_r);
@z

@x [75.1756] l.32544
  else /* if (x<0) */
@y
  else /* if |(x<0)| */
@z

@x [78.1763] l.32828
    @<allocate a new |setpage_node| |p|@>@;
@y
    @<Allocate a new |setpage_node| |p|@>@;
@z

@x [78.1764] l.32835
@
@<allocate a new |setpage_node| |p|@>=
@y
@ @<Allocate a new |setpage_node| |p|@>=
@z

@x [79.1769] l.32924
#define HITEX_VERSION "1.1"
@y
@#
#define HITEX_VERSION "1.1"
@z

@x [82.1782] l.33140
static const int hmap_int[] ={@/
@y
static const int hmap_int[] ={@t\1\1@>@/
@z
@x [82.1782] l.33183
floating_penalty_no  /* |floating_penalty_code|	42*/
@y
@t\2\2@> floating_penalty_no  /* |floating_penalty_code| 42*/
@z

@x [82.1784] l.33195
if not successful, it returns $-1$.
@y
if not successful, it returns~$-1$.
@z

@x [83.1788] l.33238
static const int hmap_dimen[] ={@/
@y
static const int hmap_dimen[] ={@t\1\1@>@/
@z
@x [83.1788] l.33259
  emergency_stretch_no /* |emergency_stretch_code| 20 */
@y
  @t\2\2@> emergency_stretch_no /* |emergency_stretch_code| 20 */
@z
@x [85.1798] l.33365
static int hmap_glue[] ={

@y
static int hmap_glue[] ={@t\1\1@>@/
@z
@x [85.1798] l.33381
par_fill_skip_no  /* |par_fill_skip_code| 14 */
@y
@t\2\2@> par_fill_skip_no  /* |par_fill_skip_code| 14 */
@z

@x [87.1811] l.33633
{@+while (true)
  { if (p==q) return true;
@y
{@+loop@+{
    if (p==q) return true;
@z

@x [122.1882] l.35227
static struct option long_options[] = {@/
@y
static struct option long_options[] = {@t\1\1@>@/
@z
@x [122.1882] l.35258
      { 0, 0, 0, 0 }@+}@+;
@y
@t\2\2@> { 0, 0, 0, 0 } @/
};
@z

@x [122.1883] l.35268
{@+ while (true) {
@y
{@+ loop @+ {
@z

@x [122.1886] l.35318
#define ARGUMENT_IS(S) argument_is(long_options+option_index,S)
@y
#define ARGUMENT_IS(S) @[argument_is(long_options+option_index,S)@]
@z

@x [129.1917] l.35948
@+ }
@y
}
@z

@x [130.1919] l.36007
#ifdef @!INIT
@y
@#
#ifdef @!INIT
@+@t}\6\4\4{@>
@z

@x [132.1926] l.36193
the \TeX\ Live distribution and slightly modified.
@y
the \TeX\ Live distribution and slightly modified.

@s md5_byte_t int
@s md5_state_t int
@z
@x [132.1926] l.36254
/* static structure for file status set by |find_input_file| */
#ifdef WIN32
@y
@#
#ifdef WIN32
/* static structure for file status set by |find_input_file| */
@+@t}\6{@>
@z
@x [132.1926] l.36257
#define GET_FILE_STAT _stat(fname,&file_stat)
@y
#define GET_FILE_STAT @[_stat(fname,&file_stat)@]
@Z
@x [132.1926] l.36260
#define GET_FILE_STAT stat(fname,&file_stat)
@y
#define GET_FILE_STAT @[stat(fname,&file_stat)@]
@z
