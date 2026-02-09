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

@x [1.4] l.462
  @<Initialize whatever \TeX\ might access@>;
@y
  @<Initialize whatever \TeX\ might access@>@;
@z

@x [1.16] l.646
   /*\.{WEB}'s |else| acts like `\ignorespaces|while true do|\unskip'*/
@y
   /*\.{WEB}'s |loop| acts like `\ignorespaces|while true do|\unskip'*/
@z

@x [3.22] l.745
static unsigned char @!name_of_file0[file_name_size+1]={0},
@y
static unsigned char @!name_of_file0[file_name_size+1]={0},@|
@z

@x [4.42] l.1143
@t\4@>@<Declare \Prote\ procedures for strings@>@;
@y
@#@<Declare \Prote\ procedures for strings@>@;
@z

@x [5.51] l.1305
@<Basic printing procedures@>=
#define @[put(F)@]    @[fwrite(&((F).d)@],@[sizeof((F).d),1,(F).f)@]@;
@y
@s sizeof x

@<Basic printing procedures@>=
#define @[put(F)@]    @[fwrite(&((F).d),sizeof((F).d),1,(F).f)@]
@z

@x [5.54] l.1387
  while (*s!=0) print_char(*s++);@+
@y
  while (*s!=0) print_char(*s++);
@z

@x [5.60] l.1513
@/do@+{dig[k]=n%10;n=n/10;incr(k);
}@+ while (!(n==0));
@y
do {dig[k]=n%10;n=n/10;incr(k);
} while (!(n==0));
@z

@x [5.62] l.1532
@/do@+{dig[k]=n%16;n=n/16;incr(k);
}@+ while (!(n==0));
@y
do {dig[k]=n%16;n=n/16;incr(k);
} while (!(n==0));
@z

@x [6.67] l.1609
|error;|\cr}}$$
@y
|error();|\cr}}$$
@z

@x [6.79] l.1828
  @<Delete \(c)|c-"0"| tokens and |goto resume|@>@;@+break;
@t\4\4@>@;
@y
  @<Delete \(c)|c-"0"| tokens and |goto resume|@>@;@+break;
@z

@x [6.84] l.1922
  @/do@+{decr(help_ptr);print(help_line[help_ptr]);print_ln();
  }@+ while (!(help_ptr==0));
@y
  do {decr(help_ptr);print(help_line[help_ptr]);print_ln();
  } while (!(help_ptr==0));
@z

@x [7.96] l.2092
typedef int32_t nonnegative_integer; /*$0\le x<2^{31}$*/
@y
typedef uint32_t nonnegative_integer; /*$0\le x<2^{31}$*/
@z

@x [7.98] l.2130
@/do@+{if (delta > unity) s=s+0100000-50000; /*round the last digit*/
print_char('0'+(s/unity));s=10*(s%unity);delta=delta*10;
}@+ while (!(s <= delta));
@y
do {if (delta > unity) s=s+0100000-50000; /*round the last digit*/
print_char('0'+(s/unity));s=10*(s%unity);delta=delta*10;
} while (!(s <= delta));
@z

@x [7.103] l.2249
@p @<Declare \Prote\ arithmetic routines@>@/
@y
@p @<Declare \Prote\ arithmetic routines@>@;
@z

@x [7.104] l.2283
@d float_constant(A) ((double)(A)) /*convert |int| constant to |double|*/
@y
@d float_constant(A) ((double)(A)) /*convert |int| constant to |double|*/
@#
@d perror e@&r@&r@&o@&r /* this is a \.{CWEB} coding trick: */
@f perror error /* `\&{perror}' will be equivalent to `\&{error}' */
@f error x /* but `|error|' will not be treated as a reserved word */
@z
@x [7.104] l.2289
#error  @=float type must have size 4@>
@y
#perror @=float type must have size 4@>
@z

@x [8.108] l.2399
typedef struct { @;@/
@y
@#
typedef struct {
@z
@x [8.108] l.2406
typedef struct { @;@/
@y
@#
typedef struct {
@z
@x [8.108] l.2412
typedef struct { @;@/
@y
@#
typedef struct {
@z
@x [8.108] l.2419
typedef struct {@+FILE *f;@+memory_word@,d;@+} word_file;
@y
@#
typedef struct {@+FILE *f;@+memory_word@,d;@+} word_file;
@z

@x [9.115] l.2562
link(p)=null; /*provide an oft-desired initialization of the new node*/
#ifdef @!STAT
incr(dyn_used);
#endif
@; /*maintain statistics*/
@y
link(p)=null; /*provide an oft-desired initialization of the new node*/
incr_dyn_used; /*maintain statistics*/
@z

@x [9.118] l.2601
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

@x [9.120] l.2650
@/do@+{@<Try to allocate within node |p| and its physical successors, and
@y
do {@<Try to allocate within node |p| and its physical successors, and
@z
@x [9.120] l.2654
}@+ while (!(p==rover)); /*repeat until the whole list has been traversed*/
@y
} while (!(p==rover)); /*repeat until the whole list has been traversed*/
@z

@x [10.129] l.2823
In order to make sure that the |character| code fits in a quarterword,
@y
In order to ensure that the |character| code fits in a quarterword,
@z

@x [10.140] l.2998
If |pre_break(p)==null|, the |ex_hyphen_penalty| will be charged for this
break.  Otherwise the |hyphen_penalty| will be charged.  The texts will
@y
If |pre_break(p)==null|, |ex_hyphen_penalty| will be charged for this
break.  Otherwise |hyphen_penalty| will be charged.  The texts will
@z

@x [10.147] l.3147
q=@<Current |mem| equivalent of glue parameter number |n|@>@t@>;
@y
q=@[@<Current |mem| equivalent of glue parameter number |n|@>@];
@z

@x [10.150] l.3187
@d kern_node 11 /*|type| of a kern node*/
@d explicit 1 /*|subtype| of kern nodes from \.{\\kern} and \.{\\/}*/
@y
@s explicit true

@d kern_node 11 /*|type| of a kern node*/
@d explicit 1 /*|subtype| of kern nodes from \.{\\kern} and \.{\\/}*/
@z

@x [11.160] l.3348
@t\hskip10pt@>static bool @!was_free0[mem_max-mem_min+1],
@y
static bool @!was_free0[mem_max-mem_min+1],
@z
@x [11.160] l.3351
@t\hskip10pt@>static pointer @!was_mem_end, @!was_lo_max, @!was_hi_min;
@y
static pointer @!was_mem_end, @!was_lo_max, @!was_hi_min;
@z
@x [11.160] l.3353
@t\hskip10pt@>static bool @!panicking; /*do we want to check memory constantly?*/
@y
static bool @!panicking; /*do we want to check memory constantly?*/
@z

@x [11.164] l.3403
@/do@+{if ((p >= lo_mem_max)||(p < mem_min)) clobbered=true;
@y
do {if ((p >= lo_mem_max)||(p < mem_min)) clobbered=true;
@z
@x [11.164] l.3420
}@+ while (!(p==rover));
@y
} while (!(p==rover));
@z

@x [12.169] l.3515
        else@<Print the font identifier for |font(p)|@>;
@y
        else@<Print the font identifier for |font(p)|@>@;
@z
@x [12.169] l.3524
  else@<Print a short indication of the contents of node |p|@>;
@y
  else@<Print a short indication of the contents of node |p|@>@;
@z

@x [12.171] l.3557
  else@<Print the font identifier for |font(p)|@>;
@y
  else@<Print the font identifier for |font(p)|@>@;
@z

@x [12.178] l.3697
  @t\4@>@<Cases of |show_node_list| that arise in mlists only@>@;
@y
  @/@t\4@>@<Cases of |show_node_list| that arise in mlists only@>@;
@z

@x [12.193] l.3858
{@+@<Assign the values |depth_threshold:=show_box_depth| and |breadth_max:=show_box_breadth|@>;
@y
{@+@<Assign the values |depth_threshold=show_box_depth| and |breadth_max=show_box_breadth|@>;
@z

@x [13.196] l.3896
fast_delete_glue_ref(p)
@y
fast_delete_glue_ref(p)@;
@z

@x [13.197] l.3937
    @t\4@>@<Cases of |flush_node_list| that arise in mlists only@>@;
@y
    @/@t\4@>@<Cases of |flush_node_list| that arise in mlists only@>@;
@z

@x [17.226] l.4845
  @/@<Cases of |assign_toks| for |print_cmd_chr|@>@/
@y
  @/@t\4@>@<Cases of |assign_toks| for |print_cmd_chr|@>@;
@z

@x [17.231] l.5113
@<Assign the values |depth_threshold:=show_box_depth|...@>=
@y
@<Assign the values |depth_threshold=show_box_depth|...@>=
@z

@x [17.232] l.5178
@/@<Cases for |print_param|@>@/
@y
@/@t\4@>@<Cases for |print_param|@>@;
@z

@x [17.236] l.5333
@p static void fix_date_and_time(void)
@y
@s tm int
@p static void fix_date_and_time(void)
@z

@x [17.247] l.5536
@p @t\4@>@<Declare the procedure called |print_cmd_chr|@>@;@/
#ifdef @!STAT
@y
@p @<Declare the procedure called |print_cmd_chr|@>@;
#ifdef @!STAT
@+@t}\6\4\4{@>
@z

@x [18.255] l.5663
  {@+@/do@+{if (hash_is_full) overflow("hash size", hash_size);
@y
  {@+do {if (hash_is_full) overflow("hash size", hash_size);
@z
@x [18.255] l.5666
  }@+ while (!(text(hash_used)==0)); /*search for an empty location in |hash|*/
@y
  } while (!(text(hash_used)==0)); /*search for an empty location in |hash|*/
@z

@x [18.261] l.5884
@/@<Cases of |expandafter| for |print_cmd_chr|@>@/
@y
@/@t\4@>@<Cases of |expandafter| for |print_cmd_chr|@>@;
@z
@x [18.261] l.5904
case read_to_cs: if (chr_code==0) print_esc("read")
  @<Cases of |read| for |print_cmd_chr|@>;@+break;
@y
case read_to_cs: if (chr_code==0) print_esc("read");
  else @<Cases of |read| for |print_cmd_chr|@>;@+break;
@z
@x [18.261] l.5911
  @<Cases of |set_shape| for |print_cmd_chr|@>@;@/
@y
  @/@t\4@>@<Cases of |set_shape| for |print_cmd_chr|@>@;
@z
@x [18.261] l.5913
case the: if (chr_code==0) print_esc("the")
  @<Cases of |the| for |print_cmd_chr|@>;@+break;
@y
case the: if (chr_code==0) print_esc("the");
  else @<Cases of |the| for |print_cmd_chr|@>;@+break;
@z

@x [18.262] l.5935
printn_esc(font_id_text(font(p)))
@y
printn_esc(font_id_text(font(p)));
@z

@x [19.263] l.5961
of the current group, when it should be
@y
of the current group and
@z

@x [19.270] l.6120
@/@<Cases for |eq_destroy|@>@/
@y
@/@t\4@>@<Cases for |eq_destroy|@>@;
@z

@x [19.272] l.6158
#define  assign_trace(A, B)
@y
#define  assign_trace(A, B) @[@]
@z

@x [21.293] l.6670
@t\4@>@<Cases of |print_cmd_chr| for symbolic printing of primitives@>@/
@y
@/@t\4@>@<Cases of |print_cmd_chr| for symbolic printing of primitives@>@;
@z

@x [23.326] l.7408
first=buf_size;@/do@+{buffer[first]=0;decr(first);}@+ while (!(first==0));
@y
first=buf_size; do {buffer[first]=0;decr(first);} while (!(first==0));
@z

@x [24.328] l.7442
to the appearance of \.{\\par}; we must set |cur_cs:=par_loc|
@y
to the appearance of \.{\\par}; we must set |cur_cs=par_loc|
@z

@x [24.339] l.7613
any_state_plus(escape): @<Scan a control sequence and set |state:=skip_blanks|
@y
any_state_plus(escape): @<Scan a control sequence and set |state=skip_blanks|
@z
@x [24.339] l.7616
and set |state:=mid_line|@>@;@+break;
@y
and set |state=mid_line|@>@;@+break;
@z
@x [24.339] l.7618
like~\.{\^\^A} or~\.{\^\^df}, then |goto reswitch|, otherwise set |state:=mid_line|@>@;@+break;
@y
like~\.{\^\^A} or~\.{\^\^df}, then |goto reswitch|, otherwise set |state=mid_line|@>@;@+break;
@z
@x [24.339] l.7620
@t\4@>@<Handle situations involving spaces, braces, changes of state@>@;
@y
@/@t\4@>@<Handle situations involving spaces, braces, changes of state@>@;
@z

@x [24.351] l.7802
@/do@+{j=k; k=utf8_get_cur_chr(buffer,k,limit);
@y
@/do {j=k; k=utf8_get_cur_chr(buffer,k,limit);
@z
@x [24.351] l.7804
}@+ while (!((cat!=letter)||(k > limit)));
@y
}@+ while (!((cat!=letter)||(k > limit)));
@z

@x [25.362] l.8049
@/@<Cases for |expandafter|@>@/
@y
@/@t\4@>@<Cases for |expandafter|@>@;
@z

@x [25.364] l.8071
necessary to insert a special `|dont_expand|' marker into \TeX's reading
@y
necessary to insert a special marker `|dont_expand|' into \TeX's reading
@z

@x [25.367] l.8113
@/do@+{get_x_token();
if (cur_cs==0) store_new_token(cur_tok);
}@+ while (!(cur_cs!=0));
@y
do {get_x_token();
if (cur_cs==0) store_new_token(cur_tok);
} while (!(cur_cs!=0));
@z

@x [25.372] l.8173
case input: if (chr_code==0) print_esc("input")
  @/@<Cases of |input| for |print_cmd_chr|@>;@/
@y
case input: if (chr_code==0) print_esc("input");
  else @<Cases of |input| for |print_cmd_chr|@>@;
@z

@x [25.373] l.8178
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

@x [25.386] l.8391
@/do@+{link(temp_head)=null;
@y
do {link(temp_head)=null;
@z
@x [25.386] l.8396
@<Scan a parameter until its delimiter string has been found; or, if |s=null|,
@y
@<Scan a parameter until its delimiter string has been found; or, if |s==null|,
@z
@x [25.386] l.8399
}@+ while (!(info(r)==end_match_token));
@y
} while (!(info(r)==end_match_token));
@z

@x [25.387] l.8413
resume| if a partial match is still in effect; but abort if |s=null|@>;
@y
resume| if a partial match is still in effect; but abort if |s==null|@>;
@z

@x [25.392] l.8499
    @/do@+{store_new_token(info(t));incr(m);u=link(t);v=s;
@y
    do {store_new_token(info(t));incr(m);u=link(t);v=s;
@z
@x [25.392] l.8508
    }@+ while (!(t==r));
@y
    } while (!(t==r));
@z

@x [26.399] l.8600
@/do@+{get_x_token();
}@+ while (!((cur_cmd!=spacer)&&(cur_cmd!=relax)))
@y
do get_x_token(); while (!((cur_cmd!=spacer)&&(cur_cmd!=relax)))
@z

@x [26.401] l.8612
@/do@+{get_x_token();
}@+ while (!(cur_cmd!=spacer))
@y
do get_x_token(); while (!(cur_cmd!=spacer))
@z

@x [26.404] l.8672
@t\4\4@>@<Declare procedures that scan restricted classes of integers@>@;
@t\4\4@>@<Declare \eTeX\ procedures for scanning@>@;
@t\4\4@>@<Declare procedures that scan font-related stuff@>@;
@y
@#@<Declare procedures that scan restricted classes of integers@>@;
@<Declare \eTeX\ procedures for scanning@>@;
@<Declare procedures that scan font-related stuff@>@;
@z

@x [26.406] l.8717
and `\.{\\muskip}' all having |internal_register| as their command code; they are
@y
and `\.{\\muskip}' all having command code |internal_register|; they are
@z

@x [26.408] l.8755
identifier, provided that |level=tok_val|@>@;@+break;
@y
identifier, provided that |level==tok_val|@>@;@+break;
@z

@x [26.412] l.8877
case set_page_int: if (chr_code==0) print_esc("deadcycles")
@/@<Cases of |set_page_int| for |print_cmd_chr|@>;@/
@+else print_esc("insertpenalties");@+break;
@y
case set_page_int: if (chr_code==0) print_esc("deadcycles");
else @<Cases of |set_page_int| for |print_cmd_chr|@>@;
else print_esc("insertpenalties");@+break;
@z
@x [26.412] l.8888
  @/@<Cases of |last_item| for |print_cmd_chr|@>@/
@y
  @/@t\4@>@<Cases of |last_item| for |print_cmd_chr|@>@;
@z

@x [26.414] l.8910
{@+if (m==0) cur_val=dead_cycles
@/@<Cases for `Fetch the |dead_cycles| or the |insert_penalties|'@>;@/
@y
{@+if (m==0) cur_val=dead_cycles;
else @<Cases for `Fetch the |dead_cycles| or the |insert_penalties|'@>@;
@z

@x [26.419] l.8962
  @/@<Cases for fetching a dimension value@>@/
@y
  @/@t\4@>@<Cases for fetching a dimension value@>@;
@z
@x [26.419] l.8969
  @/@<Cases for fetching an integer value@>@/
@y
  @/@t\4@>@<Cases for fetching an integer value@>@;
@z

@x [26.436] l.9194
@/do@+{@<Get the next non-blank non-call token@>;
@y
do {@<Get the next non-blank non-call token@>;
@z
@x [26.436] l.9198
}@+ while (!(cur_tok!=other_token+'+'))
@y
} while (!(cur_tok!=other_token+'+'));
@z

@x [26.443] l.9331
  {@+@<Get the next non-blank non-sign...@>;
@y
  {@+@<Get the next non-blank non-sign...@>@;
@z

@x [26.456] l.9570
mu=(level==mu_val);@<Get the next non-blank non-sign...@>;
@y
mu=(level==mu_val);@<Get the next non-blank non-sign...@>@;
@z

@x [27.464] l.9750
  @/@<Cases of |convert| for |print_cmd_chr|@>@/
@y
  @/@t\4@>@<Cases of |convert| for |print_cmd_chr|@>@;
@z

@x [27.466] l.9781
@/@<Cases of `Scan the argument for command |c|'@>@/
@y
@/@t\4@>@<Cases of `Scan the argument for command |c|'@>@;
@z

@x [27.467] l.9799
@/@<Cases of `Print the result of command |c|'@>@/
@y
@/@t\4@>@<Cases of `Print the result of command |c|'@>@;
@z

@x [27.468] l.9845
@t\4@>@<Declare \Prote\ procedures for token lists@>@;@/
@y
@#@<Declare \Prote\ procedures for token lists@>@;
@z

@x [27.477] l.9975
@/do@+{@<Input and store tokens from the next line of the file@>;
}@+ while (!(align_state==1000000));
@y
do @<Input and store tokens from the next line of the file@>@;
while (!(align_state==1000000));
@z

@x [27.478] l.9981
begin_file_reading();name=m+1;
@y
{begin_file_reading();name=m+1;
@z
@x [27.478] l.9994
    {@+@/do@+{get_token();}@+ while (!(cur_tok==0));
@y
    {@+do get_token(); while (!(cur_tok==0));
@z
@x [27.478] l.9999
done: end_file_reading()
@y
done: end_file_reading();}
@z

@x [28.483] l.10117
  @/@<Cases of |if_test| for |print_cmd_chr|@>@/
@y
  @/@t\4@>@<Cases of |if_test| for |print_cmd_chr|@>@;
@z

@x [28.496] l.10298
@/@<Cases for |conditional|@>@/
@y
@/@t\4@>@<Cases for |conditional|@>@;
@z

@x [28.501] l.10344
\.{\\if\\noexpand} or following \.{\\ifcat\\noexpand}. We use the fact that
@y
\.{\\if\\noexpand} or \.{\\ifcat\\noexpand}. We use the fact that
@z

@x [29.513] l.10586
into the |name_of_file| value that is used to open files. The present code
@y
into the value |name_of_file| that is used to open files. The present code
@z

@x [29.519] l.10661
#ifdef @!INIT
@y
#ifdef @!INIT
@+@t}\6\4\4{@>
@z

@x [30.560] l.11593
@ The preliminary settings of the index-offset variables |char_base|,
@y
@ The preliminary values of the index-offset variables |char_base|,
@z

@x [30.572] l.11838
@<Issue an error message if |cur_val=fmem_ptr|@>;
@y
@<Issue an error message if |cur_val==fmem_ptr|@>;
@z

@x [30.573] l.11841
@ @<Issue an error message if |cur_val=fmem_ptr|@>=
@y
@ @<Issue an error message if |cur_val==fmem_ptr|@>=
@z

@x [30.574] l.11853
{@+@/do@+{if (fmem_ptr==font_mem_size)
@y
{@+do {if (fmem_ptr==font_mem_size)
@z
@x [30.574] l.11857
}@+ while (!(n==font_params[f]));
@y
} while (!(n==font_params[f]));
@z

@x [32.585] l.12143
@ @p @t\4@>@<Declare procedures needed in |hlist_out|, |vlist_out|@>@t@>@/
@y
@ @p @<Declare procedures needed in |hlist_out|, |vlist_out|@>@t@>@;
@z

@x [33.610] l.12466
@p static void append_to_vlist(pointer @!b)@t\2\2@>@/
{ bool height_known;@t\1@>@/
@y
@p static void append_to_vlist(pointer @!b)
{ @+bool height_known;
@z
@x [33.610] l.12471
  {@+scaled d;@t\1@> /*deficiency of space between baselines*/
@y
  {@+scaled d; /*deficiency of space between baselines*/
@z
@x [33.610] l.12473
  {@+d=width(baseline_skip)-prev_depth-height(b);
@y
  d=width(baseline_skip)-prev_depth-height(b);
@z
@x [33.610] l.12479
  }@+
} @+  else @+if (prev_depth<=unknown_depth || prev_depth>ignore_depth )@t\2@>@/
@y
} @+  else @+if (prev_depth<=unknown_depth || prev_depth>ignore_depth ) @/
@z

@x [35.638] l.13121
  @/do@+{z=z-16;g=fam_fnt(z);
@y
  do {z=z-16;g=fam_fnt(z);
@z
@x [35.638] l.13126
  }@+ while (!(z < 16));
@y
  } while (!(z < 16));
@z

@x [36.659] l.13536
@t\4@>@<Cases for noads that can follow a |bin_noad|@>@;
@t\4@>@<Cases for nodes that can appear in an mlist, after which we |goto
@y
@/@t\4@>@<Cases for noads that can follow a |bin_noad|@>@;
@/@t\4@>@<Cases for nodes that can appear in an mlist, after which we |goto
@z

@x [36.665] l.13625
by procedures with names
like |make_fraction|, |make_radical|, etc. To illustrate
@y
by procedures
like |make_fraction|, |make_radical|, etc. To illustrate
@z

@x [36.698] l.14297
  @/do@+{p=link(p);
  }@+ while (!(link(p)==null));
@y
  do p=link(p); while (!(link(p)==null));
@z

@x [37.700] l.14439
Their |glue_sign| and |glue_order| are pre-empted as well, since it
@y
And their fields |glue_sign| and |glue_order| are pre-empted as well, since it
@z

@x [37.705] l.14523
@p @t\4@>@<Declare the procedure called |get_preamble_token|@>@t@>@/
@y
@p @<Declare the procedure called |get_preamble_token|@>@;
@z

@x [37.716] l.14711
@/do@+{get_x_or_protected();
}@+ while (!(cur_cmd!=spacer));
@y
do get_x_or_protected(); while (!(cur_cmd!=spacer));
@z

@x [37.717] l.14731
@p @t\4@>@<Declare the procedure called |init_span|@>@t@>@/
@y
@p @<Declare the procedure called |init_span|@>@;
@z

@x [37.722] l.14824
@/do@+{get_x_or_protected();
}@+ while (!(cur_cmd!=spacer));
@y
do get_x_or_protected(); while (!(cur_cmd!=spacer));
@z

@x [37.729] l.14919
@/do@+{incr(n);q=link(link(q));
}@+ while (!(q==cur_align));
@y
do {incr(n);q=link(link(q));
} while (!(q==cur_align));
@z

@x [37.731] l.14977
the alignrecords to dummy unset boxes@>;
@y
the alignrecords to dummy unset boxes@>@;
@z
@x [37.731] l.14979
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
@x [37.731] l.14984
  and let |p| point to this prototype box@>;
  @<Set the glue in all the unset boxes of the current list@>;
  flush_node_list(p);pop_alignment();
@y
  and let |p| point to this prototype box@>@;
  @<Set the glue in all the unset boxes of the current list@>@;
  flush_node_list(p);pop_alignment();
@z
@x [37.731] l.14988
@<Insert the \(c)current list into its environment@>;
} @/
@y
@<Insert the \(c)current list into its environment@>;
} @#
@z

@x [37.732] l.14991
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

@x [37.733] l.15029
@/do@+{flush_list(u_part(q));flush_list(v_part(q));
@y
do {flush_list(u_part(q));flush_list(v_part(q));
@z
@x [37.733] l.15043
}@+ while (!(q==null))
@y
} while (!(q==null));
@z

@x [37.735] l.15055
|@/do@+{| loop is that we want to dispense with node |r|, in |q|'s list,
@y
|do {| loop is that we want to dispense with node |r|, in |q|'s list,
@z
@x [37.735] l.15063
@/do@+{width(r)=width(r)-t;u=info(r);
@y
do {width(r)=width(r)-t;u=info(r);
@z
@x [37.735] l.15074
}@+ while (!(r==end_span));
@y
} while (!(r==end_span));
@z

@x [37.736] l.15091
  @/do@+{height(q)=width(q);width(q)=0;q=link(link(q));
  }@+ while (!(q==null));
@y
  do {height(q)=width(q);width(q)=0;q=link(link(q));
  } while (!(q==null));
@z
@x [37.736] l.15095
  @/do@+{width(q)=height(q);height(q)=0;q=link(link(q));
  }@+ while (!(q==null));
@y
  do {width(q)=height(q);height(q)=0;q=link(link(q));
  } while (!(q==null));
@z

@x [37.739] l.15134
@/do@+{@<Set the glue in node |r| and change it from an unset node@>;
r=link(link(r));s=link(link(s));
}@+ while (!(r==null));
@y
do {@<Set the glue in node |r| and change it from an unset node@>;
r=link(link(r));s=link(link(s));
} while (!(r==null));
@z

@x [38.755] l.15468
@d do_all_six(A) A(1);A(2);A(3);A(4);A(5);A(6)
@y
@d do_all_six(A) A(1);A(2);A(3);A(4);A(5);A(6)@;
@z

@x [38.761] l.15626
feasible breaks in that class; then |return| if |r=last_active|, otherwise
@y
feasible breaks in that class; then |return| if |r==last_active|, otherwise
@z

@x [38.768] l.15728
@ It is not necessary to create new active nodes having |minimal_demerits|
greater than
|minimum_demerits+abs(adj_demerits)|, since such active nodes will never
@y
@ It is not necessary to create new active nodes with |minimal_demerits|
greater than
|minimum_demerits| ${}+|abs(adj_demerits)|$, since such active nodes will never
@z

@x [38.784] l.16042
subarray |cur_active_width[2 dotdot 5]|, in units of points, fil, fill, and filll.
@y
array |cur_active_width| at positions |[2 dotdot 5]|, in units of points, fil, fill, and filll.
@z

@x [38.788] l.16118
  @<Print the list between |printed_node| and |cur_p|, then set |printed_node:=cur_p|@>;
@y
  @<Print the list between |printed_node| and |cur_p|, then set |printed_node=cur_p|@>;
@z

@x [39.799] l.16379
@/do@+{f=font(cur_p);
@y
do {f=font(cur_p);
@z
@x [39.799] l.16382
}@+ while (!(!is_char_node(cur_p)));
@y
} while (!(!is_char_node(cur_p)));
@z

@x [39.801] l.16407
else{@+@/do@+{@<Add the width of node |s| to |disc_width|@>;
    s=link(s);
  }@+ while (!(s==null));
@y
else{@+do {@<Add the width of node |s| to |disc_width|@>;
    s=link(s);
  } while (!(s==null));
@z

@x [39.806] l.16487
@/do@+{if (type(r)!=delta_node) if (total_demerits(r) < fewest_demerits)
@y
do {if (type(r)!=delta_node) if (total_demerits(r) < fewest_demerits)
@z
@x [39.806] l.16491
}@+ while (!(r==last_active));
@y
} while (!(r==last_active));
@z

@x [39.807] l.16501
@/do@+{if (type(r)!=delta_node)
@y
do {if (type(r)!=delta_node)
@z
@x [39.807] l.16514
}@+ while (!(r==last_active));
@y
} while (!(r==last_active));
@z

@x [39.808] l.16518
@ Once the best sequence of breakpoints has been found (hurray), we call on the
@y
@ Once the best sequence of breakpoints has been found, we call on the
@z

@x [39.809] l.16549
first breakpoint@>;
@y
first breakpoint@>@;
@z
@x [39.809] l.16552
@/do@+{@<Justify the line ending at breakpoint |cur_p|, and append it to the
@y
do {@<Justify the line ending at breakpoint |cur_p|, and append it to the
@z
@x [39.809] l.16557
}@+ while (!(cur_p==null));
@y
} while (!(cur_p==null));
@z

@x [39.810] l.16572
@/do@+{r=q;q=prev_break(q);next_break(r)=cur_p;cur_p=r;
}@+ while (!(q==null))
@y
do {r=q;q=prev_break(q);next_break(r)=cur_p;cur_p=r;
} while (!(q==null));
@z

@x [39.813] l.16629
      @<Change discretionary to compulsory and set |disc_break:=true|@>@;
@y
      @<Change discretionary to compulsory and set |disc_break=true|@>@;
@z

@x [39.822] l.16736
from the |inter_line_penalty| parameter, and from lines that end at
@y
from the parameter |inter_line_penalty|, and from lines that end at
@z

@x [40.826] l.16858
static void hyphenate_word(void)@t\2\2@>@/
{ pointer @!q, @!s, @!prev_s;@t\1@> /*miscellaneous nodes of temporary interest*/
@y
static void hyphenate_word(void)
{ @+pointer @!q, @!s, @!prev_s; /*miscellaneous nodes of temporary interest*/
@z

@x [41.845] l.17295
@/do@+{l=j;j=reconstitute(j, hn, bchar, qi(hyf_char))+1;
@y
do {l=j;j=reconstitute(j, hn, bchar, qi(hyf_char))+1;
@z
@x [41.845] l.17305
word, and continue to develop both branches until they become equivalent@>;
}@+ while (!(j > hn));
@y
word, and continue to develop both branches until they become equivalent@>@;
} while (!(j > hn));
@z

@x [41.846] l.17320
@/do@+{r=get_node(small_node_size);
@y
do {r=get_node(small_node_size);
@z
@x [41.846] l.17331
}@+ while (!(!odd(hyf[j-1])))
@y
} while (!(!odd(hyf[j-1])));
@z

@x [41.848] l.17363
  {@+@/do@+{l=reconstitute(l, hn, bchar, non_char)+1;
@y
  {@+do {l=reconstitute(l, hn, bchar, non_char)+1;
@z
@x [41.848] l.17373
  }@+ while (!(l >= j));
@y
  } while (!(l >= j));
@z

@x [42.856] l.17491
@/do@+{v=v+op_start[cur_lang];i=l-hyf_distance[v];
@y
do {v=v+op_start[cur_lang];i=l-hyf_distance[v];
@z
@x [42.856] l.17494
}@+ while (!(v==min_quarterword));
@y
} while (!(v==min_quarterword));
@z

@x [42.863] l.17559
  @/do@+{if (str_pool[u] < hc[j]) goto not_found;
@y
  @/do {if (str_pool[u] < hc[j]) goto not_found;
@z
@x [42.863] l.17562
  }@+ while (!(j > hn));
@y
  } while (!(j > hn));
@z

@x [42.873] l.17688
@/do@+{if (str_pool[u] < str_pool[v]) goto found;
@y
do {if (str_pool[u] < str_pool[v]) goto found;
@z
@x [42.873] l.17691
}@+ while (!(u==str_start[k+1]));
@y
} while (!(u==str_start[k+1]));
@z

@x [43.875] l.17716
problem of creating the |hyf_distance|, |hyf_num|, and |hyf_next| arrays.
@y
problem of creating the arrays |hyf_distance|, |hyf_num|, and |hyf_next|.
@z

@x [43.879] l.17837
@t\hskip10pt@>static quarterword @!trie_o[trie_size+1];
@y
static quarterword @!trie_o[trie_size+1];
@z
@x [43.879] l.17839
@t\hskip10pt@>static trie_pointer @!trie_l[trie_size+1];
@y
static trie_pointer @!trie_l[trie_size+1];
@z
@x [43.879] l.17841
@t\hskip10pt@>static trie_pointer @!trie_r[trie_size+1];
@y
static trie_pointer @!trie_r[trie_size+1];
@z
@x [43.879] l.17843
@t\hskip10pt@>static trie_pointer @!trie_ptr; /*the number of nodes in the trie*/
@y
static trie_pointer @!trie_ptr; /*the number of nodes in the trie*/
@z
@x [43.879] l.17844
@t\hskip10pt@>static trie_pointer @!trie_hash[trie_size+1];
@y
static trie_pointer @!trie_hash[trie_size+1];
@z

@x [43.882] l.17928
@t\hskip10pt@>static trie_pointer @!trie_max; /*largest location used in |trie|*/
@y
static trie_pointer @!trie_max; /*largest location used in |trie|*/
@z
@x [43.882] l.17929
@t\hskip10pt@>static bool @!trie_not_ready; /*is the trie still in linked form?*/
@y
static bool @!trie_not_ready; /*is the trie still in linked form?*/
@z

@x [43.885] l.17981
found: @<Pack the family into |trie| relative to |h|@>;
@y
found: @<Pack the family into |trie| relative to |h|@>@;
@z

@x [43.886] l.17992
  @/do@+{incr(trie_max);trie_taken[trie_max]=false;
  trie_link(trie_max)=trie_max+1;trie_back(trie_max)=trie_max-1;
  }@+ while (!(trie_max==h+max_hyph_char));
@y
  do {incr(trie_max);trie_taken[trie_max]=false;
  trie_link(trie_max)=trie_max+1;trie_back(trie_max)=trie_max-1;
  } while (!(trie_max==h+max_hyph_char));
@z

@x [43.888] l.18007
@/do@+{
@y
@/do {
@z
@x [43.888] l.18012
  @/do@+{trie_min[l]=r;incr(l);

  }@+ while (!(l==ll));
@y
  do {trie_min[l]=r;incr(l);
  } while (!(l==ll));
@z
@x [43.888] l.18017
}@+ while (!(q==0))
@y
} while (!(q==0));
@z

@x [43.889] l.18025
@/do@+{q=trie_l[p];
@y
do {q=trie_l[p];
@z
@x [43.889] l.18030
}@+ while (!(p==0));
@y
} while (!(p==0));
@z

@x [43.890] l.18048
  @/do@+{s=trie_link(r);trie[r]=h;r=s;
  }@+ while (!(r > trie_max));
@y
  do {s=trie_link(r);trie[r]=h;r=s;
  } while (!(r > trie_max));
@z

@x [43.891] l.18065
@/do@+{q=trie_l[p];c=trie_c[p];
@y
@/do {q=trie_l[p];c=trie_c[p];
@z
@x [43.891] l.18069
}@+ while (!(p==0));
@y
} while (!(p==0));
@z

@x [43.896] l.18169
{@+@<Compute the trie op code, |v|, and set |l:=0|@>;
@y
{@+@<Compute the trie op code, |v|, and set |l=0|@>;
@z

@x [44.901] l.18259
and set~|p:=null|@>@;@+break;
@y
and set~|p=null|@>@;@+break;
@z

@x [45.919] l.18706
        @/do@+{q=link(q);
        if ((type(q)==ins_node)&&(subtype(q)==subtype(r))) incr(t);
        }@+ while (!(q==broken_ins(r)));
@y
        do {q=link(q);
        if ((type(q)==ins_node)&&(subtype(q)==subtype(r))) incr(t);
        } while (!(q==broken_ins(r)));
@z

@x [45.930] l.18856
@/do@+{get_token();
}@+ while (!(loc==null));
@y
do get_token(); while (!(loc==null));
@z

@x [46.933] l.18941
@t\4@>@<Cases of |main_control| that are not part of the inner loop@>@;
@y
@/@t\4@>@<Cases of |main_control| that are not part of the inner loop@>@;
@z

@x [46.937] l.19003
set it equal to |sf_code(cur_chr)|, except that it should never change
@y
set it equal to |sf_code|( |cur_chr|), except that it should never change
@z

@x [46.946] l.19256
  @<Modify the glue specification in |main_p| according to the space factor@>;
@y
  @<Modify the glue specification in |main_p| according to the space factor@>@;
@z

@x [46.947] l.19265
shrink(main_p)=xn_over_d(shrink(main_p), 1000, space_factor)
@y
shrink(main_p)=xn_over_d(shrink(main_p), 1000, space_factor);
@z

@x [46.948] l.19280
@t\4@>@<Forbidden cases detected in |main_control|@>@+@, any_mode(mac_param):
@y
@<Forbidden cases detected in |main_control|@>@+@, any_mode(mac_param):
@z

@x [47.971] l.19633
@t\4@>@<Cases of |handle_right_brace| where a |right_brace| triggers a delayed
@y
@/@t\4@>@<Cases of |handle_right_brace| where a |right_brace| triggers a delayed
@z

@x [47.974] l.19674
`\.{\\lower3.8pt\\hbox...}'
@y
`\.{\\lower3.8pt} \.{\\hbox...}'
@z

@x [47.980] l.19829
if (cur_val < 256) define(box_base+cur_val, box_ref, cur_box);
@y
if (cur_val < 256) g_define(box_base+cur_val, box_ref, cur_box);
@z

@x [47.982] l.19868
from the list and make |cur_box| point to it; otherwise set |cur_box:=null|@>@;@+break;
@y
from the list and make |cur_box| point to it; otherwise set |cur_box=null|@>@;@+break;
@z

@x [47.984] l.19897
@/do@+{p=q;
@y
do {p=q;
@z
@x [47.984] l.19903
}@+ while (!(q==tail));
@y
} while (!(q==tail));
@z

@x [47.1008] l.20214
    @/do@+{p=q;
@y
    do {p=q;
@z
@x [47.1008] l.20220
    }@+ while (!(q==tail));
@y
    } while (!(q==tail));
@z

@x [47.1011] l.20261
case un_vbox: if (chr_code==copy_code) print_esc("unvcopy")
  @<Cases of |un_vbox| for |print_cmd_chr|@>;@/
@y
case un_vbox: if (chr_code==copy_code) print_esc("unvcopy");
  else @<Cases of |un_vbox| for |print_cmd_chr|@>@;
@z

@x [47.1026] l.20453
  @<Create a character node |q| for the next character, but set |q:=null|
@y
  @<Create a character node |q| for the next character, but set |q=null|
@z
@x [47.1026] l.20455
  if (q!=null) @<Append the accent with appropriate kerns, then set |p:=q|@>;
@y
  if (q!=null) @<Append the accent with appropriate kerns, then set |p=q|@>;
@z

@x [48.1060] l.20943
to null; set~|cur_val:=0|@>;
@y
to null; set~|cur_val=0|@>;
@z

@x [48.1089] l.21254
case left_right: if (chr_code==left_noad) print_esc("left")
@/@<Cases of |left_right| for |print_cmd_chr|@>;@/
@y
case left_right: if (chr_code==left_noad) print_esc("left");
else @<Cases of |left_right| for |print_cmd_chr|@>@;
@z

@x [48.1094] l.21322
the current math lists and set |danger:=true|@>;
@y
the current math lists and set |danger=true|@>;
@z
@x [48.1094] l.21332
the current math lists and set |danger:=true|@>;
@y
the current math lists and set |danger=true|@>;
@z

@x [49.1104] l.21539
  else if (chr_code==2) print_esc("outer")
  @/@<Cases of |prefix| for |print_cmd_chr|@>;@/
@y
  else if (chr_code==2) print_esc("outer");
  else @<Cases of |prefix| for |print_cmd_chr|@>@;
@z

@x [49.1109] l.21650
@d define(A, B, C) if (global) geq_define(A, B, C);@+else eq_define(A, B, C)
@y
@d g_define(A, B, C) if (global) geq_define(A, B, C);@+else eq_define(A, B, C)
@z

@x [49.1110] l.21668
restart: @/do@+{get_token();
}@+ while (!(cur_tok!=space_token));
@y
restart: do get_token(); while (!(cur_tok!=space_token));
@z

@x [49.1112] l.21690
defined in a format file, but are not yet loaded intp memory---the |define|
@y
defined in a format file, but are not yet loaded intp memory---the |g_define|
@z

@x [49.1112] l.21698
  define(cur_font_loc, data, cur_chr);@+break;
@y
  g_define(cur_font_loc, data, cur_chr);@+break;
@z

@x [49.1113] l.21712
  define(p, call+(a%4), def_ref);
@y
  g_define(p, call+(a%4), def_ref);
@z

@x [49.1116] l.21730
    {@+@/do@+{get_token();
    }@+ while (!(cur_cmd!=spacer));
@y
    {@+do get_token(); while (!(cur_cmd!=spacer));
@z
@x [49.1116] l.21744
  define(p, cur_cmd, cur_chr);
@y
  g_define(p, cur_cmd, cur_chr);
@z

@x [49.1119] l.21799
case shorthand_def: {@+n=cur_chr;get_r_token();p=cur_cs;define(p, relax, 256);
@y
case shorthand_def: {@+n=cur_chr;get_r_token();p=cur_cs;g_define(p, relax, 256);
@z
@x [49.1119] l.21802
  case char_def_code: {@+scan_char_num();define(p, char_given, cur_val);
@y
  case char_def_code: {@+scan_char_num();g_define(p, char_given, cur_val);
@z
@x [49.1119] l.21804
  case math_char_def_code: {@+scan_fifteen_bit_int(); math_to_Umath(cur_val); define(p, math_given, cur_val);
@y
  case math_char_def_code: {@+scan_fifteen_bit_int(); math_to_Umath(cur_val); g_define(p, math_given, cur_val);
@z
@x [49.1119] l.21812
      define(p, j, cur_ptr);
@y
      g_define(p, j, cur_ptr);
@z
@x [49.1119] l.21816
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

@x [49.1120] l.21836
  p=cur_cs;read_toks(n, p, j);define(p, call, cur_val);
@y
  p=cur_cs;read_toks(n, p, j);g_define(p, call, cur_val);
@z

@x [49.1123] l.21906
  define(p, glue_ref, cur_val);
@y
  g_define(p, glue_ref, cur_val);
@z

@x [49.1127] l.21987
  else if (p < math_code_base) define(p+cp, data, cur_val);
  else if (p < del_code_base) define(p+cp, data, hi(cur_val));
@y
  else if (p < math_code_base) g_define(p+cp, data, cur_val);
  else if (p < del_code_base) g_define(p+cp, data, hi(cur_val));
@z

@x [49.1129] l.22005
  scan_optional_equals();scan_font_ident();define(p, data, cur_val);
@y
  scan_optional_equals();scan_font_ident();g_define(p, data, cur_val);
@z

@x [49.1141] l.22215
if (c==0) dead_cycles=cur_val
@/@<Cases for |alter_integer|@>@;@/
@y
if (c==0) dead_cycles=cur_val;
else @<Cases for |alter_integer|@>@;
@z

@x [49.1143] l.22254
  define(q, shape_ref, p);
@y
  g_define(q, shape_ref, p);
@z

@x [49.1147] l.22285
    @/do@+{get_token();}@+ while (!(cur_cmd==right_brace)); /*flush the patterns*/
@y
    do get_token(); while (!(cur_cmd==right_brace)); /*flush the patterns*/
@z

@x [49.1152] l.22342
define(u, set_font, null_font);scan_optional_equals();scan_font_name();
@y
g_define(u, set_font, null_font);scan_optional_equals();scan_font_name();
@z

@x [49.1152] l.22368
define(u, set_font, f);eqtb[font_id_base+f]=eqtb[u];font_id_text(f)=t;
@y
g_define(u, set_font, f);eqtb[font_id_base+f]=eqtb[u];font_id_text(f)=t;
@z

@x [50.1206] l.22951
@/do@+{for (k=p; k<=q+1; k++) dump_wd(mem[k]);
@y
do {for (k=p; k<=q+1; k++) dump_wd(mem[k]);
@z
@x [50.1206] l.22954
}@+ while (!(q==rover));
@y
} while (!(q==rover));
@z

@x [50.1207] l.22976
@/do@+{for (k=p; k<=q+1; k++) undump_wd(mem[k]);
@y
do {for (k=p; k<=q+1; k++) undump_wd(mem[k]);
@z
@x [50.1207] l.22980
}@+ while (!(q==rover));
@y
} while (!(q==rover));
@z

@x [50.1208] l.22995
@<Dump regions 1 to 4 of |eqtb|@>;
@<Dump regions 5 and 6 of |eqtb|@>;
@y
@<Dump regions 1 to 4 of |eqtb|@>@;
@<Dump regions 5 and 6 of |eqtb|@>@;
@z

@x [50.1209] l.23002
@<Undump regions 1 to 6 of |eqtb|@>;
@y
@<Undump regions 1 to 6 of |eqtb|@>@;
@z

@x [50.1210] l.23017
@/do@+{j=k;
@y
do {j=k;
@z
@x [50.1210] l.23035
}@+ while (!(k==int_base))
@y
} while (!(k==int_base));
@z

@x [50.1211] l.23038
@/do@+{j=k;
@y
do {j=k;
@z
@x [50.1211] l.23054
}@+ while (!(k > eqtb_size))
@y
} while (!(k > eqtb_size));
@z

@x [50.1212] l.23058
@/do@+{undump_int(x);
@y
do {undump_int(x);
@z
@x [50.1212] l.23066
}@+ while (!(k > eqtb_size))
@y
} while (!(k > eqtb_size));
@z

@x [50.1214] l.23084
@/do@+{undump(p+1, hash_used, p);undump_hh(hash[p]);
}@+ while (!(p==hash_used));
@y
do {undump(p+1, hash_used, p);undump_hh(hash[p]);
} while (!(p==hash_used));
@z

@x [53.1241] l.23889
  @/@<Cases of |extension| for |print_cmd_chr|@>@/
@y
  @/@t\4@>@<Cases of |extension| for |print_cmd_chr|@>@;
@z

@x [53.1243] l.24133
@/@<Cases for |do_extension|@>@/
@y
@/@t\4@>@<Cases for |do_extension|@>@;
@z

@x [53.1252] l.24264
@/@<Cases for displaying the |whatsit| node@>@/
@y
@/@t\4@>@<Cases for displaying the |whatsit| node@>@;
@z

@x [53.1253] l.24416
@/@<Cases for making a partial copy of the whatsit node@>@/
@y
@/@t\4@>@<Cases for making a partial copy of the whatsit node@>@;
@z

@x [53.1254] l.24610
@/@<Cases for wiping out the whatsit node@>@/
@y
@/@t\4@>@<Cases for wiping out the whatsit node@>@;
@z

@x [53.1262] l.24707
@/do@+{get_token();
}@+ while (!(cur_tok==end_write_token));
@y
do get_token(); while (!(cur_tok==end_write_token));
@z

@x [54.1299] l.25165
  @/do@+{m=nest[p].mode_field;
  if (p > 0) decr(p);else m=vmode;
  }@+ while (!(m!=hmode));
@y
  do {m=nest[p].mode_field;
  if (p > 0) decr(p);else m=vmode;
  } while (!(m!=hmode));
@z

@x [54.1307] l.25315
@ @<Cases of |the| for |print_cmd_chr|@>=;
else if (chr_code==1) print_esc("unexpanded");
else print_esc("detokenize")
@y
@ @<Cases of |the| for |print_cmd_chr|@>=
if (chr_code==1) print_esc("unexpanded");
else print_esc("detokenize");
@z

@x [54.1311] l.25352
    @/do@+{incr(n);p=link(p);@+}@+ while (!(p==null));
@y
    do {incr(n);p=link(p);@+} while (!(p==null));
@z
@x [54.1311] l.25354
    @/do@+{print_nl("### level ");print_int(n);print(": ");
@y
    do {print_nl("### level ");print_int(n);print(": ");
@z
@x [54.1311] l.25359
    }@+ while (!(p==null));
@y
    } while (!(p==null));
@z

@x [54.1313] l.25370
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

@x [54.1316] l.25379
@ @<Cases for |alter_integer|@>=;
else if (c==2)
@y
@ @<Cases for |alter_integer|@>=
if (c==2)
@z

@x [54.1318] l.25399
@ @<Cases of |left_right| for |print_cmd_chr|@>=;
else if (chr_code==middle_noad) print_esc("middle")
@y
@ @<Cases of |left_right| for |print_cmd_chr|@>=
if (chr_code==middle_noad) print_esc("middle");
@z

@x [54.1320] l.25409
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

@x [54.1332] l.25539
@ @<Cases of |read| for |print_cmd_chr|@>=;
else print_esc("readline")
@y
@ @<Cases of |read| for |print_cmd_chr|@>=
print_esc("readline");
@z

@x [54.1339] l.25615
  @/do@+{get_x_token();
  if (cur_cs==0) store_new_token(cur_tok);
  }@+ while (!(cur_cs!=0));
@y
  do {get_x_token();
  if (cur_cs==0) store_new_token(cur_tok);
  } while (!(cur_cs!=0));
@z

@x [54.1343] l.25659
@ @<Cases of |prefix| for |print_cmd_chr|@>=;
else if (chr_code==8) print_esc("protected")
@y
@ @<Cases of |prefix| for |print_cmd_chr|@>=
if (chr_code==8) print_esc("protected");
@z

@x [54.1355] l.25898
switch (s) {@<Cases for evaluation of the current term@>@;
@y
switch (s) {@t\4@>@<Cases for evaluation of the current term@>@;
@z

@x [54.1393] l.26559
@/do@+{i=hex_dig4(sa_index(q));p=q;q=link(p);free_node(p, s);
@y
do {i=hex_dig4(sa_index(q));p=q;q=link(p);free_node(p, s);
@z
@x [54.1393] l.26564
}@+ while (!(sa_used(q) > 0));
@y
} while (!(sa_used(q) > 0));
@z

@x [54.1397] l.26667
  @<Cases for |do_marks|@>@;
@y
  @t\4@>@<Cases for |do_marks|@>@;
@z

@x [54.1412] l.26934
@/do@+{p=sa_loc(sa_chain);
@y
do {p=sa_loc(sa_chain);
@z
@x [54.1412] l.26957
}@+ while (!(sa_chain==null));
@y
} while (!(sa_chain==null));
@z

@x [54.1414] l.26978
@/do@+{q=p;p=trie_r[q];
}@+ while (!((p==0)||(c <= trie_c[p])));
@y
@/do {q=p;p=trie_r[q];
} while (!((p==0)||(c <= trie_c[p])));
@z

@x [54.1420] l.27046
command code |un_vbox| with \.{\\unvbox} and \.{\\unvcopy}, they are
@y
command code |un_vbox| with commands \.{\\unvbox} and \.{\\unvcopy}, they are
@z

@x [54.1421] l.27057
@ @<Cases of |un_vbox| for |print_cmd_chr|@>=;
else if (chr_code==last_box_code) print_esc("pagediscards");
else if (chr_code==vsplit_code) print_esc("splitdiscards")
@y
@ @<Cases of |un_vbox| for |print_cmd_chr|@>=
if (chr_code==last_box_code) print_esc("pagediscards");
else if (chr_code==vsplit_code) print_esc("splitdiscards");
@z

@x [61.1465] l.27414
case if_primitive_code: {@+@/do@+{get_token();}@+ while (!(cur_tok!=space_token));
@y
case if_primitive_code: {@+do get_token(); while (!(cur_tok!=space_token));
@z

@x [62.1469] l.27489
an |ROM_undefined_primitive| that will allow an easy test.
@y
|ROM_undefined_primitive| that will allow an easy test.
@z

@x [65.1502] l.27755
@ The \.{\\filemoddate} expands to a date with the same format as the
creation date (see \.{\\creationdate}).
@y
@ The \.{\\filemoddate} expands to a date with the same format as
\.{\\creationdate}.
@z

@x [65.1504] l.27772
simply setting |xchg_buffer_length| to $0$.
@y
simply setting |xchg_buffer_length| to~$0$.
@z

@x [65.1509] l.27849
      do@+{i=fgetc(f); if (i==EOF) break;
@y
      do {i=fgetc(f); if (i==EOF) break;
@z
@x [65.1509] l.27852
       }@+ while (!(feof(f)||(l==0)));
@y
       } while (!(feof(f)||(l==0)));
@z

@x [66.1522] l.28060
@ The |@/do@+{| loop here preserves the following invariant relations
@y
@ The |do {| loop here preserves the following invariant relations
@z
@x [66.1522] l.28075
@/do@+{be_careful=p-q;p=be_careful+p;
@y
do {be_careful=p-q;p=be_careful+p;
@z
@x [66.1522] l.28079
}@+ while (!(f >= mpfract_one));
@y
} while (!(f >= mpfract_one));
@z

@x [66.1523] l.28102
@<Compute $p=\lfloor qf/2^{28}+{1\over2}\rfloor-q$@>;
@y
@<Compute $p=\lfloor qf/2^{28}+{1\over2}\rfloor-q$@>@;
@z

@x [66.1525] l.28127
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

@x [66.1545] l.28320
@/do@+{
  @/do@+{next_random;
@y
do {
  do {next_random;
@z
@x [66.1545] l.28325
  }@+ while (!(abs(x) < u));
@y
  } while (!(abs(x) < u));
@z
@x [66.1545] l.28328
}@+ while (!(ab_vs_cd(1024, l, x, x) >= 0));
@y
} while (!(ab_vs_cd(1024, l, x, x) >= 0));
@z

@x [72.1591] l.29146
@ Writing a color node to the output is simple.
@y
@ Outputting a color node is simple.
@z

@x [74.1618] l.29708
  while (true)
@y
  loop@+
@z

@x [75.1632] l.30297
  else /* if (x<0) */
@y
  else /* if |(x<0)| */
@z

@x [78.1639] l.30581
    @<allocate a new |setpage_node| |p|@>@;
@y
    @<Allocate a new |setpage_node| |p|@>@;
@z

@x [78.1640] l.30588
@
@<allocate a new |setpage_node| |p|@>=
@y
@ @<Allocate a new |setpage_node| |p|@>=
@z

@x [82.1658] l.30893
static const int hmap_int[] ={@/
@y
static const int hmap_int[] ={@t\1\1@>@/
@z
@x [82.1658] l.30936
floating_penalty_no  /* |floating_penalty_code|	42*/
@y
@t\2\2@> floating_penalty_no  /* |floating_penalty_code| 42*/
@z

@x [82.1660] l.30948
if not successful, it returns $-1$.
@y
if not successful, it returns~$-1$.
@z

@x [83.1664] l.30991
static const int hmap_dimen[] ={@/
@y
static const int hmap_dimen[] ={@t\1\1@>@/
@z
@x [83.1664] l.31012
  emergency_stretch_no /* |emergency_stretch_code| 20 */
@y
  @t\2\2@> emergency_stretch_no /* |emergency_stretch_code| 20 */
@z
@x [85.1674] l.31118
static int hmap_glue[] ={

@y
static int hmap_glue[] ={@t\1\1@>@/
@z
@x [85.1674] l.31134
par_fill_skip_no  /* |par_fill_skip_code| 14 */
@y
@t\2\2@> par_fill_skip_no  /* |par_fill_skip_code| 14 */
@z

@x [87.1687] l.31386
{@+while (true)
@y
{@+loop@+
@z

@x [98.1718] l.32020
\TeX's math nodes have an optional width---a copy of the mathsurround parameter---while
@y
\TeX's math nodes have an optional width---a copy of the \.{\\mathsurround} parame\-ter---while
@z

@x [122.1758] l.32982
static struct option long_options[] = {@/
@y
static struct option long_options[] = {@t\1\1@>@/
@z
@x [122.1758] l.33015
      { 0, 0, 0, 0 }@+}@+;
@y
@t\2\2@> { 0, 0, 0, 0 } @/
};
@z

@x [122.1759] l.33025
{@+ while (true) {
@y
{@+ loop @+ {
@z

@x [122.1762] l.33075
#define ARGUMENT_IS(S) argument_is(long_options+option_index,S)
@y
#define ARGUMENT_IS(S) @[argument_is(long_options+option_index,S)@]
@z

@x [129.1793] l.33711
@+ }
@y
}
@z

@x [130.1795] l.33765
#ifdef @!INIT
@y
@#
#ifdef @!INIT
@+@t}\6\4\4{@>
@z

@x [132.1802] l.33956
the \TeX\ Live distribution and slightly modified.
@y
the \TeX\ Live distribution and slightly modified.

@s md5_byte_t int
@s md5_state_t int
@z
@x [132.1802] l.34017
/* static structure for file status set by |find_input_file| */
#ifdef WIN32
@y
@#
#ifdef WIN32
/* static structure for file status set by |find_input_file| */
@+@t}\6{@>
@z
@x [132.1802] l.34020
#define GET_FILE_STAT _stat(fname,&file_stat)
@y
#define GET_FILE_STAT @[_stat(fname,&file_stat)@]
@Z
@x [132.1802] l.34023
#define GET_FILE_STAT stat(fname,&file_stat)
@y
#define GET_FILE_STAT @[stat(fname,&file_stat)@]
@z

@x [134.1834] l.34809
@ Since specifying, finding, and loading a font can be quite complex process,
@y
@ Since specifying, finding, and loading a font can be quite complex,
@z
