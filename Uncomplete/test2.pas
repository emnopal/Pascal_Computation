//Cara Membuat Program untuk Menghitung Vektor di Bahasa Pemrograman Pascal
//Copyright Muhammad Naufal 2019

program test2;

var
ai,bi,ci,di,ei,fi: real;
aj,bj,cj,dj,ej,fj: real;
ak,bk,ck,dk,ek,fk: real;
h: real;

begin
write(' ai = ');
readln(ai);
write(' bi = ');
readln(bi);
write(' ci = ');
readln(ci);
di:=ai+bi+ci;
ei:=ai*bi*ci;
fi:=ai-bi-ci;
write(' aj = ');
readln(aj);
write(' bj = ');
readln(bj);
write(' cj = ');
readln(cj);
dj:=aj+bj+cj;
ej:=aj*bj*cj;
fj:=aj-bj-cj;
write(' ak = ');
readln(ak);
write(' bk = ');
readln(bk);
write(' ck = ');
readln(ck);
dk:=ak+bk+ck;
ek:=ak*bk*ck;
fk:=ak-bk-ck;
writeln('a + b + c =', di:0:0, 'i+', dj:0:0, 'j+', dk:0:0, 'k');
readln();
writeln('a x b x c =', ei:0:0, 'ix', ej:0:0, 'jx', ek:0:0, 'k');
readln();
writeln('a - b - c =', fi:0:0, 'i', fj:0:0, 'j', fk:0:0, 'k');
h:=sqrt(di*di+dj*dj+dk*dk);
write(' h = ', h:0:0);
readln(h);
end.
