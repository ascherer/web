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

@x [1.1] l.254
using \eTeX and \Prote, and adding functions common to other engines from
@y
using \eTeX\ and \Prote, and adding functions common to other engines from
@z

@x [1.2] l.378
@d banner "This is HiTeX, Version 3.141592653"
          eTeX_version_string"-"HINT_VERSION_STRING" "TL_VERSION
@y
@d banner "This is HiTeX, Version 3.141592653"@|
          eTeX_version_string"-"HINT_VERSION_STRING" "TL_VERSION
@z

@x [1.4] l.434
uses identifiers that \TeX will declare as macros.
@y
uses identifiers that \TeX\ will declare as macros.
@z

@x [1.4] l.445
  @<Initialize whatever \TeX\ might access@>;
@y
  @<Initialize whatever \TeX\ might access@>@;
@z

@x [1.16] l.632
   /*\.{WEB}'s |else| acts like `\ignorespaces|while true do|\unskip'*/
@y
   /*\.{WEB}'s |loop| acts like `\ignorespaces|while true do|\unskip'*/
@z

@x [4.46] l.1332
@t\4@>@<Declare \Prote\ procedures for strings@>@;
@y
@#@<Declare \Prote\ procedures for strings@>@;
@z

@x [4.52] l.1421
static int s_no(const char *str);
@y
static int s_no(const char *str);

@ (Empty section to keep numbering intact.)
@z

@x [5.55] l.1495
#define @[put(F)@]    @[fwrite(&((F).d)@],@[sizeof((F).d),1,(F).f)@]@;
@y
#define @[put(F)@]    @[fwrite(&((F).d),sizeof((F).d),1,(F).f)@]
@z

@x [6.71] l.1798
|error;|\cr}}$$
@y
|error();|\cr}}$$
@z

@x [7.100] l.2267
typedef int32_t nonnegative_integer; /*$0\le x<2^{31}$*/
@y
typedef uint32_t nonnegative_integer; /*$0\le x<2^{31}$*/
@z

@x [7.107] l.2424
@p @<Declare \Prote\ arithmetic routines@>@/
@y
@p @<Declare \Prote\ arithmetic routines@>@;
@z

@x [7.108] l.2458
@d float_constant(A) ((double)(A)) /*convert |int| constant to |double|*/
@y
@d float_constant(A) ((double)(A)) /*convert |int| constant to |double|*/
@#
@d perror e@&r@&r@&o@&r /* this is a \.{CWEB} coding trick: */
@f perror error /* `\&{perror}' will be equivalent to `\&{error}' */
@f error x /* but `|error|' will not be treated as a reserved word */
@z
@x [7.108] l.2464
#error  @=float type must have size 4@>
@y
#perror @=float type must have size 4@>
@z

@x [10.151] l.3321
q=@<Current |mem| equivalent of glue parameter number |n|@>@t@>;
@y
q=@[@<Current |mem| equivalent of glue parameter number |n|@>@];
@z

@x [10.154] l.3361
@d kern_node 11 /*|type| of a kern node*/
@d explicit 1 /*|subtype| of kern nodes from \.{\\kern} and \.{\\/}*/
@y
@s explicit true

@d kern_node 11 /*|type| of a kern node*/
@d explicit 1 /*|subtype| of kern nodes from \.{\\kern} and \.{\\/}*/
@z

@x [12.173] l.3688
        else@<Print the font identifier for |font(p)|@>;
@y
        else@<Print the font identifier for |font(p)|@>@;
@z

@x [12.173] l.3694
  else@<Print a short indication of the contents of node |p|@>;
@y
  else@<Print a short indication of the contents of node |p|@>@;
@z

@x [12.175] l.3727
  else@<Print the font identifier for |font(p)|@>;
@y
  else@<Print the font identifier for |font(p)|@>@;
@z

@x [13.200] l.4066
fast_delete_glue_ref(p)
@y
fast_delete_glue_ref(p)@;
@z

@x [17.230] l.5007
  @/@<Cases of |assign_toks| for |print_cmd_chr|@>@/
@y
  @/@t\4@>@<Cases of |assign_toks| for |print_cmd_chr|@>@;
@z

@x [17.236] l.5335
@/@<Cases for |print_param|@>@/
@y
@/@t\4@>@<Cases for |print_param|@>@;
@z

@x [17.240] l.5488
@p static void fix_date_and_time(void)
@y
@s tm int
@p static void fix_date_and_time(void)
@z

@x [18.265] l.6038
@/@<Cases of |expandafter| for |print_cmd_chr|@>@/
@y
@/@t\4@>@<Cases of |expandafter| for |print_cmd_chr|@>@;
@z
@x [18.265] l.6058
case read_to_cs: if (chr_code==0) print_esc("read")
  @<Cases of |read| for |print_cmd_chr|@>;@+break;
@y
case read_to_cs: if (chr_code==0) print_esc("read");
  else @<Cases of |read| for |print_cmd_chr|@>;@+break;
@z
@x [18.265] l.6065
  @<Cases of |set_shape| for |print_cmd_chr|@>@;@/
@y
  @/@t\4@>@<Cases of |set_shape| for |print_cmd_chr|@>@;
@z
@x [18.265] l.6067
case the: if (chr_code==0) print_esc("the")
  @<Cases of |the| for |print_cmd_chr|@>;@+break;
@y
case the: if (chr_code==0) print_esc("the");
  else @<Cases of |the| for |print_cmd_chr|@>;@+break;
@z

@x [18.266] l.6089
printn_esc(font_id_text(font(p)))
@y
printn_esc(font_id_text(font(p)));
@z

@x [19.274] l.6274
@/@<Cases for |eq_destroy|@>@/
@y
@/@t\4@>@<Cases for |eq_destroy|@>@;
@z

@x [21.297] l.6817
@t\4@>@<Cases of |print_cmd_chr| for symbolic printing of primitives@>@/
@y
@/@t\4@>@<Cases of |print_cmd_chr| for symbolic printing of primitives@>@;
@z

@x [25.366] l.8171
@/@<Cases for |expandafter|@>@/
@y
@/@t\4@>@<Cases for |expandafter|@>@;
@z

@x [25.376] l.8295
case input: if (chr_code==0) print_esc("input")
  @/@<Cases of |input| for |print_cmd_chr|@>;@/
@y
case input: if (chr_code==0) print_esc("input");
  else @<Cases of |input| for |print_cmd_chr|@>@;
@z

@x [25.377] l.8300
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

@x [26.408] l.8794
@t\4\4@>@<Declare procedures that scan restricted classes of integers@>@;
@t\4\4@>@<Declare \eTeX\ procedures for scanning@>@;
@t\4\4@>@<Declare procedures that scan font-related stuff@>@;
@y
@<Declare procedures that scan restricted classes of integers@>@;
@<Declare \eTeX\ procedures for scanning@>@;
@<Declare procedures that scan font-related stuff@>@;
@z

@x [26.416] l.8994
case set_page_int: if (chr_code==0) print_esc("deadcycles")
@/@<Cases of |set_page_int| for |print_cmd_chr|@>;@/
@+else print_esc("insertpenalties");@+break;
@y
case set_page_int: if (chr_code==0) print_esc("deadcycles");
else @<Cases of |set_page_int| for |print_cmd_chr|@>@;
else print_esc("insertpenalties");@+break;
@z
@x [26.416] l.9005
  @/@<Cases of |last_item| for |print_cmd_chr|@>@/
@y
  @/@t\4@>@<Cases of |last_item| for |print_cmd_chr|@>@;
@z

@x [26.418] l.9027
{@+if (m==0) cur_val=dead_cycles
@/@<Cases for `Fetch the |dead_cycles| or the |insert_penalties|'@>;@/
@y
{@+if (m==0) cur_val=dead_cycles;
else @<Cases for `Fetch the |dead_cycles| or the |insert_penalties|'@>@;
@z

@x [26.423] l.9079
  @/@<Cases for fetching a dimension value@>@/
@y
  @/@t\4@>@<Cases for fetching a dimension value@>@;
@z
@x [26.423] l.9086
  @/@<Cases for fetching an integer value@>@/
@y
  @/@t\4@>@<Cases for fetching an integer value@>@;
@z

@x [27.468] l.9855
  @/@<Cases of |convert| for |print_cmd_chr|@>@/
@y
  @/@t\4@>@<Cases of |convert| for |print_cmd_chr|@>@;
@z

@x [27.470] l.9886
@/@<Cases of `Scan the argument for command |c|'@>@/
@y
@/@t\4@>@<Cases of `Scan the argument for command |c|'@>@;
@z

@x [27.471] l.9904
@/@<Cases of `Print the result of command |c|'@>@/
@y
@/@t\4@>@<Cases of `Print the result of command |c|'@>@;
@z

@x [28.487] l.10222
  @/@<Cases of |if_test| for |print_cmd_chr|@>@/
@y
  @/@t\4@>@<Cases of |if_test| for |print_cmd_chr|@>@;
@z

@x [28.500] l.10403
@/@<Cases for |conditional|@>@/
@y
@/@t\4@>@<Cases for |conditional|@>@;
@z

@x [32.618] l.12986
@p @t\4@>@<Declare procedures needed in |hlist_out|, |vlist_out|@>@t@>@/
@y
@p @<Declare procedures needed in |hlist_out|, |vlist_out|@>@t@>@;
@z

@x [33.678] l.13905
@p static void append_to_vlist(pointer @!b)@t\2\2@>@/
{ bool height_known;@t\1@>@/
@y
@p static void append_to_vlist(pointer @!b)
{ @+bool height_known;
@z
@x [33.678] l.13910
  {@+scaled d;@t\1@> /*deficiency of space between baselines*/
@y
  {@+scaled d; /*deficiency of space between baselines*/
@z
@x [33.678] l.13912
  {@+d=width(baseline_skip)-prev_depth-height(b);
@y
  d=width(baseline_skip)-prev_depth-height(b);
@z
@x [33.678] l.13918
  }@+
} @+  else @+if (prev_depth<=unknown_depth || prev_depth>ignore_depth )@t\2@>@/
@y
} @+  else @+if (prev_depth<=unknown_depth || prev_depth>ignore_depth ) @/
@z

@x [36.727] l.14956
@t\4@>@<Cases for noads that can follow a |bin_noad|@>@;
@y
@/@t\4@>@<Cases for noads that can follow a |bin_noad|@>@;
@z

@x [37.773] l.15943
@p @t\4@>@<Declare the procedure called |get_preamble_token|@>@t@>@/
@y
@p @<Declare the procedure called |get_preamble_token|@>@;
@z

@x [37.785] l.16151
@p @t\4@>@<Declare the procedure called |init_span|@>@t@>@/
@y
@p @<Declare the procedure called |init_span|@>@;
@z

@x [37.799] l.16399
{ @<Handle an alignment that depends on |hsize| or |vsize|@>@;
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
@z
@x [37.799] l.16411
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

@x [38.823] l.16888
@d do_all_six(A) A(1);A(2);A(3);A(4);A(5);A(6)
@y
@d do_all_six(A) A(1);A(2);A(3);A(4);A(5);A(6)@;
@z

@x [40.894] l.18245
static void hyphenate_word(void)@t\2\2@>@/
{ pointer @!q, @!s, @!prev_s;@t\1@> /*miscellaneous nodes of temporary interest*/
@y
static void hyphenate_word(void)
{ @+pointer @!q, @!s, @!prev_s; /*miscellaneous nodes of temporary interest*/
@z

@x [46.1043] l.21109
  @<Modify the glue specification in |main_p| according to the space factor@>;
@y
  @<Modify the glue specification in |main_p| according to the space factor@>@;
@z

@x [46.1044] l.21118
shrink(main_p)=xn_over_d(shrink(main_p), 1000, space_factor)
@y
shrink(main_p)=xn_over_d(shrink(main_p), 1000, space_factor);
@z

@x [46.1045] l.21133
@t\4@>@<Forbidden cases detected in |main_control|@>@+@, any_mode(mac_param):
@y
@<Forbidden cases detected in |main_control|@>@+@, any_mode(mac_param):
@z

@x [47.1077] l.21682
if (cur_val < 256) define(box_base+cur_val, box_ref, cur_box);
@y
if (cur_val < 256) @[g_define(box_base+cur_val, box_ref, cur_box)@];
@z

@x [47.1108] l.22114
case un_vbox: if (chr_code==copy_code) print_esc("unvcopy")
  @<Cases of |un_vbox| for |print_cmd_chr|@>;@/
@y
case un_vbox: if (chr_code==copy_code) print_esc("unvcopy");
  else @<Cases of |un_vbox| for |print_cmd_chr|@>@;
@z

@x [48.1189] l.23156
case left_right: if (chr_code==left_noad) print_esc("left")
@/@<Cases of |left_right| for |print_cmd_chr|@>;@/
@y
case left_right: if (chr_code==left_noad) print_esc("left");
else @<Cases of |left_right| for |print_cmd_chr|@>@;
@z

@x [49.1209] l.23494
  else if (chr_code==2) print_esc("outer")
  @/@<Cases of |prefix| for |print_cmd_chr|@>;@/
@y
  else if (chr_code==2) print_esc("outer");
  else @<Cases of |prefix| for |print_cmd_chr|@>@;
@z

@x [49.1214] l.23605
@d define(A, B, C) if (global) geq_define(A, B, C);@+else eq_define(A, B, C)
@y
@d g_define(A, B, C) if (global) geq_define(A, B, C);@+else eq_define(A, B, C)
@z

@x [49.1217] l.23647
case set_font: define(cur_font_loc, data, cur_chr);@+break;
@y
case set_font: g_define(cur_font_loc, data, cur_chr);@+break;
@z

@x [49.1218] l.23661
  define(p, call+(a%4), def_ref);
@y
  g_define(p, call+(a%4), def_ref);
@z

@x [49.1221] l.23693
  define(p, cur_cmd, cur_chr);
@y
  g_define(p, cur_cmd, cur_chr);
@z

@x [49.1224] l.23748
case shorthand_def: {@+n=cur_chr;get_r_token();p=cur_cs;define(p, relax, 256);
@y
case shorthand_def: {@+n=cur_chr;get_r_token();p=cur_cs;g_define(p, relax, 256);
@z
@x [49.1224] l.23751
  case char_def_code: {@+scan_char_num();define(p, char_given, cur_val);
@y
  case char_def_code: {@+scan_char_num();g_define(p, char_given, cur_val);
@z
@x [49.1224] l.23753
  case math_char_def_code: {@+scan_fifteen_bit_int();define(p, math_given, cur_val);
@y
  case math_char_def_code: {@+scan_fifteen_bit_int();g_define(p, math_given, cur_val);
@z
@x [49.1224] l.23761
      define(p, j, cur_ptr);
@y
      g_define(p, j, cur_ptr);
@z
@x [49.1224] l.23765
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

@x [49.1225] l.23785
  p=cur_cs;read_toks(n, p, j);define(p, call, cur_val);
@y
  p=cur_cs;read_toks(n, p, j);g_define(p, call, cur_val);
@z

@x [49.1228] l.23855
  define(p, glue_ref, cur_val);
@y
  g_define(p, glue_ref, cur_val);
@z

@x [49.1232] l.23918
  if (p < math_code_base) define(p, data, cur_val);
  else if (p < del_code_base) define(p, data, hi(cur_val));
@y
  if (p < math_code_base) g_define(p, data, cur_val);
  else if (p < del_code_base) g_define(p, data, hi(cur_val));
@z

@x [49.1234] l.23932
  scan_optional_equals();scan_font_ident();define(p, data, cur_val);
@y
  scan_optional_equals();scan_font_ident();g_define(p, data, cur_val);
@z

@x [49.1246] l.24140
if (c==0) dead_cycles=cur_val
@/@<Cases for |alter_integer|@>@;@/
@y
if (c==0) dead_cycles=cur_val;
else @<Cases for |alter_integer|@>@;
@z

@x [49.1248] l.24179
  define(q, shape_ref, p);
@y
  g_define(q, shape_ref, p);
@z

@x [49.1257] l.24264
define(u, set_font, null_font);scan_optional_equals();scan_file_name();
@y
g_define(u, set_font, null_font);scan_optional_equals();scan_file_name();
@z
@x [49.1257] l.24269
common_ending: define(u, set_font, f);eqtb[font_id_base+f]=eqtb[u];font_id_text(f)=t;
@y
common_ending: g_define(u, set_font, f);eqtb[font_id_base+f]=eqtb[u];font_id_text(f)=t;
@z

@x [50.1299] l.24654
for example, `\.{ (preloaded format=plain 1982.11.19)}', showing the year,
@y
for example, `\.{(preloaded format=plain 1982.11.19)}', showing the year,
@z

@x [53.1346] l.25791
  @/@<Cases of |extension| for |print_cmd_chr|@>@/
@y
  @/@t\4@>@<Cases of |extension| for |print_cmd_chr|@>@;
@z

@x [53.1348] l.25982
@/@<Cases for |do_extension|@>@/
@y
@/@t\4@>@<Cases for |do_extension|@>@;
@z

@x [53.1357] l.26113
@/@<Cases for displaying the |whatsit| node@>@/
@y
@/@t\4@>@<Cases for displaying the |whatsit| node@>@;
@z

@x [53.1358] l.26254
@/@<Cases for making a partial copy of the whatsit node@>@/
@y
@/@t\4@>@<Cases for making a partial copy of the whatsit node@>@;
@z

@x [53.1359] l.26437
@/@<Cases for wiping out the whatsit node@>@/
@y
@/@t\4@>@<Cases for wiping out the whatsit node@>@;
@z

@x [54.1419] l.27171
@ @<Cases of |the| for |print_cmd_chr|@>=;
else if (chr_code==1) print_esc("unexpanded");
else print_esc("detokenize")
@y
@ @<Cases of |the| for |print_cmd_chr|@>=
if (chr_code==1) print_esc("unexpanded");
else print_esc("detokenize");
@z

@x [54.1425] l.27226
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

@x [54.1428] l.27235
@ @<Cases for |alter_integer|@>=;
else if (c==2)
@y
@ @<Cases for |alter_integer|@>=
if (c==2)
@z

@x [54.1430] l.27255
@ @<Cases of |left_right| for |print_cmd_chr|@>=;
else if (chr_code==middle_noad) print_esc("middle")
@y
@ @<Cases of |left_right| for |print_cmd_chr|@>=
if (chr_code==middle_noad) print_esc("middle");
@z

@x [54.1432] l.27265
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

@x [54.1444] l.27395
@ @<Cases of |read| for |print_cmd_chr|@>=;
else print_esc("readline")
@y
@ @<Cases of |read| for |print_cmd_chr|@>=
print_esc("readline");
@z

@x [54.1455] l.27515
@ @<Cases of |prefix| for |print_cmd_chr|@>=;
else if (chr_code==8) print_esc("protected")
@y
@ @<Cases of |prefix| for |print_cmd_chr|@>=
if (chr_code==8) print_esc("protected");
@z

@x [54.1467] l.27754
switch (s) {@<Cases for evaluation of the current term@>@;
@y
switch (s) {@t\4@>@<Cases for evaluation of the current term@>@;
@z

@x [54.1509] l.28523
  @<Cases for |do_marks|@>@;
@y
  @t\4@>@<Cases for |do_marks|@>@;
@z

@x [54.1534] l.28923
@ @<Cases of |un_vbox| for |print_cmd_chr|@>=;
else if (chr_code==last_box_code) print_esc("pagediscards");
else if (chr_code==vsplit_code) print_esc("splitdiscards")
@y
@ @<Cases of |un_vbox| for |print_cmd_chr|@>=
if (chr_code==last_box_code) print_esc("pagediscards");
else if (chr_code==vsplit_code) print_esc("splitdiscards");
@z

@x [55.1543] l.28985
be enabled, the engine is still compatible with \TeX with no added
@y
be enabled, the engine is still compatible with \TeX\ with no added
@z

@x [65.1617] l.29642
simply setting |xchg_buffer_length| to $0$.
@y
simply setting |xchg_buffer_length| to~$0$.
@z

@x [65.1630] l.29822
standard \PASCAL does not provide. So we do not bother to try. The
@y
standard \PASCAL\ does not provide. So we do not bother to try. The
@z

@x [81.1753] l.32319
static const int hmap_int[] ={@/
@y
static const int hmap_int[] ={@t\1\1@>@/
@z

@x [81.1753] l.32362
floating_penalty_no  /* |floating_penalty_code|	42*/
@y
@t\2\2@> floating_penalty_no  /* |floating_penalty_code|	42*/
@z

@x [82.1759] l.32417
static const int hmap_dimen[] ={@/
@y
static const int hmap_dimen[] ={@t\1\1@>@/
@z

@x [82.1759] l.32438
  emergency_stretch_no /* |emergency_stretch_code| 20 */
@y
  @t\2\2@> emergency_stretch_no /* |emergency_stretch_code| 20 */
@z
@x [84.1769] l.32544
static int hmap_glue[] ={

@y
static int hmap_glue[] ={@t\1\1@>@/
@z

@x [84.1769] l.32560
par_fill_skip_no  /* |par_fill_skip_code| 14 */
@y
@t\2\2@> par_fill_skip_no  /* |par_fill_skip_code| 14 */
@z

@x [121.1852] l.34391
static struct option long_options[] = {@/
@y
static struct option long_options[] = {@t\1\1@>@/
@z

@x [121.1852] l.34422
      { 0, 0, 0, 0 }@+}@+;
@y
@t\2\2@> { 0, 0, 0, 0 } @/
};
@z

@x [128.1887] l.35105
@+ }
@y
}
@z

@x [131.1896] l.35350
the \TeX\ Live distribution and slightly modified.
@y
the \TeX\ Live distribution and slightly modified.

@s md5_byte_t int
@s md5_state_t int
@z
