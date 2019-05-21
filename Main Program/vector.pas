program vector;
var
ai,bi,ci,fi: real;
aj,bj,cj,fj: real;
ak,bk,ck,fk: real;
begin
write(' ai = ');
readln(ai);
write(' bi = ');
readln(bi);
write(' ci = ');
readln(ci);
fi:=ai-bi-ci;
write(' aj = ');
readln(aj);
write(' bj = ');
readln(bj);
write(' cj = ');
readln(cj);
fj:=aj-bj-cj;
write(' ak = ');
readln(ak);
write(' bk = ');
readln(bk);
write(' ck = ');
readln(ck);
fk:=ak-bk-ck;
write('a-b-c=');
write(fi:0:1);
write('i');
if (fi >= 0) then write('+');
write(fj:0:1);
if (fj >= 0) then write('+');
write('j');
write(fk:0:1);
if (fk >= 0) then write('+');
write('k');
end.

