Changes for WEAVE.WEB to clean up 'reduce/red' and 'squash/sq'.

The original 'squash(..,1,..)' was /not/ a combination of 'app1()' and
'reduce(..,1,..)'; instead, it was an ultra-compact variant of 'reduce'.

Moving the special case 'k==1' from 'sq' to 'red' as separate case 'k==0'
makes 'squash(..,k,..)' orthogonal in 'k=1,..,3'.  Curiously enough, now
there's no 'squash(..,1,..)' anymore, but CWEAVE has at least two rules
that apply this case.

Apply this extended change file with
$> tie -c weave-squash.ch weave.web weave.ch squash.ch
and use 'weave-squash.ch' instead of 'weave.ch' when tangling and weaving.

Public domain.  Originally written by Andreas Scherer, 2021.

@x
@d production(#)==@!debug prod(#) gubed; goto found
@d reduce(#)==red(#); production
@d production_end(#)==@!debug prod(#) gubed; goto found;
  end
@d squash(#)==begin sq(#); production_end
@y
@d production(#)==@!debug prod(#) gubed; goto found; end
@d reduce(#)==begin red(#); production
@d squash(#)==begin sq(#); production
@z

@x
else if cat[pp+1]=simp then squash(pp+1,1,math,0)(4)
@y
else if cat[pp+1]=simp then reduce(pp+1,0,math,0)(4)
@z
 
@x
squash(pp,1,intro,-3)(14)
@y
reduce(pp,0,intro,-3)(14)
@z

@x
else squash(pp,1,simp,-2)(25)
@y
else reduce(pp,0,simp,-2)(25)
@z
 
@x
else if cat[pp+1]=simp then squash(pp+1,1,math,0)(35)
@y
else if cat[pp+1]=simp then reduce(pp+1,0,math,0)(35)
@z

@x
squash(pp,1,terminator,-3)(42)
@y
reduce(pp,0,terminator,-3)(42)
@z
 
@x
if cat[pp+1]=close then squash(pp,1,stmt,-2)(43)
@y
if cat[pp+1]=close then reduce(pp,0,stmt,-2)(43)
@z

@x
  begin app(force); app(backup); app2(pp); reduce(pp,2,intro,-3)(44);
@y
  begin app(force); app(backup); squash(pp,2,intro,-3)(44);
@z

@x
squash(pp,1,stmt,-2)(50)
@y
reduce(pp,0,stmt,-2)(50)
@z
 
@x
if cat[pp+1]=beginning then squash(pp,1,stmt,-2)(51)
@y
if cat[pp+1]=beginning then reduce(pp,0,stmt,-2)(51)
@z

@x
scrap list.
@y
scrap list.  This procedure takes advantage of the simplification that
occurs when |k=0|.
@z
 
@x
begin cat[j]:=c; trans[j]:=text_ptr; freeze_text;
@y
begin cat[j]:=c;
if k>0 then
  begin
    trans[j]:=text_ptr; freeze_text;
  end;
@z

@x
@ Similarly, the `|squash|' macro invokes a procedure called `|sq|'. This
procedure takes advantage of the simplification that occurs when |k=1|.
@y
@ Similarly, the `|squash|' macro invokes a procedure called `|sq|', which
combines |app|${}_k$ and |red| for matching numbers~|k|.
@z
 
@x
var i:0..max_scraps; {index into scrap memory}
begin if k=1 then
  begin cat[j]:=c; @<Change |pp|...@>;
  end
else  begin for i:=j to j+k-1 do
    begin app1(i);
    end;
  red(j,k,c,d);
  end;
@y
begin
  case k of
  1: begin app1(j);@+ end;
  2: begin app2(j);@+ end;
  3: begin app3(j);@+ end;
  othercases confusion('squash')
  endcases;@/
  red(j,k,c,d);
@z
