@x [0] l.227
@s uint8_t int
@y
@s int8_t int
@s uint8_t int
@z

@x [1] l.254
using \eTeX and \Prote, and adding functions common to other engines from
@y
using \eTeX\ and \Prote, and adding functions common to other engines from
@z

@x [2] l.378
@d banner "This is HiTeX, Version 3.141592653"
          eTeX_version_string"-"HINT_VERSION_STRING" "TL_VERSION
@y
@d banner "This is HiTeX, Version 3.141592653"@|
          eTeX_version_string"-"HINT_VERSION_STRING" "TL_VERSION
@z

@x [4] l.434
uses identifiers that \TeX will declare as macros.
@y
uses identifiers that \TeX\ will declare as macros.
@z

@x [16] l.632
   /*\.{WEB}'s |else| acts like `\ignorespaces|while true do|\unskip'*/
@y
   /*\.{WEB}'s |loop| acts like `\ignorespaces|while true do|\unskip'*/
@z

@x [46] l.1332
@t\4@>@<Declare \Prote\ procedures for strings@>@;
@y
@#@<Declare \Prote\ procedures for strings@>@;
@z

@x [71] l.1798
|error;|\cr}}$$
@y
|error();|\cr}}$$
@z

@x [100] l.2267
typedef int32_t nonnegative_integer; /*$0\le x<2^{31}$*/
@y
typedef uint32_t nonnegative_integer; /*$0\le x<2^{31}$*/
@z

@x [107] l.2424
@p @<Declare \Prote\ arithmetic routines@>@/
@y
@p @<Declare \Prote\ arithmetic routines@>@;
@z

@x [108] l.2458
@d float_constant(A) ((double)(A)) /*convert |int| constant to |double|*/
@y
@d float_constant(A) ((double)(A)) /*convert |int| constant to |double|*/
@#
@d perror e@&r@&r@&o@&r /* this is a \.{CWEB} coding trick: */
@f perror error /* `\&{perror}' will be equivalent to `\&{error}' */
@f error x /* but `|error|' will not be treated as a reserved word */
@z
@x l.2464
#error  @=float type must have size 4@>
@y
#perror  @=float type must have size 4@>
@z

@x [151] l.3321
q=@<Current |mem| equivalent of glue parameter number |n|@>@t@>;
@y
q=@[@<Current |mem| equivalent of glue parameter number |n|@>@];
@z

@x [154] l.3361
@d kern_node 11 /*|type| of a kern node*/
@d explicit 1 /*|subtype| of kern nodes from \.{\\kern} and \.{\\/}*/
@y
@s explicit true

@d kern_node 11 /*|type| of a kern node*/
@d explicit 1 /*|subtype| of kern nodes from \.{\\kern} and \.{\\/}*/
@z

@x [200] l.4066
fast_delete_glue_ref(p)
@y
fast_delete_glue_ref(p)@;
@z

@x [230] l.5007
  @/@<Cases of |assign_toks| for |print_cmd_chr|@>@/
@y
  @/@t\4@>@<Cases of |assign_toks| for |print_cmd_chr|@>@;@/
@z

@x [236] l.5335
@/@<Cases for |print_param|@>@/
@y
@/@t\4@>@<Cases for |print_param|@>@;@/
@z

@x [240] l.5488
@p static void fix_date_and_time(void)
@y
@s tm int
@p static void fix_date_and_time(void)
@z

@x [265] l.6038
@/@<Cases of |expandafter| for |print_cmd_chr|@>@/
@y
@/@t\4@>@<Cases of |expandafter| for |print_cmd_chr|@>@;@/
@z
@x l.6065
  @<Cases of |set_shape| for |print_cmd_chr|@>@;@/
@y
  @/@t\4@>@<Cases of |set_shape| for |print_cmd_chr|@>@;@/
@z
@x l.6068
case the: if (chr_code==0) print_esc("the")
@y
@t\4@>case the: if (chr_code==0) print_esc("the")
@z

@x [274] l.6274
@/@<Cases for |eq_destroy|@>@/
@y
@/@t\4@>@<Cases for |eq_destroy|@>@;@/
@z

@x [297] l.6817
@t\4@>@<Cases of |print_cmd_chr| for symbolic printing of primitives@>@/
@y
@/@t\4@>@<Cases of |print_cmd_chr| for symbolic printing of primitives@>@;@/
@z

@x [366] l.8171
@/@<Cases for |expandafter|@>@/
@y
@/@t\4@>@<Cases for |expandafter|@>@;@/
@z

@x [408] l.8794
@t\4\4@>@<Declare procedures that scan restricted classes of integers@>@;
@t\4\4@>@<Declare \eTeX\ procedures for scanning@>@;
@t\4\4@>@<Declare procedures that scan font-related stuff@>@;
@y
@<Declare procedures that scan restricted classes of integers@>@;
@<Declare \eTeX\ procedures for scanning@>@;
@<Declare procedures that scan font-related stuff@>@;
@z

@x [416] l.9005
  @/@<Cases of |last_item| for |print_cmd_chr|@>@/
@y
  @/@t\4@>@<Cases of |last_item| for |print_cmd_chr|@>@;@/
@z

@x [418] l.9027
{@+if (m==0) cur_val=dead_cycles
@y
{@+if (m==0) cur_val=dead_cycles@;
@z

@x [423] l.9079
  @/@<Cases for fetching a dimension value@>@/
@y
  @/@t\4@>@<Cases for fetching a dimension value@>@;@/
@z
@x l.9086
  @/@<Cases for fetching an integer value@>@/
@y
  @/@t\4@>@<Cases for fetching an integer value@>@;@/
@z

@x [468] l.9855
  @/@<Cases of |convert| for |print_cmd_chr|@>@/
@y
  @/@t\4@>@<Cases of |convert| for |print_cmd_chr|@>@;@/
@z

@x [470] l.9886
@/@<Cases of `Scan the argument for command |c|'@>@/
@y
@/@t\4@>@<Cases of `Scan the argument for command |c|'@>@;@/
@z

@x [471] l.9904
@/@<Cases of `Print the result of command |c|'@>@/
@y
@/@t\4@>@<Cases of `Print the result of command |c|'@>@;@/
@z

@x [487] l.10222
  @/@<Cases of |if_test| for |print_cmd_chr|@>@/
@y
  @/@t\4@>@<Cases of |if_test| for |print_cmd_chr|@>@;@/
@z

@x [500] l.10403
@/@<Cases for |conditional|@>@/
@y
@/@t\4@>@<Cases for |conditional|@>@;@/
@z

@x [678] l.13905
@p static void append_to_vlist(pointer @!b)@t\2\2@>@/
{ bool height_known;@t\1@>@/
@y
@p static void append_to_vlist(pointer @!b)
{ bool height_known;
@z
@x l.13910
  {@+scaled d;@t\1@> /*deficiency of space between baselines*/
@y
  {@+scaled d; /*deficiency of space between baselines*/
@z
@x l.13912
  {@+d=width(baseline_skip)-prev_depth-height(b);
@y
  d=width(baseline_skip)-prev_depth-height(b);
@z
@x l.13918
  }@+
} @+  else @+if (prev_depth<=unknown_depth || prev_depth>ignore_depth )@t\2@>@/
@y
} @+  else @+if (prev_depth<=unknown_depth || prev_depth>ignore_depth ) @/
@z

@x [727] l.14956
@t\4@>@<Cases for noads that can follow a |bin_noad|@>@;
@y
@/@t\4@>@<Cases for noads that can follow a |bin_noad|@>@;
@z

@x [773] l.15943
@p @t\4@>@<Declare the procedure called |get_preamble_token|@>@t@>@/
@y
@p @<Declare the procedure called |get_preamble_token|@>@;@/
@z

@x [785] l.16151
@p @t\4@>@<Declare the procedure called |init_span|@>@t@>@/
@y
@p @<Declare the procedure called |init_span|@>@;@/
@z

@x [894] l.18245
static void hyphenate_word(void)@t\2\2@>@/
{ pointer @!q, @!s, @!prev_s;@t\1@> /*miscellaneous nodes of temporary interest*/
@y
static void hyphenate_word(void)
{ pointer @!q, @!s, @!prev_s; /*miscellaneous nodes of temporary interest*/
@z

@x [1045] l.21133
@t\4@>@<Forbidden cases detected in |main_control|@>@+@, any_mode(mac_param):
@y
@<Forbidden cases detected in |main_control|@>@+@, any_mode(mac_param):
@z

@x [1209] l.23494
  else if (chr_code==2) print_esc("outer")
@y
  else if (chr_code==2) print_esc("outer")@;
@z

@x [1214] l.23605
@d define(A, B, C) if (global) geq_define(A, B, C);@+else eq_define(A, B, C)
@y
@d g_define(A, B, C) if (global) geq_define(A, B, C);@+else eq_define(A, B, C)
@z

@x [1217] l.23647
case set_font: define(cur_font_loc, data, cur_chr);@+break;
@y
case set_font: g_define(cur_font_loc, data, cur_chr);@+break;
@z

@x [1218] l.23661
  define(p, call+(a%4), def_ref);
@y
  g_define(p, call+(a%4), def_ref);
@z

@x [1221] l.23693
  define(p, cur_cmd, cur_chr);
@y
  g_define(p, cur_cmd, cur_chr);
@z

@x [1224] l.23748
case shorthand_def: {@+n=cur_chr;get_r_token();p=cur_cs;define(p, relax, 256);
@y
case shorthand_def: {@+n=cur_chr;get_r_token();p=cur_cs;g_define(p, relax, 256);
@z
@x l.23751
  case char_def_code: {@+scan_char_num();define(p, char_given, cur_val);
@y
  case char_def_code: {@+scan_char_num();g_define(p, char_given, cur_val);
@z
@x l.23753
  case math_char_def_code: {@+scan_fifteen_bit_int();define(p, math_given, cur_val);
@y
  case math_char_def_code: {@+scan_fifteen_bit_int();g_define(p, math_given, cur_val);
@z
@x l.23761
      define(p, j, cur_ptr);
@y
      g_define(p, j, cur_ptr);
@z
@x l.23765
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

@x [1225] l.23785
  p=cur_cs;read_toks(n, p, j);define(p, call, cur_val);
@y
  p=cur_cs;read_toks(n, p, j);g_define(p, call, cur_val);
@z

@x [1228] l.23855
  define(p, glue_ref, cur_val);
@y
  g_define(p, glue_ref, cur_val);
@z

@x [1232] l.23918
  if (p < math_code_base) define(p, data, cur_val);
  else if (p < del_code_base) define(p, data, hi(cur_val));
@y
  if (p < math_code_base) g_define(p, data, cur_val);
  else if (p < del_code_base) g_define(p, data, hi(cur_val));
@z

@x [1234] l.23932
  scan_optional_equals();scan_font_ident();define(p, data, cur_val);
@y
  scan_optional_equals();scan_font_ident();g_define(p, data, cur_val);
@z

@x [1246] l.24140
if (c==0) dead_cycles=cur_val
@y
if (c==0) dead_cycles=cur_val@;
@z

@x [1248] l.23179
  define(q, shape_ref, p);
@y
  g_define(q, shape_ref, p);
@z

@x [1257] l.24264
define(u, set_font, null_font);scan_optional_equals();scan_file_name();
@y
g_define(u, set_font, null_font);scan_optional_equals();scan_file_name();
@z
@x l.24269
common_ending: define(u, set_font, f);eqtb[font_id_base+f]=eqtb[u];font_id_text(f)=t;
@y
common_ending: g_define(u, set_font, f);eqtb[font_id_base+f]=eqtb[u];font_id_text(f)=t;
@z

@x [1346] l.25791
  @/@<Cases of |extension| for |print_cmd_chr|@>@/
@y
  @/@t\4@>@<Cases of |extension| for |print_cmd_chr|@>@;@/
@z

@x [1348] l.25982
@/@<Cases for |do_extension|@>@/
@y
@/@t\4@>@<Cases for |do_extension|@>@;@/
@z

@x [1356] l.26113
@/@<Cases for displaying the |whatsit| node@>@/
@y
@/@t\4@>@<Cases for displaying the |whatsit| node@>@;@/
@z

@x [1357] l.26254
@/@<Cases for making a partial copy of the whatsit node@>@/
@y
@/@t\4@>@<Cases for making a partial copy of the whatsit node@>@;@/
@z

@x [1358] l.26437
@/@<Cases for wiping out the whatsit node@>@/
@y
@/@t\4@>@<Cases for wiping out the whatsit node@>@;@/
@z

@x [1467] l.27754
switch (s) {@<Cases for evaluation of the current term@>@;
@y
switch (s) {@t\4@>@<Cases for evaluation of the current term@>@;
@z

@x [1509] l.28523
  @<Cases for |do_marks|@>@;
@y
  @t\4@>@<Cases for |do_marks|@>@;
@z

@x [1543] l.28985
be enabled, the engine is still compatible with \TeX with no added
@y
be enabled, the engine is still compatible with \TeX\ with no added
@z

@x [1630] l.29822
standard \PASCAL does not provide. So we do not bother to try. The
@y
standard \PASCAL\ does not provide. So we do not bother to try. The
@z

@x [1887] l.35105
@+ }
@y
}
@z

@x [1896] l.35350
the \TeX\ Live distribution and slightly modified.
@y
the \TeX\ Live distribution and slightly modified.

@s md5_byte_t int
@s md5_state_t int
@z
