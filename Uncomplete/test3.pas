//Cara Membuat Program untuk Menghitung Vektor di Bahasa Pemrograman Pascal
//Copyright Muhammad Naufal 2019

program vector;

uses crt;

var
ai,bi,ci,di: real;
aj,bj,cj,dj: real;
ak,bk,ck,dk: real;
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
write(' aj = ');
readln(aj);
write(' bj = ');
readln(bj);
write(' cj = ');
readln(cj);
dj:=aj+bj+cj;
write(' ak = ');
readln(ak);
write(' bk = ');
readln(bk);
write(' ck = ');
readln(ck);
dk:=ak+bk+ck;
writeln('a + b + c =', di:0:3, 'i + ', dj:0:3, 'j + ', dk:0:3, 'k');
readln();
h:=sqrt(di*di+dj*dj+dk*dk);
write(' h = ', h:0:3);
readln(h);

end.
