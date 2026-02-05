@x [0.0] l.239
@s uint8_t int
@y
@s int8_t int
@s uint8_t int
@z
@x [0.0] l.262
@s to   do
@y
@s to   do

\def\contentspagenumber{0}
\def\tocpages{3} % HiTeX has a long ToC
\pageno=\contentspagenumber \advance \pageno by \tocpages
@z

@x [1.4] l.462
  @<Initialize whatever \TeX\ might access@>;
@y
  @<Initialize whatever \TeX\ might access@>@;
@z

@x [1.16] l.648
   /*\.{WEB}'s |else| acts like `\ignorespaces|while true do|\unskip'*/
@y
   /*\.{WEB}'s |loop| acts like `\ignorespaces|while true do|\unskip'*/
@z

@x [4.42] l.1145
@t\4@>@<Declare \Prote\ procedures for strings@>@;
@y
@#@<Declare \Prote\ procedures for strings@>@;
@z

@x [5.51] l.1307
@<Basic printing procedures@>=
#define @[put(F)@]    @[fwrite(&((F).d)@],@[sizeof((F).d),1,(F).f)@]@;
@y
@s sizeof x

@<Basic printing procedures@>=
#define @[put(F)@]    @[fwrite(&((F).d),sizeof((F).d),1,(F).f)@]
@z

@x [5.54] l.1389
  while (*s!=0) print_char(*s++);@+
@y
  while (*s!=0) print_char(*s++);
@z

@x [5.60] l.1515
@/do@+{dig[k]=n%10;n=n/10;incr(k);
}@+ while (!(n==0));
@y
do {dig[k]=n%10;n=n/10;incr(k);
} while (!(n==0));
@z

@x [5.62] l.1534
@/do@+{dig[k]=n%16;n=n/16;incr(k);
}@+ while (!(n==0));
@y
do {dig[k]=n%16;n=n/16;incr(k);
} while (!(n==0));
@z

@x [6.67] l.1611
|error;|\cr}}$$
@y
|error();|\cr}}$$
@z

@x [6.79] l.1830
  @<Delete \(c)|c-"0"| tokens and |goto resume|@>@;@+break;
@t\4\4@>@;
@y
  @<Delete \(c)|c-"0"| tokens and |goto resume|@>@;@+break;
@z

@x [6.84] l.1924
  @/do@+{decr(help_ptr);print(help_line[help_ptr]);print_ln();
  }@+ while (!(help_ptr==0));
@y
  do {decr(help_ptr);print(help_line[help_ptr]);print_ln();
  } while (!(help_ptr==0));
@z

@x [7.96] l.2094
typedef int32_t nonnegative_integer; /*$0\le x<2^{31}$*/
@y
typedef uint32_t nonnegative_integer; /*$0\le x<2^{31}$*/
@z

@x [7.98] l.2132
@/do@+{if (delta > unity) s=s+0100000-50000; /*round the last digit*/
print_char('0'+(s/unity));s=10*(s%unity);delta=delta*10;
}@+ while (!(s <= delta));
@y
do {if (delta > unity) s=s+0100000-50000; /*round the last digit*/
print_char('0'+(s/unity));s=10*(s%unity);delta=delta*10;
} while (!(s <= delta));
@z

@x [7.103] l.2251
@p @<Declare \Prote\ arithmetic routines@>@/
@y
@p @<Declare \Prote\ arithmetic routines@>@;
@z

@x [7.104] l.2285
@d float_constant(A) ((double)(A)) /*convert |int| constant to |double|*/
@y
@d float_constant(A) ((double)(A)) /*convert |int| constant to |double|*/
@#
@d perror e@&r@&r@&o@&r /* this is a \.{CWEB} coding trick: */
@f perror error /* `\&{perror}' will be equivalent to `\&{error}' */
@f error x /* but `|error|' will not be treated as a reserved word */
@z
@x [7.104] l.2291
#error  @=float type must have size 4@>
@y
#perror @=float type must have size 4@>
@z

@x [8.108] l.2401
typedef struct { @;@/
@y
@#
typedef struct {
@z
@x [8.108] l.2408
typedef struct { @;@/
@y
@#
typedef struct {
@z
@x [8.108] l.2414
typedef struct { @;@/
@y
@#
typedef struct {
@z
@x [8.108] l.2421
typedef struct {@+FILE *f;@+memory_word@,d;@+} word_file;
@y
@#
typedef struct {@+FILE *f;@+memory_word@,d;@+} word_file;
@z

@x [9.115] l.2564
link(p)=null; /*provide an oft-desired initialization of the new node*/
#ifdef @!STAT
incr(dyn_used);
#endif
@; /*maintain statistics*/
@y
link(p)=null; /*provide an oft-desired initialization of the new node*/
incr_dyn_used; /*maintain statistics*/
@z

@x [9.118] l.2603
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

@x [9.120] l.2652
@/do@+{@<Try to allocate within node |p| and its physical successors, and
@y
do {@<Try to allocate within node |p| and its physical successors, and
@z
@x [9.120] l.2656
}@+ while (!(p==rover)); /*repeat until the whole list has been traversed*/
@y
} while (!(p==rover)); /*repeat until the whole list has been traversed*/
@z

@x [10.129] l.2825
In order to make sure that the |character| code fits in a quarterword,
@y
In order to ensure that the |character| code fits in a quarterword,
@z

@x [10.140] l.3000
If |pre_break(p)==null|, the |ex_hyphen_penalty| will be charged for this
break.  Otherwise the |hyphen_penalty| will be charged.  The texts will
@y
If |pre_break(p)==null|, |ex_hyphen_penalty| will be charged for this
break.  Otherwise |hyphen_penalty| will be charged.  The texts will
@z

@x [10.147] l.3149
q=@<Current |mem| equivalent of glue parameter number |n|@>@t@>;
@y
q=@[@<Current |mem| equivalent of glue parameter number |n|@>@];
@z

@x [10.150] l.3189
@d kern_node 11 /*|type| of a kern node*/
@d explicit 1 /*|subtype| of kern nodes from \.{\\kern} and \.{\\/}*/
@y
@s explicit true

@d kern_node 11 /*|type| of a kern node*/
@d explicit 1 /*|subtype| of kern nodes from \.{\\kern} and \.{\\/}*/
@z

@x [11.160] l.3350
@t\hskip10pt@>static bool @!was_free0[mem_max-mem_min+1],
@y
static bool @!was_free0[mem_max-mem_min+1],
@z
@x [11.160] l.3353
@t\hskip10pt@>static pointer @!was_mem_end, @!was_lo_max, @!was_hi_min;
@y
static pointer @!was_mem_end, @!was_lo_max, @!was_hi_min;
@z
@x [11.160] l.3355
@t\hskip10pt@>static bool @!panicking; /*do we want to check memory constantly?*/
@y
static bool @!panicking; /*do we want to check memory constantly?*/
@z

@x [11.164] l.3405
@/do@+{if ((p >= lo_mem_max)||(p < mem_min)) clobbered=true;
@y
do {if ((p >= lo_mem_max)||(p < mem_min)) clobbered=true;
@z
@x [11.164] l.3422
}@+ while (!(p==rover));
@y
} while (!(p==rover));
@z

@x [12.169] l.3517
        else@<Print the font identifier for |font(p)|@>;
@y
        else@<Print the font identifier for |font(p)|@>@;
@z
@x [12.169] l.3526
  else@<Print a short indication of the contents of node |p|@>;
@y
  else@<Print a short indication of the contents of node |p|@>@;
@z

@x [12.171] l.3559
  else@<Print the font identifier for |font(p)|@>;
@y
  else@<Print the font identifier for |font(p)|@>@;
@z

@x [12.178] l.3699
  @t\4@>@<Cases of |show_node_list| that arise in mlists only@>@;
@y
  @/@t\4@>@<Cases of |show_node_list| that arise in mlists only@>@;
@z

@x [12.193] l.3860
{@+@<Assign the values |depth_threshold:=show_box_depth| and |breadth_max:=show_box_breadth|@>;
@y
{@+@<Assign the values |depth_threshold=show_box_depth| and |breadth_max=show_box_breadth|@>;
@z

@x [13.196] l.3898
fast_delete_glue_ref(p)
@y
fast_delete_glue_ref(p)@;
@z

@x [13.197] l.3939
    @t\4@>@<Cases of |flush_node_list| that arise in mlists only@>@;
@y
    @/@t\4@>@<Cases of |flush_node_list| that arise in mlists only@>@;
@z

@x [17.226] l.4847
  @/@<Cases of |assign_toks| for |print_cmd_chr|@>@/
@y
  @/@t\4@>@<Cases of |assign_toks| for |print_cmd_chr|@>@;
@z

@x [17.231] l.5115
@<Assign the values |depth_threshold:=show_box_depth|...@>=
@y
@<Assign the values |depth_threshold=show_box_depth|...@>=
@z

@x [17.232] l.5180
@/@<Cases for |print_param|@>@/
@y
@/@t\4@>@<Cases for |print_param|@>@;
@z

@x [17.236] l.5335
@p static void fix_date_and_time(void)
@y
@s tm int
@p static void fix_date_and_time(void)
@z

@x [17.247] l.5538
@p @t\4@>@<Declare the procedure called |print_cmd_chr|@>@;@/
#ifdef @!STAT
@y
@p @<Declare the procedure called |print_cmd_chr|@>@;
#ifdef @!STAT
@+@t}\6\4\4{@>
@z

@x [18.255] l.5665
  {@+@/do@+{if (hash_is_full) overflow("hash size", hash_size);
@y
  {@+do {if (hash_is_full) overflow("hash size", hash_size);
@z
@x [18.255] l.5668
  }@+ while (!(text(hash_used)==0)); /*search for an empty location in |hash|*/
@y
  } while (!(text(hash_used)==0)); /*search for an empty location in |hash|*/
@z

@x [18.261] l.5886
@/@<Cases of |expandafter| for |print_cmd_chr|@>@/
@y
@/@t\4@>@<Cases of |expandafter| for |print_cmd_chr|@>@;
@z
@x [18.261] l.5906
case read_to_cs: if (chr_code==0) print_esc("read")
  @<Cases of |read| for |print_cmd_chr|@>;@+break;
@y
case read_to_cs: if (chr_code==0) print_esc("read");
  else @<Cases of |read| for |print_cmd_chr|@>;@+break;
@z
@x [18.261] l.5913
  @<Cases of |set_shape| for |print_cmd_chr|@>@;@/
@y
  @/@t\4@>@<Cases of |set_shape| for |print_cmd_chr|@>@;
@z
@x [18.261] l.5915
case the: if (chr_code==0) print_esc("the")
  @<Cases of |the| for |print_cmd_chr|@>;@+break;
@y
case the: if (chr_code==0) print_esc("the");
  else @<Cases of |the| for |print_cmd_chr|@>;@+break;
@z

@x [18.262] l.5937
printn_esc(font_id_text(font(p)))
@y
printn_esc(font_id_text(font(p)));
@z

@x [19.263] l.5963
of the current group, when it should be
@y
of the current group and
@z

@x [19.270] l.6122
@/@<Cases for |eq_destroy|@>@/
@y
@/@t\4@>@<Cases for |eq_destroy|@>@;
@z

@x [19.272] l.6160
#define  assign_trace(A, B)
@y
#define  assign_trace(A, B) @[@]
@z

@x [21.293] l.6672
@t\4@>@<Cases of |print_cmd_chr| for symbolic printing of primitives@>@/
@y
@/@t\4@>@<Cases of |print_cmd_chr| for symbolic printing of primitives@>@;
@z

@x [23.326] l.7410
first=buf_size;@/do@+{buffer[first]=0;decr(first);}@+ while (!(first==0));
@y
first=buf_size; do {buffer[first]=0;decr(first);} while (!(first==0));
@z

@x [24.328] l.7444
to the appearance of \.{\\par}; we must set |cur_cs:=par_loc|
@y
to the appearance of \.{\\par}; we must set |cur_cs=par_loc|
@z

@x [24.339] l.7615
any_state_plus(escape): @<Scan a control sequence and set |state:=skip_blanks|
@y
any_state_plus(escape): @<Scan a control sequence and set |state=skip_blanks|
@z
@x [24.339] l.7618
and set |state:=mid_line|@>@;@+break;
@y
and set |state=mid_line|@>@;@+break;
@z
@x [24.339] l.7620
like~\.{\^\^A} or~\.{\^\^df}, then |goto reswitch|, otherwise set |state:=mid_line|@>@;@+break;
@y
like~\.{\^\^A} or~\.{\^\^df}, then |goto reswitch|, otherwise set |state=mid_line|@>@;@+break;
@z
@x [24.339] l.7622
@t\4@>@<Handle situations involving spaces, braces, changes of state@>@;
@y
@/@t\4@>@<Handle situations involving spaces, braces, changes of state@>@;
@z

@x [24.351] l.7804
@/do@+{j=k; k=utf8_get_cur_chr(buffer,k,limit);
@y
@/do {j=k; k=utf8_get_cur_chr(buffer,k,limit);
@z
@x [24.351] l.7806
}@+ while (!((cat!=letter)||(k > limit)));
@y
}@+ while (!((cat!=letter)||(k > limit)));
@z

@x [25.362] l.8051
@/@<Cases for |expandafter|@>@/
@y
@/@t\4@>@<Cases for |expandafter|@>@;
@z

@x [25.364] l.8073
necessary to insert a special `|dont_expand|' marker into \TeX's reading
@y
necessary to insert a special marker `|dont_expand|' into \TeX's reading
@z

@x [25.367] l.8115
@/do@+{get_x_token();
if (cur_cs==0) store_new_token(cur_tok);
}@+ while (!(cur_cs!=0));
@y
do {get_x_token();
if (cur_cs==0) store_new_token(cur_tok);
} while (!(cur_cs!=0));
@z

@x [25.372] l.8175
case input: if (chr_code==0) print_esc("input")
  @/@<Cases of |input| for |print_cmd_chr|@>;@/
@y
case input: if (chr_code==0) print_esc("input");
  else @<Cases of |input| for |print_cmd_chr|@>@;
@z

@x [25.373] l.8180
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

@x [25.386] l.8393
@/do@+{link(temp_head)=null;
@y
do {link(temp_head)=null;
@z
@x [25.386] l.8398
@<Scan a parameter until its delimiter string has been found; or, if |s=null|,
@y
@<Scan a parameter until its delimiter string has been found; or, if |s==null|,
@z
@x [25.386] l.8401
}@+ while (!(info(r)==end_match_token));
@y
} while (!(info(r)==end_match_token));
@z

@x [25.387] l.8415
resume| if a partial match is still in effect; but abort if |s=null|@>;
@y
resume| if a partial match is still in effect; but abort if |s==null|@>;
@z

@x [25.392] l.8501
    @/do@+{store_new_token(info(t));incr(m);u=link(t);v=s;
@y
    do {store_new_token(info(t));incr(m);u=link(t);v=s;
@z
@x [25.392] l.8510
    }@+ while (!(t==r));
@y
    } while (!(t==r));
@z

@x [26.399] l.8602
@/do@+{get_x_token();
}@+ while (!((cur_cmd!=spacer)&&(cur_cmd!=relax)))
@y
do get_x_token(); while (!((cur_cmd!=spacer)&&(cur_cmd!=relax)))
@z

@x [26.401] l.8614
@/do@+{get_x_token();
}@+ while (!(cur_cmd!=spacer))
@y
do get_x_token(); while (!(cur_cmd!=spacer))
@z

@x [26.404] l.8674
@t\4\4@>@<Declare procedures that scan restricted classes of integers@>@;
@t\4\4@>@<Declare \eTeX\ procedures for scanning@>@;
@t\4\4@>@<Declare procedures that scan font-related stuff@>@;
@y
@#@<Declare procedures that scan restricted classes of integers@>@;
@<Declare \eTeX\ procedures for scanning@>@;
@<Declare procedures that scan font-related stuff@>@;
@z

@x [26.406] l.8719
and `\.{\\muskip}' all having |internal_register| as their command code; they are
@y
and `\.{\\muskip}' all having command code |internal_register|; they are
@z

@x [26.408] l.8757
identifier, provided that |level=tok_val|@>@;@+break;
@y
identifier, provided that |level==tok_val|@>@;@+break;
@z

@x [26.412] l.8879
case set_page_int: if (chr_code==0) print_esc("deadcycles")
@/@<Cases of |set_page_int| for |print_cmd_chr|@>;@/
@+else print_esc("insertpenalties");@+break;
@y
case set_page_int: if (chr_code==0) print_esc("deadcycles");
else @<Cases of |set_page_int| for |print_cmd_chr|@>@;
else print_esc("insertpenalties");@+break;
@z
@x [26.412] l.8890
  @/@<Cases of |last_item| for |print_cmd_chr|@>@/
@y
  @/@t\4@>@<Cases of |last_item| for |print_cmd_chr|@>@;
@z

@x [26.414] l.8912
{@+if (m==0) cur_val=dead_cycles
@/@<Cases for `Fetch the |dead_cycles| or the |insert_penalties|'@>;@/
@y
{@+if (m==0) cur_val=dead_cycles;
else @<Cases for `Fetch the |dead_cycles| or the |insert_penalties|'@>@;
@z

@x [26.419] l.8964
  @/@<Cases for fetching a dimension value@>@/
@y
  @/@t\4@>@<Cases for fetching a dimension value@>@;
@z
@x [26.419] l.8971
  @/@<Cases for fetching an integer value@>@/
@y
  @/@t\4@>@<Cases for fetching an integer value@>@;
@z

@x [26.436] l.9196
@/do@+{@<Get the next non-blank non-call token@>;
@y
do {@<Get the next non-blank non-call token@>;
@z
@x [26.436] l.9200
}@+ while (!(cur_tok!=other_token+'+'))
@y
} while (!(cur_tok!=other_token+'+'));
@z

@x [26.443] l.9333
  {@+@<Get the next non-blank non-sign...@>;
@y
  {@+@<Get the next non-blank non-sign...@>@;
@z

@x [26.456] l.9572
mu=(level==mu_val);@<Get the next non-blank non-sign...@>;
@y
mu=(level==mu_val);@<Get the next non-blank non-sign...@>@;
@z

@x [27.464] l.9752
  @/@<Cases of |convert| for |print_cmd_chr|@>@/
@y
  @/@t\4@>@<Cases of |convert| for |print_cmd_chr|@>@;
@z

@x [27.466] l.9783
@/@<Cases of `Scan the argument for command |c|'@>@/
@y
@/@t\4@>@<Cases of `Scan the argument for command |c|'@>@;
@z

@x [27.467] l.9801
@/@<Cases of `Print the result of command |c|'@>@/
@y
@/@t\4@>@<Cases of `Print the result of command |c|'@>@;
@z

@x [27.468] l.9847
@t\4@>@<Declare \Prote\ procedures for token lists@>@;@/
@y
@#@<Declare \Prote\ procedures for token lists@>@;
@z

@x [27.477] l.9977
@/do@+{@<Input and store tokens from the next line of the file@>;
}@+ while (!(align_state==1000000));
@y
do @<Input and store tokens from the next line of the file@>@;
while (!(align_state==1000000));
@z

@x [27.478] l.9983
begin_file_reading();name=m+1;
@y
{begin_file_reading();name=m+1;
@z
@x [27.478] l.9996
    {@+@/do@+{get_token();}@+ while (!(cur_tok==0));
@y
    {@+do get_token(); while (!(cur_tok==0));
@z
@x [27.478] l.10001
done: end_file_reading()
@y
done: end_file_reading();}
@z

@x [28.483] l.10119
  @/@<Cases of |if_test| for |print_cmd_chr|@>@/
@y
  @/@t\4@>@<Cases of |if_test| for |print_cmd_chr|@>@;
@z

@x [28.496] l.10300
@/@<Cases for |conditional|@>@/
@y
@/@t\4@>@<Cases for |conditional|@>@;
@z

@x [28.501] l.10346
\.{\\if\\noexpand} or following \.{\\ifcat\\noexpand}. We use the fact that
@y
\.{\\if\\noexpand} or \.{\\ifcat\\noexpand}. We use the fact that
@z

@x [29.513] l.10588
into the |name_of_file| value that is used to open files. The present code
@y
into the value |name_of_file| that is used to open files. The present code
@z

@x [29.519] l.10663
#ifdef @!INIT
@y
#ifdef @!INIT
@+@t}\6\4\4{@>
@z

@x [30.560] l.11595
@ The preliminary settings of the index-offset variables |char_base|,
@y
@ The preliminary values of the index-offset variables |char_base|,
@z

@x [30.572] l.11840
@<Issue an error message if |cur_val=fmem_ptr|@>;
@y
@<Issue an error message if |cur_val==fmem_ptr|@>;
@z

@x [30.573] l.11843
@ @<Issue an error message if |cur_val=fmem_ptr|@>=
@y
@ @<Issue an error message if |cur_val==fmem_ptr|@>=
@z

@x [30.574] l.11855
{@+@/do@+{if (fmem_ptr==font_mem_size)
@y
{@+do {if (fmem_ptr==font_mem_size)
@z
@x [30.574] l.11859
}@+ while (!(n==font_params[f]));
@y
} while (!(n==font_params[f]));
@z

@x [32.585] l.12145
@ @p @t\4@>@<Declare procedures needed in |hlist_out|, |vlist_out|@>@t@>@/
@y
@ @p @<Declare procedures needed in |hlist_out|, |vlist_out|@>@t@>@;
@z

@x [33.610] l.12468
@p static void append_to_vlist(pointer @!b)@t\2\2@>@/
{ bool height_known;@t\1@>@/
@y
@p static void append_to_vlist(pointer @!b)
{ @+bool height_known;
@z
@x [33.610] l.12473
  {@+scaled d;@t\1@> /*deficiency of space between baselines*/
@y
  {@+scaled d; /*deficiency of space between baselines*/
@z
@x [33.610] l.12475
  {@+d=width(baseline_skip)-prev_depth-height(b);
@y
  d=width(baseline_skip)-prev_depth-height(b);
@z
@x [33.610] l.12481
  }@+
} @+  else @+if (prev_depth<=unknown_depth || prev_depth>ignore_depth )@t\2@>@/
@y
} @+  else @+if (prev_depth<=unknown_depth || prev_depth>ignore_depth ) @/
@z

@x [35.638] l.13123
  @/do@+{z=z-16;g=fam_fnt(z);
@y
  do {z=z-16;g=fam_fnt(z);
@z
@x [35.638] l.13128
  }@+ while (!(z < 16));
@y
  } while (!(z < 16));
@z

@x [36.659] l.13538
@t\4@>@<Cases for noads that can follow a |bin_noad|@>@;
@t\4@>@<Cases for nodes that can appear in an mlist, after which we |goto
@y
@/@t\4@>@<Cases for noads that can follow a |bin_noad|@>@;
@/@t\4@>@<Cases for nodes that can appear in an mlist, after which we |goto
@z

@x [36.665] l.13627
by procedures with names
like |make_fraction|, |make_radical|, etc. To illustrate
@y
by procedures
like |make_fraction|, |make_radical|, etc. To illustrate
@z

@x [36.698] l.14299
  @/do@+{p=link(p);
  }@+ while (!(link(p)==null));
@y
  do p=link(p); while (!(link(p)==null));
@z

@x [37.700] l.14441
Their |glue_sign| and |glue_order| are pre-empted as well, since it
@y
And their fields |glue_sign| and |glue_order| are pre-empted as well, since it
@z

@x [37.705] l.14525
@p @t\4@>@<Declare the procedure called |get_preamble_token|@>@t@>@/
@y
@p @<Declare the procedure called |get_preamble_token|@>@;
@z

@x [37.716] l.14713
@/do@+{get_x_or_protected();
}@+ while (!(cur_cmd!=spacer));
@y
do get_x_or_protected(); while (!(cur_cmd!=spacer));
@z

@x [37.717] l.14733
@p @t\4@>@<Declare the procedure called |init_span|@>@t@>@/
@y
@p @<Declare the procedure called |init_span|@>@;
@z

@x [37.722] l.14826
@/do@+{get_x_or_protected();
}@+ while (!(cur_cmd!=spacer));
@y
do get_x_or_protected(); while (!(cur_cmd!=spacer));
@z

@x [37.729] l.14921
@/do@+{incr(n);q=link(link(q));
}@+ while (!(q==cur_align));
@y
do {incr(n);q=link(link(q));
} while (!(q==cur_align));
@z

@x [37.731] l.14979
the alignrecords to dummy unset boxes@>;
@y
the alignrecords to dummy unset boxes@>@;
@z
@x [37.731] l.14981
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
@x [37.731] l.14986
  and let |p| point to this prototype box@>;
  @<Set the glue in all the unset boxes of the current list@>;
  flush_node_list(p);pop_alignment();
@y
  and let |p| point to this prototype box@>@;
  @<Set the glue in all the unset boxes of the current list@>@;
  flush_node_list(p);pop_alignment();
@z
@x [37.731] l.14990
@<Insert the \(c)current list into its environment@>;
} @/
@y
@<Insert the \(c)current list into its environment@>;
} @#
@z

@x [37.732] l.14993
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

@x [37.733] l.15031
@/do@+{flush_list(u_part(q));flush_list(v_part(q));
@y
do {flush_list(u_part(q));flush_list(v_part(q));
@z
@x [37.733] l.15045
}@+ while (!(q==null))
@y
} while (!(q==null));
@z

@x [37.735] l.15057
|@/do@+{| loop is that we want to dispense with node |r|, in |q|'s list,
@y
|do {| loop is that we want to dispense with node |r|, in |q|'s list,
@z
@x [37.735] l.15065
@/do@+{width(r)=width(r)-t;u=info(r);
@y
do {width(r)=width(r)-t;u=info(r);
@z
@x [37.735] l.15076
}@+ while (!(r==end_span));
@y
} while (!(r==end_span));
@z

@x [37.736] l.15093
  @/do@+{height(q)=width(q);width(q)=0;q=link(link(q));
  }@+ while (!(q==null));
@y
  do {height(q)=width(q);width(q)=0;q=link(link(q));
  } while (!(q==null));
@z
@x [37.736] l.15097
  @/do@+{width(q)=height(q);height(q)=0;q=link(link(q));
  }@+ while (!(q==null));
@y
  do {width(q)=height(q);height(q)=0;q=link(link(q));
  } while (!(q==null));
@z

@x [37.739] l.15136
@/do@+{@<Set the glue in node |r| and change it from an unset node@>;
r=link(link(r));s=link(link(s));
}@+ while (!(r==null));
@y
do {@<Set the glue in node |r| and change it from an unset node@>;
r=link(link(r));s=link(link(s));
} while (!(r==null));
@z

@x [38.755] l.15470
@d do_all_six(A) A(1);A(2);A(3);A(4);A(5);A(6)
@y
@d do_all_six(A) A(1);A(2);A(3);A(4);A(5);A(6)@;
@z

@x [38.761] l.15628
feasible breaks in that class; then |return| if |r=last_active|, otherwise
@y
feasible breaks in that class; then |return| if |r==last_active|, otherwise
@z

@x [38.768] l.15730
@ It is not necessary to create new active nodes having |minimal_demerits|
greater than
|minimum_demerits+abs(adj_demerits)|, since such active nodes will never
@y
@ It is not necessary to create new active nodes with |minimal_demerits|
greater than
|minimum_demerits| ${}+|abs(adj_demerits)|$, since such active nodes will never
@z

@x [38.784] l.16044
subarray |cur_active_width[2 dotdot 5]|, in units of points, fil, fill, and filll.
@y
array |cur_active_width| at positions |[2 dotdot 5]|, in units of points, fil, fill, and filll.
@z

@x [38.788] l.16120
  @<Print the list between |printed_node| and |cur_p|, then set |printed_node:=cur_p|@>;
@y
  @<Print the list between |printed_node| and |cur_p|, then set |printed_node=cur_p|@>;
@z

@x [39.799] l.16381
@/do@+{f=font(cur_p);
@y
do {f=font(cur_p);
@z
@x [39.799] l.16384
}@+ while (!(!is_char_node(cur_p)));
@y
} while (!(!is_char_node(cur_p)));
@z

@x [39.801] l.16409
else{@+@/do@+{@<Add the width of node |s| to |disc_width|@>;
    s=link(s);
  }@+ while (!(s==null));
@y
else{@+do {@<Add the width of node |s| to |disc_width|@>;
    s=link(s);
  } while (!(s==null));
@z

@x [39.806] l.16489
@/do@+{if (type(r)!=delta_node) if (total_demerits(r) < fewest_demerits)
@y
do {if (type(r)!=delta_node) if (total_demerits(r) < fewest_demerits)
@z
@x [39.806] l.16493
}@+ while (!(r==last_active));
@y
} while (!(r==last_active));
@z

@x [39.807] l.16503
@/do@+{if (type(r)!=delta_node)
@y
do {if (type(r)!=delta_node)
@z
@x [39.807] l.16516
}@+ while (!(r==last_active));
@y
} while (!(r==last_active));
@z

@x [39.808] l.16520
@ Once the best sequence of breakpoints has been found (hurray), we call on the
@y
@ Once the best sequence of breakpoints has been found, we call on the
@z

@x [39.809] l.16551
first breakpoint@>;
@y
first breakpoint@>@;
@z
@x [39.809] l.16554
@/do@+{@<Justify the line ending at breakpoint |cur_p|, and append it to the
@y
do {@<Justify the line ending at breakpoint |cur_p|, and append it to the
@z
@x [39.809] l.16559
}@+ while (!(cur_p==null));
@y
} while (!(cur_p==null));
@z

@x [39.810] l.16574
@/do@+{r=q;q=prev_break(q);next_break(r)=cur_p;cur_p=r;
}@+ while (!(q==null))
@y
do {r=q;q=prev_break(q);next_break(r)=cur_p;cur_p=r;
} while (!(q==null));
@z

@x [39.813] l.16631
      @<Change discretionary to compulsory and set |disc_break:=true|@>@;
@y
      @<Change discretionary to compulsory and set |disc_break=true|@>@;
@z

@x [39.822] l.16738
from the |inter_line_penalty| parameter, and from lines that end at
@y
from the parameter |inter_line_penalty|, and from lines that end at
@z

@x [40.826] l.16860
static void hyphenate_word(void)@t\2\2@>@/
{ pointer @!q, @!s, @!prev_s;@t\1@> /*miscellaneous nodes of temporary interest*/
@y
static void hyphenate_word(void)
{ @+pointer @!q, @!s, @!prev_s; /*miscellaneous nodes of temporary interest*/
@z

@x [41.845] l.17297
@/do@+{l=j;j=reconstitute(j, hn, bchar, qi(hyf_char))+1;
@y
do {l=j;j=reconstitute(j, hn, bchar, qi(hyf_char))+1;
@z
@x [41.845] l.17307
word, and continue to develop both branches until they become equivalent@>;
}@+ while (!(j > hn));
@y
word, and continue to develop both branches until they become equivalent@>@;
} while (!(j > hn));
@z

@x [41.846] l.17322
@/do@+{r=get_node(small_node_size);
@y
do {r=get_node(small_node_size);
@z
@x [41.846] l.17333
}@+ while (!(!odd(hyf[j-1])))
@y
} while (!(!odd(hyf[j-1])));
@z

@x [41.848] l.17365
  {@+@/do@+{l=reconstitute(l, hn, bchar, non_char)+1;
@y
  {@+do {l=reconstitute(l, hn, bchar, non_char)+1;
@z
@x [41.848] l.17375
  }@+ while (!(l >= j));
@y
  } while (!(l >= j));
@z

@x [42.856] l.17493
@/do@+{v=v+op_start[cur_lang];i=l-hyf_distance[v];
@y
do {v=v+op_start[cur_lang];i=l-hyf_distance[v];
@z
@x [42.856] l.17496
}@+ while (!(v==min_quarterword));
@y
} while (!(v==min_quarterword));
@z

@x [42.863] l.17561
  @/do@+{if (str_pool[u] < hc[j]) goto not_found;
@y
  @/do {if (str_pool[u] < hc[j]) goto not_found;
@z
@x [42.863] l.17564
  }@+ while (!(j > hn));
@y
  } while (!(j > hn));
@z

@x [42.873] l.17690
@/do@+{if (str_pool[u] < str_pool[v]) goto found;
@y
do {if (str_pool[u] < str_pool[v]) goto found;
@z
@x [42.873] l.17693
}@+ while (!(u==str_start[k+1]));
@y
} while (!(u==str_start[k+1]));
@z

@x [43.875] l.17718
problem of creating the |hyf_distance|, |hyf_num|, and |hyf_next| arrays.
@y
problem of creating the arrays |hyf_distance|, |hyf_num|, and |hyf_next|.
@z

@x [43.879] l.17839
@t\hskip10pt@>static quarterword @!trie_o[trie_size+1];
@y
static quarterword @!trie_o[trie_size+1];
@z
@x [43.879] l.17841
@t\hskip10pt@>static trie_pointer @!trie_l[trie_size+1];
@y
static trie_pointer @!trie_l[trie_size+1];
@z
@x [43.879] l.17843
@t\hskip10pt@>static trie_pointer @!trie_r[trie_size+1];
@y
static trie_pointer @!trie_r[trie_size+1];
@z
@x [43.879] l.17845
@t\hskip10pt@>static trie_pointer @!trie_ptr; /*the number of nodes in the trie*/
@y
static trie_pointer @!trie_ptr; /*the number of nodes in the trie*/
@z
@x [43.879] l.17846
@t\hskip10pt@>static trie_pointer @!trie_hash[trie_size+1];
@y
static trie_pointer @!trie_hash[trie_size+1];
@z

@x [43.882] l.17930
@t\hskip10pt@>static trie_pointer @!trie_max; /*largest location used in |trie|*/
@y
static trie_pointer @!trie_max; /*largest location used in |trie|*/
@z
@x [43.882] l.17931
@t\hskip10pt@>static bool @!trie_not_ready; /*is the trie still in linked form?*/
@y
static bool @!trie_not_ready; /*is the trie still in linked form?*/
@z

@x [43.885] l.17983
found: @<Pack the family into |trie| relative to |h|@>;
@y
found: @<Pack the family into |trie| relative to |h|@>@;
@z

@x [43.886] l.17994
  @/do@+{incr(trie_max);trie_taken[trie_max]=false;
  trie_link(trie_max)=trie_max+1;trie_back(trie_max)=trie_max-1;
  }@+ while (!(trie_max==h+max_hyph_char));
@y
  do {incr(trie_max);trie_taken[trie_max]=false;
  trie_link(trie_max)=trie_max+1;trie_back(trie_max)=trie_max-1;
  } while (!(trie_max==h+max_hyph_char));
@z

@x [43.888] l.18009
@/do@+{
@y
@/do {
@z
@x [43.888] l.18014
  @/do@+{trie_min[l]=r;incr(l);

  }@+ while (!(l==ll));
@y
  do {trie_min[l]=r;incr(l);
  } while (!(l==ll));
@z
@x [43.888] l.18019
}@+ while (!(q==0))
@y
} while (!(q==0));
@z

@x [43.889] l.18027
@/do@+{q=trie_l[p];
@y
do {q=trie_l[p];
@z
@x [43.889] l.18032
}@+ while (!(p==0));
@y
} while (!(p==0));
@z

@x [43.890] l.18050
  @/do@+{s=trie_link(r);trie[r]=h;r=s;
  }@+ while (!(r > trie_max));
@y
  do {s=trie_link(r);trie[r]=h;r=s;
  } while (!(r > trie_max));
@z

@x [43.891] l.18067
@/do@+{q=trie_l[p];c=trie_c[p];
@y
@/do {q=trie_l[p];c=trie_c[p];
@z
@x [43.891] l.18071
}@+ while (!(p==0));
@y
} while (!(p==0));
@z

@x [43.895] l.18149
{@+@<Compute the trie op code, |v|, and set |l:=0|@>;
@y
{@+@<Compute the trie op code, |v|, and set |l=0|@>;
@z

@x [44.900] l.18239
and set~|p:=null|@>@;@+break;
@y
and set~|p=null|@>@;@+break;
@z

@x [45.918] l.18686
        @/do@+{q=link(q);
        if ((type(q)==ins_node)&&(subtype(q)==subtype(r))) incr(t);
        }@+ while (!(q==broken_ins(r)));
@y
        do {q=link(q);
        if ((type(q)==ins_node)&&(subtype(q)==subtype(r))) incr(t);
        } while (!(q==broken_ins(r)));
@z

@x [45.929] l.18836
@/do@+{get_token();
}@+ while (!(loc==null));
@y
do get_token(); while (!(loc==null));
@z

@x [46.932] l.18921
@t\4@>@<Cases of |main_control| that are not part of the inner loop@>@;
@y
@/@t\4@>@<Cases of |main_control| that are not part of the inner loop@>@;
@z

@x [46.936] l.18983
set it equal to |sf_code(cur_chr)|, except that it should never change
@y
set it equal to |sf_code|( |cur_chr|), except that it should never change
@z

@x [46.945] l.19236
  @<Modify the glue specification in |main_p| according to the space factor@>;
@y
  @<Modify the glue specification in |main_p| according to the space factor@>@;
@z

@x [46.946] l.19245
shrink(main_p)=xn_over_d(shrink(main_p), 1000, space_factor)
@y
shrink(main_p)=xn_over_d(shrink(main_p), 1000, space_factor);
@z

@x [46.947] l.19260
@t\4@>@<Forbidden cases detected in |main_control|@>@+@, any_mode(mac_param):
@y
@<Forbidden cases detected in |main_control|@>@+@, any_mode(mac_param):
@z

@x [47.970] l.19613
@t\4@>@<Cases of |handle_right_brace| where a |right_brace| triggers a delayed
@y
@/@t\4@>@<Cases of |handle_right_brace| where a |right_brace| triggers a delayed
@z

@x [47.973] l.19654
`\.{\\lower3.8pt\\hbox...}'
@y
`\.{\\lower3.8pt} \.{\\hbox...}'
@z

@x [47.979] l.19809
if (cur_val < 256) define(box_base+cur_val, box_ref, cur_box);
@y
if (cur_val < 256) g_define(box_base+cur_val, box_ref, cur_box);
@z

@x [47.981] l.19848
from the list and make |cur_box| point to it; otherwise set |cur_box:=null|@>@;@+break;
@y
from the list and make |cur_box| point to it; otherwise set |cur_box=null|@>@;@+break;
@z

@x [47.983] l.19877
@/do@+{p=q;
@y
do {p=q;
@z
@x [47.983] l.19883
}@+ while (!(q==tail));
@y
} while (!(q==tail));
@z

@x [47.1007] l.20194
    @/do@+{p=q;
@y
    do {p=q;
@z
@x [47.1007] l.20200
    }@+ while (!(q==tail));
@y
    } while (!(q==tail));
@z

@x [47.1010] l.20241
case un_vbox: if (chr_code==copy_code) print_esc("unvcopy")
  @<Cases of |un_vbox| for |print_cmd_chr|@>;@/
@y
case un_vbox: if (chr_code==copy_code) print_esc("unvcopy");
  else @<Cases of |un_vbox| for |print_cmd_chr|@>@;
@z

@x [47.1025] l.20433
  @<Create a character node |q| for the next character, but set |q:=null|
@y
  @<Create a character node |q| for the next character, but set |q=null|
@z
@x [47.1025] l.20435
  if (q!=null) @<Append the accent with appropriate kerns, then set |p:=q|@>;
@y
  if (q!=null) @<Append the accent with appropriate kerns, then set |p=q|@>;
@z

@x [48.1059] l.20923
to null; set~|cur_val:=0|@>;
@y
to null; set~|cur_val=0|@>;
@z

@x [48.1088] l.21234
case left_right: if (chr_code==left_noad) print_esc("left")
@/@<Cases of |left_right| for |print_cmd_chr|@>;@/
@y
case left_right: if (chr_code==left_noad) print_esc("left");
else @<Cases of |left_right| for |print_cmd_chr|@>@;
@z

@x [48.1093] l.21302
the current math lists and set |danger:=true|@>;
@y
the current math lists and set |danger=true|@>;
@z
@x [48.1093] l.21312
the current math lists and set |danger:=true|@>;
@y
the current math lists and set |danger=true|@>;
@z

@x [49.1103] l.21519
  else if (chr_code==2) print_esc("outer")
  @/@<Cases of |prefix| for |print_cmd_chr|@>;@/
@y
  else if (chr_code==2) print_esc("outer");
  else @<Cases of |prefix| for |print_cmd_chr|@>@;
@z

@x [49.1108] l.21630
@d define(A, B, C) if (global) geq_define(A, B, C);@+else eq_define(A, B, C)
@y
@d g_define(A, B, C) if (global) geq_define(A, B, C);@+else eq_define(A, B, C)
@z

@x [49.1109] l.21648
restart: @/do@+{get_token();
}@+ while (!(cur_tok!=space_token));
@y
restart: do get_token(); while (!(cur_tok!=space_token));
@z

@x [49.1111] l.21670
defined in a format file, but are not yet loaded intp memory---the |define|
@y
defined in a format file, but are not yet loaded intp memory---the |g_define|
@z

@x [49.1111] l.21678
  define(cur_font_loc, data, cur_chr);@+break;
@y
  g_define(cur_font_loc, data, cur_chr);@+break;
@z

@x [49.1112] l.21692
  define(p, call+(a%4), def_ref);
@y
  g_define(p, call+(a%4), def_ref);
@z

@x [49.1115] l.21710
    {@+@/do@+{get_token();
    }@+ while (!(cur_cmd!=spacer));
@y
    {@+do get_token(); while (!(cur_cmd!=spacer));
@z
@x [49.1115] l.21724
  define(p, cur_cmd, cur_chr);
@y
  g_define(p, cur_cmd, cur_chr);
@z

@x [49.1118] l.21779
case shorthand_def: {@+n=cur_chr;get_r_token();p=cur_cs;define(p, relax, 256);
@y
case shorthand_def: {@+n=cur_chr;get_r_token();p=cur_cs;g_define(p, relax, 256);
@z
@x [49.1118] l.21782
  case char_def_code: {@+scan_char_num();define(p, char_given, cur_val);
@y
  case char_def_code: {@+scan_char_num();g_define(p, char_given, cur_val);
@z
@x [49.1118] l.21784
  case math_char_def_code: {@+scan_fifteen_bit_int(); math_to_Umath(cur_val); define(p, math_given, cur_val);
@y
  case math_char_def_code: {@+scan_fifteen_bit_int(); math_to_Umath(cur_val); g_define(p, math_given, cur_val);
@z
@x [49.1118] l.21792
      define(p, j, cur_ptr);
@y
      g_define(p, j, cur_ptr);
@z
@x [49.1118] l.21796
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

@x [49.1119] l.21816
  p=cur_cs;read_toks(n, p, j);define(p, call, cur_val);
@y
  p=cur_cs;read_toks(n, p, j);g_define(p, call, cur_val);
@z

@x [49.1122] l.21886
  define(p, glue_ref, cur_val);
@y
  g_define(p, glue_ref, cur_val);
@z

@x [49.1126] l.21967
  else if (p < math_code_base) define(p+cp, data, cur_val);
  else if (p < del_code_base) define(p+cp, data, hi(cur_val));
@y
  else if (p < math_code_base) g_define(p+cp, data, cur_val);
  else if (p < del_code_base) g_define(p+cp, data, hi(cur_val));
@z

@x [49.1128] l.21985
  scan_optional_equals();scan_font_ident();define(p, data, cur_val);
@y
  scan_optional_equals();scan_font_ident();g_define(p, data, cur_val);
@z

@x [49.1140] l.22195
if (c==0) dead_cycles=cur_val
@/@<Cases for |alter_integer|@>@;@/
@y
if (c==0) dead_cycles=cur_val;
else @<Cases for |alter_integer|@>@;
@z

@x [49.1142] l.22234
  define(q, shape_ref, p);
@y
  g_define(q, shape_ref, p);
@z

@x [49.1146] l.22265
    @/do@+{get_token();}@+ while (!(cur_cmd==right_brace)); /*flush the patterns*/
@y
    do get_token(); while (!(cur_cmd==right_brace)); /*flush the patterns*/
@z

@x [49.1151] l.22322
define(u, set_font, null_font);scan_optional_equals();scan_font_name();
@y
g_define(u, set_font, null_font);scan_optional_equals();scan_font_name();
@z

@x [49.1151] l.22348
define(u, set_font, f);eqtb[font_id_base+f]=eqtb[u];font_id_text(f)=t;
@y
g_define(u, set_font, f);eqtb[font_id_base+f]=eqtb[u];font_id_text(f)=t;
@z

@x [50.1205] l.22931
@/do@+{for (k=p; k<=q+1; k++) dump_wd(mem[k]);
@y
do {for (k=p; k<=q+1; k++) dump_wd(mem[k]);
@z
@x [50.1205] l.22934
}@+ while (!(q==rover));
@y
} while (!(q==rover));
@z

@x [50.1206] l.22956
@/do@+{for (k=p; k<=q+1; k++) undump_wd(mem[k]);
@y
do {for (k=p; k<=q+1; k++) undump_wd(mem[k]);
@z
@x [50.1206] l.22960
}@+ while (!(q==rover));
@y
} while (!(q==rover));
@z

@x [50.1207] l.22975
@<Dump regions 1 to 4 of |eqtb|@>;
@<Dump regions 5 and 6 of |eqtb|@>;
@y
@<Dump regions 1 to 4 of |eqtb|@>@;
@<Dump regions 5 and 6 of |eqtb|@>@;
@z

@x [50.1208] l.22982
@<Undump regions 1 to 6 of |eqtb|@>;
@y
@<Undump regions 1 to 6 of |eqtb|@>@;
@z

@x [50.1209] l.22997
@/do@+{j=k;
@y
do {j=k;
@z
@x [50.1209] l.23015
}@+ while (!(k==int_base))
@y
} while (!(k==int_base));
@z

@x [50.1210] l.23018
@/do@+{j=k;
@y
do {j=k;
@z
@x [50.1210] l.23034
}@+ while (!(k > eqtb_size))
@y
} while (!(k > eqtb_size));
@z

@x [50.1211] l.23038
@/do@+{undump_int(x);
@y
do {undump_int(x);
@z
@x [50.1211] l.23046
}@+ while (!(k > eqtb_size))
@y
} while (!(k > eqtb_size));
@z

@x [50.1213] l.23064
@/do@+{undump(p+1, hash_used, p);undump_hh(hash[p]);
}@+ while (!(p==hash_used));
@y
do {undump(p+1, hash_used, p);undump_hh(hash[p]);
} while (!(p==hash_used));
@z

@x [53.1240] l.23867
  @/@<Cases of |extension| for |print_cmd_chr|@>@/
@y
  @/@t\4@>@<Cases of |extension| for |print_cmd_chr|@>@;
@z

@x [53.1242] l.24111
@/@<Cases for |do_extension|@>@/
@y
@/@t\4@>@<Cases for |do_extension|@>@;
@z

@x [53.1251] l.24242
@/@<Cases for displaying the |whatsit| node@>@/
@y
@/@t\4@>@<Cases for displaying the |whatsit| node@>@;
@z

@x [53.1252] l.24394
@/@<Cases for making a partial copy of the whatsit node@>@/
@y
@/@t\4@>@<Cases for making a partial copy of the whatsit node@>@;
@z

@x [53.1253] l.24588
@/@<Cases for wiping out the whatsit node@>@/
@y
@/@t\4@>@<Cases for wiping out the whatsit node@>@;
@z

@x [53.1261] l.24685
@/do@+{get_token();
}@+ while (!(cur_tok==end_write_token));
@y
do get_token(); while (!(cur_tok==end_write_token));
@z

@x [54.1298] l.25143
  @/do@+{m=nest[p].mode_field;
  if (p > 0) decr(p);else m=vmode;
  }@+ while (!(m!=hmode));
@y
  do {m=nest[p].mode_field;
  if (p > 0) decr(p);else m=vmode;
  } while (!(m!=hmode));
@z

@x [54.1306] l.25293
@ @<Cases of |the| for |print_cmd_chr|@>=;
else if (chr_code==1) print_esc("unexpanded");
else print_esc("detokenize")
@y
@ @<Cases of |the| for |print_cmd_chr|@>=
if (chr_code==1) print_esc("unexpanded");
else print_esc("detokenize");
@z

@x [54.1310] l.25330
    @/do@+{incr(n);p=link(p);@+}@+ while (!(p==null));
@y
    do {incr(n);p=link(p);@+} while (!(p==null));
@z
@x [54.1310] l.25332
    @/do@+{print_nl("### level ");print_int(n);print(": ");
@y
    do {print_nl("### level ");print_int(n);print(": ");
@z
@x [54.1310] l.25337
    }@+ while (!(p==null));
@y
    } while (!(p==null));
@z

@x [54.1312] l.25348
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

@x [54.1315] l.25357
@ @<Cases for |alter_integer|@>=;
else if (c==2)
@y
@ @<Cases for |alter_integer|@>=
if (c==2)
@z

@x [54.1317] l.25377
@ @<Cases of |left_right| for |print_cmd_chr|@>=;
else if (chr_code==middle_noad) print_esc("middle")
@y
@ @<Cases of |left_right| for |print_cmd_chr|@>=
if (chr_code==middle_noad) print_esc("middle");
@z

@x [54.1319] l.25387
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

@x [54.1331] l.25517
@ @<Cases of |read| for |print_cmd_chr|@>=;
else print_esc("readline")
@y
@ @<Cases of |read| for |print_cmd_chr|@>=
print_esc("readline");
@z

@x [54.1338] l.25593
  @/do@+{get_x_token();
  if (cur_cs==0) store_new_token(cur_tok);
  }@+ while (!(cur_cs!=0));
@y
  do {get_x_token();
  if (cur_cs==0) store_new_token(cur_tok);
  } while (!(cur_cs!=0));
@z

@x [54.1342] l.25637
@ @<Cases of |prefix| for |print_cmd_chr|@>=;
else if (chr_code==8) print_esc("protected")
@y
@ @<Cases of |prefix| for |print_cmd_chr|@>=
if (chr_code==8) print_esc("protected");
@z

@x [54.1354] l.25876
switch (s) {@<Cases for evaluation of the current term@>@;
@y
switch (s) {@t\4@>@<Cases for evaluation of the current term@>@;
@z

@x [54.1392] l.26537
@/do@+{i=hex_dig4(sa_index(q));p=q;q=link(p);free_node(p, s);
@y
do {i=hex_dig4(sa_index(q));p=q;q=link(p);free_node(p, s);
@z
@x [54.1392] l.26542
}@+ while (!(sa_used(q) > 0));
@y
} while (!(sa_used(q) > 0));
@z

@x [54.1396] l.26645
  @<Cases for |do_marks|@>@;
@y
  @t\4@>@<Cases for |do_marks|@>@;
@z

@x [54.1411] l.26912
@/do@+{p=sa_loc(sa_chain);
@y
do {p=sa_loc(sa_chain);
@z
@x [54.1411] l.26935
}@+ while (!(sa_chain==null));
@y
} while (!(sa_chain==null));
@z

@x [54.1413] l.26956
@/do@+{q=p;p=trie_r[q];
}@+ while (!((p==0)||(c <= trie_c[p])));
@y
@/do {q=p;p=trie_r[q];
} while (!((p==0)||(c <= trie_c[p])));
@z

@x [54.1419] l.27024
command code |un_vbox| with \.{\\unvbox} and \.{\\unvcopy}, they are
@y
command code |un_vbox| with commands \.{\\unvbox} and \.{\\unvcopy}, they are
@z

@x [54.1420] l.27035
@ @<Cases of |un_vbox| for |print_cmd_chr|@>=;
else if (chr_code==last_box_code) print_esc("pagediscards");
else if (chr_code==vsplit_code) print_esc("splitdiscards")
@y
@ @<Cases of |un_vbox| for |print_cmd_chr|@>=
if (chr_code==last_box_code) print_esc("pagediscards");
else if (chr_code==vsplit_code) print_esc("splitdiscards");
@z

@x [61.1464] l.27392
case if_primitive_code: {@+@/do@+{get_token();}@+ while (!(cur_tok!=space_token));
@y
case if_primitive_code: {@+do get_token(); while (!(cur_tok!=space_token));
@z

@x [62.1468] l.27467
an |ROM_undefined_primitive| that will allow an easy test.
@y
|ROM_undefined_primitive| that will allow an easy test.
@z

@x [65.1501] l.27733
@ The \.{\\filemoddate} expands to a date with the same format as the
creation date (see \.{\\creationdate}).
@y
@ The \.{\\filemoddate} expands to a date with the same format as
\.{\\creationdate}.
@z

@x [65.1503] l.27750
simply setting |xchg_buffer_length| to $0$.
@y
simply setting |xchg_buffer_length| to~$0$.
@z

@x [65.1508] l.27827
      do@+{i=fgetc(f); if (i==EOF) break;
@y
      do {i=fgetc(f); if (i==EOF) break;
@z
@x [65.1508] l.27830
       }@+ while (!(feof(f)||(l==0)));
@y
       } while (!(feof(f)||(l==0)));
@z

@x [66.1521] l.28038
@ The |@/do@+{| loop here preserves the following invariant relations
@y
@ The |do {| loop here preserves the following invariant relations
@z
@x [66.1521] l.28053
@/do@+{be_careful=p-q;p=be_careful+p;
@y
do {be_careful=p-q;p=be_careful+p;
@z
@x [66.1521] l.28057
}@+ while (!(f >= mpfract_one));
@y
} while (!(f >= mpfract_one));
@z

@x [66.1522] l.28080
@<Compute $p=\lfloor qf/2^{28}+{1\over2}\rfloor-q$@>;
@y
@<Compute $p=\lfloor qf/2^{28}+{1\over2}\rfloor-q$@>@;
@z

@x [66.1524] l.28105
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

@x [66.1544] l.28298
@/do@+{
  @/do@+{next_random;
@y
do {
  do {next_random;
@z
@x [66.1544] l.28303
  }@+ while (!(abs(x) < u));
@y
  } while (!(abs(x) < u));
@z
@x [66.1544] l.28306
}@+ while (!(ab_vs_cd(1024, l, x, x) >= 0));
@y
} while (!(ab_vs_cd(1024, l, x, x) >= 0));
@z

@x [72.1590] l.29124
@ Writing a color node to the output is simple.
@y
@ Outputting a color node is simple.
@z

@x [74.1617] l.29686
  while (true)
@y
  loop@+
@z

@x [75.1631] l.30275
  else /* if (x<0) */
@y
  else /* if |(x<0)| */
@z

@x [78.1638] l.30559
    @<allocate a new |setpage_node| |p|@>@;
@y
    @<Allocate a new |setpage_node| |p|@>@;
@z

@x [78.1639] l.30566
@
@<allocate a new |setpage_node| |p|@>=
@y
@ @<Allocate a new |setpage_node| |p|@>=
@z

@x [82.1657] l.30871
static const int hmap_int[] ={@/
@y
static const int hmap_int[] ={@t\1\1@>@/
@z
@x [82.1657] l.30914
floating_penalty_no  /* |floating_penalty_code|	42*/
@y
@t\2\2@> floating_penalty_no  /* |floating_penalty_code| 42*/
@z

@x [82.1659] l.30926
if not successful, it returns $-1$.
@y
if not successful, it returns~$-1$.
@z

@x [83.1663] l.30969
static const int hmap_dimen[] ={@/
@y
static const int hmap_dimen[] ={@t\1\1@>@/
@z
@x [83.1663] l.30990
  emergency_stretch_no /* |emergency_stretch_code| 20 */
@y
  @t\2\2@> emergency_stretch_no /* |emergency_stretch_code| 20 */
@z
@x [85.1673] l.31096
static int hmap_glue[] ={

@y
static int hmap_glue[] ={@t\1\1@>@/
@z
@x [85.1673] l.31112
par_fill_skip_no  /* |par_fill_skip_code| 14 */
@y
@t\2\2@> par_fill_skip_no  /* |par_fill_skip_code| 14 */
@z

@x [87.1686] l.31364
{@+while (true)
@y
{@+loop@+
@z

@x [98.1717] l.31998
\TeX's math nodes have an optional width---a copy of the mathsurround parameter---while
@y
\TeX's math nodes have an optional width---a copy of the \.{\\mathsurround} parame\-ter---while
@z

@x [122.1757] l.32960
static struct option long_options[] = {@/
@y
static struct option long_options[] = {@t\1\1@>@/
@z
@x [122.1757] l.32993
      { 0, 0, 0, 0 }@+}@+;
@y
@t\2\2@> { 0, 0, 0, 0 } @/
};
@z

@x [122.1758] l.33003
{@+ while (true) {
@y
{@+ loop @+ {
@z

@x [122.1761] l.33053
#define ARGUMENT_IS(S) argument_is(long_options+option_index,S)
@y
#define ARGUMENT_IS(S) @[argument_is(long_options+option_index,S)@]
@z

@x [129.1792] l.33689
@+ }
@y
}
@z

@x [130.1794] l.33743
#ifdef @!INIT
@y
@#
#ifdef @!INIT
@+@t}\6\4\4{@>
@z

@x [132.1801] l.33934
the \TeX\ Live distribution and slightly modified.
@y
the \TeX\ Live distribution and slightly modified.

@s md5_byte_t int
@s md5_state_t int
@z
@x [132.1801] l.33995
/* static structure for file status set by |find_input_file| */
#ifdef WIN32
@y
@#
#ifdef WIN32
/* static structure for file status set by |find_input_file| */
@+@t}\6{@>
@z
@x [132.1801] l.33998
#define GET_FILE_STAT _stat(fname,&file_stat)
@y
#define GET_FILE_STAT @[_stat(fname,&file_stat)@]
@Z
@x [132.1801] l.34001
#define GET_FILE_STAT stat(fname,&file_stat)
@y
#define GET_FILE_STAT @[stat(fname,&file_stat)@]
@z

@x [134.1833] l.34787
@ Since specifying, finding, and loading a font can be quite complex process,
@y
@ Since specifying, finding, and loading a font can be quite complex,
@z
