Changes for TANGLE.WEB to adapt to TeX Live convention.

In order to compare output created by TL's TANGLE and by this FPC TANGLE,
invoke TL's TANGLE with option '-uppercase' and extend one internal size
with this patch.

Public domain.  Originally written by Andreas Scherer, 2021.

Section 8.

@x l.196
@!max_id_length=12; {long identifiers are chopped to this length, which must
@y
@!max_id_length=32; {long identifiers are chopped to this length, which must
@z

Section 31.

@x l.640
procedure error; {prints '\..' and location of error message}
@y
procedure error; {prints `\..' and location of error message}
@z

Section 119.

@x l.2185 - Calculate with decimal limit value INT_MAX/10.
  if n>=@'1463146314 then err_print('! Constant too big')
@y
  if n>=214748364 then err_print('! Constant too big')
@z

Sections 160--162.

@x l.2915 - Avoid numeric overflow; see also section 119.
repeat val:=10*val+next_control-"0"; next_control:=get_next;
@y
repeat if val>=214748364 then err_print('! Constant too big')
@.Constant too big@>
  else val:=10*val+next_control-"0";
  next_control:=get_next;
@z
@x l.2920 - Avoid numeric overflow; see also section 119.
repeat val:=8*val+next_control-"0"; next_control:=get_next;
@y
repeat if val>=@'2000000000 then err_print('! Constant too big')
@.Constant too big@>
  else val:=8*val+next_control-"0";
  next_control:=get_next;
@z
@x l.2926 - Avoid numeric overflow; see also section 119.
val:=16*val+next_control-"0"; next_control:=get_next;
@y
  if val>=@"8000000 then err_print('! Constant too big')
@.Constant too big@>
  else val:=16*val+next_control-"0";
  next_control:=get_next;
@z

Section 172.

@x l.3095 - Reject strings as macro names.
  if next_control<>identifier then
@y
  if (next_control<>identifier) or (buffer[id_first]="""") then
@z
