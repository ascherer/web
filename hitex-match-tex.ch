@x [4.52]
static int s_no(const char *str);
@y
static int s_no(const char *str);

@ (Empty section to keep numbering intact.)
@z

@x [32.598]
@ The |dvi_four| procedure outputs four bytes in two's complement notation,
@y
@ (Empty section to keep numbering intact.)

@ The |dvi_four| procedure outputs four bytes in two's complement notation,
@z

@x [32.615]
@ When |hlist_out| is called, its duty is to output the box represented
@y
@ (Empty section to keep numbering intact.)

@ When |hlist_out| is called, its duty is to output the box represented
@z

@x [33.636]
@* Packaging.
@y
@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@* Packaging.
@z

@x [33.643]
@ @<Make node |p| look like a |char_node| and |goto reswitch|@>=
@y
@ (Empty section to keep numbering intact.)

@ @<Make node |p| look like a |char_node| and |goto reswitch|@>=
@z

@x [33.654]
@ @<Determine horizontal glue shrink setting...@>=
@y
@ (Empty section to keep numbering intact.)

@ @<Determine horizontal glue shrink setting...@>=
@z

@x [33.659]
@ When a box is being appended to the current vertical list, the
@y
@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ When a box is being appended to the current vertical list, the
@z

@x [40.874]
@ When the following code is activated, the |line_break| procedure is in its
@y
@ (Empty section to keep numbering intact.)

@ When the following code is activated, the |line_break| procedure is in its
@z

@x [45.973]
@ \TeX\ is not always in vertical mode at the time |build_page|
@y
@ (Empty section to keep numbering intact.)

@ \TeX\ is not always in vertical mode at the time |build_page|
@z

@x [45.976]
@ When the user's output routine finishes, it has constructed a vlist
@y
@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ When the user's output routine finishes, it has constructed a vlist
@z

@x [48.1096]
@ A displayed equation is considered to be three lines long, so we
@y
@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ A displayed equation is considered to be three lines long, so we
@z

@x [48.1145]
@ At this time |p| points to the mlist for the formula; |a| is either
@y
@ (Empty section to keep numbering intact.)

@ At this time |p| points to the mlist for the formula; |a| is either
@z

@x [48.1147]
@ When \.{\\halign} appears in a display, the alignment routines operate
@y
@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ When \.{\\halign} appears in a display, the alignment routines operate
@z

@x [53.1290]
@ @<Declare procedures needed in |do_extension|@>=
static void scan_spaces(void)
{ @<Get the next non-blank non-call token@>;
  back_input();
}
static void scan_destination(pointer p)
{@+if (scan_keyword("name"))
  { label_has_name(p)=1;
    scan_toks(false,true); label_ptr(p)=def_ref;
  }
  else if (scan_keyword("num"))
  { label_has_name(p)=0; scan_int(); label_ptr(p)=cur_val;
  }
  else
  { print_err("`name {...}' or `num 000' expected. Inserted `num 0'.");
    label_has_name(p)=0; label_ptr(p)=0;
    error();
    return;
  }
  scan_spaces();
}
static void scan_label(pointer p)
{ if (!scan_keyword("goto"))
    print_err("keyword `goto' inserted");
  scan_destination(p);
}
@y
@z

@x [53.1301]
@ @d adv_past(A) @+if (subtype(A)==language_node)
@y
@ @<Declare procedures needed in |do_extension|@>=
static void scan_spaces(void)
{ @<Get the next non-blank non-call token@>;
  back_input();
}
static void scan_destination(pointer p)
{@+if (scan_keyword("name"))
  { label_has_name(p)=1;
    scan_toks(false,true); label_ptr(p)=def_ref;
  }
  else if (scan_keyword("num"))
  { label_has_name(p)=0; scan_int(); label_ptr(p)=cur_val;
  }
  else
  { print_err("`name {...}' or `num 000' expected. Inserted `num 0'.");
    label_has_name(p)=0; label_ptr(p)=0;
    error();
    return;
  }
  scan_spaces();
}
static void scan_label(pointer p)
{ if (!scan_keyword("goto"))
    print_err("keyword `goto' inserted");
  scan_destination(p);
}

@ (Empty section to keep numbering intact.)

@ (Empty section to keep numbering intact.)

@ @d adv_past(A) if (subtype(A)==language_node)
@z

@x [53.1303]
@ @<Process whatsit |p| in |vert_break| loop, |goto not_found|@>=
@y
@ (Empty section to keep numbering intact.)

@ @<Process whatsit |p| in |vert_break| loop, |goto not_found|@>=
@z
