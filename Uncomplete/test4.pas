//Cara Membuat Program untuk Menghitung Vektor di Bahasa Pemrograman Pascal
//Copyright Muhammad Naufal 2019

program vector;

uses crt;

var
ai,bi,ci,di,ei: real;
aj,bj,cj,dj,ej: real;
ak,bk,ck,dk,ek: real;
h: real;

begin

clrscr();
write(' ai = ');
readln(ai);
write(' bi = ');
readln(bi);
write(' ci = ');
readln(ci);
di:=ai+bi+ci;
ei:=ai*bi*ci;
write(' aj = ');
readln(aj);
write(' bj = ');
readln(bj);
write(' cj = ');
readln(cj);
dj:=aj+bj+cj;
ej:=aj*bj*cj;
write(' ak = ');
readln(ak);
write(' bk = ');
readln(bk);
write(' ck = ');
readln(ck);
dk:=ak+bk+ck;
ek:=ak*bk*ck;
writeln('a + b + c =', di:0:0, 'i + ', dj:0:0, 'j + ', dk:0:0, 'k');
readln();
writeln('a x b x c =', ei:0:0, 'i x ', ej:0:0, 'j x ', ek:0:0, 'k');
readln();
h:=sqrt(di*di+dj*dj+dk*dk);
write(' h = ', h:0:0);
readln(h);

end.
