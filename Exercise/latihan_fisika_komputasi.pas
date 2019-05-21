// Soal
// 1.	Cari titik potong antara kurva x^2+y^2=2 dengan x^2-y^2=1!
// 2.	Cari nilai ekstreme dari fungsi f(x) = x^3-5x+3sin(x)
// 3. Diketahui a(t) = 4t^5/4 - 8t^1/4 menujukkan fungsi percepatan 
//		sebuah kendaraan bermotor jika pada t=0s kendaraan tersebut memilikk kecepatan v = 30m/s,
//		tentukan kecepatan kendaraan pada t=10s!

program
  Latihan_Fisika_Komputasi;
var
  a,b,c,h,a1,b1,c1,a2,b2,c2,a3,b3,c3,a4,b4,c4,u,v,r,q: real;
  i,n,vo: integer;
const
  dx = 0.01;
function f1(x: real): Real;
  begin
      f1:=2*x*x - 3;
  end;
function f2(x: real): Real;
  begin
      f2:= 3 - 2*x*x;
  end;
function f3(y: real): Real;
  begin
      f3:= 2*y*y - 3;
  end;
function f4(y: real): Real;
  begin
      f4:= 3 - 2*y*y;
  end;
function f(x: real): Real;
  begin
      f:=x*x*x - 5*x + 3*sin(x*x);
  end;
function df(x: real): real;
  begin
	    h:=0.01;
	    df:=((f(x+h) - f(x-h))/(h+h));
  end;
function hf(x: real): real;
  begin
      hf:=4*exp((5/4)*ln(x)) - 8*exp((1/4)*ln(x));
  end;
begin
  writeln('Nama : Muhammad Naufal');
  writeln('NIM : 11170970000033');
  writeln('Praktikum Fisika Komputasi');
  writeln('Latihan Soal Fisika Komputasi');
  writeln('Selasa, 23 - April - 2019');
  writeln('	');
  writeln('Soal');
  writeln('1. Cari titik potong antara kurva x^2+y^2=2 dengan x^2-y^2=1!');
  writeln('2. Cari nilai ekstreme dari fungsi f(x) = x^3-5x+3sin(x)');
  writeln('3. Diketahui a(t) = 4t^5/4 - 8t^1/4 menujukkan fungsi percepatan');
  writeln('   sebuah kendaraan bermotor jika pada t=0s kendaraan tersebut memilikk kecepatan v = 30m/s,');
  writeln('   tentukan kecepatan kendaraan pada t=10s!');
  writeln('');
  writeln('Jawab');
  begin
    begin
      a1:=0;
      b1:=2;
      c1:=(a1+b1)/2;
      repeat
        if (f1(a1)*f1(c1) < 0) then b1:=c1 else a1:=c1;
          c1:=(a1+b1)/2;
        until (abs(b1-a1) < 0.0000001);
      writeln('1. Cari titik potong antara kurva x^2+y^2=2 dengan x^2-y^2=1!: ');
      writeln('');
      writeln('x1 sebagai akar-akar pertama adalah = ', c1:0:4);
  end;
  begin
    a2:=0;
    b2:=2;
    c2:=(a2+b2)/2;
    repeat
    if (f2(a2)*f2(c2) < 0) then b2:=c2 else a2:=c2;
      c2:=(a2+b2)/2;
    until (abs(b2-a2) < 0.0000001);
    writeln('x2 sebagai akar-akar kedua adalah = -', c2:0:4);
  end;
  begin
    a3:=0;
    b3:=2;
    c3:=(a3+b3)/2;
    repeat
    if (f3(a3)*f3(c3) < 0) then b3:=c3 else a3:=c3;
      c3:=(a3+b3)/2;
    until (abs(b3-a3) < 0.0000001);
    writeln('y1 sebagai akar-akar ketiga adalah = ', c3:0:4);
  end;
  begin
    a4:=0;
    b4:=2;
    c4:=(a4+b4)/2;
    repeat
    if (f4(a4)*f4(c4) < 0) then b4:=c4 else a4:=c4;
      c4:=(a4+b4)/2;
    until (abs(b4-a4) < 0.0000001);
    writeln('y2 sebagai akar-akar keempat adalah = -', c4:0:4);
    writeln('(',c1:0:4,',',' ','-',c2:0:4,',',' ',c3:0:4,',',' ','-',c4:0:4,')');
  end;
  end;
  begin
    writeln('	');
    writeln('2. Cari nilai ekstreme dari fungsi f(x) = x^3-5x+3sin(x): ');
    writeln('');
    begin
      a:=-2;
      b:=2.5;
      c:=(a+b)/2;
      repeat
      if (df(a)*df(c) < 0) then b:=c else a:=c;
        c:=(a+b)/2;
      until (abs(b-a) < 0.0000001);
    writeln('Titik Maksimum = ', c:0:4);
  end;
  begin
    a:=2.5;
    b:=-2;
    c:=(a+b)/2;
    repeat
    if (df(a)*df(c) < 0) then b:=c else a:=c;
      c:=(a+b)/2;
    until (abs(b-a) < 0.0000001);
    writeln('Titik Minimum = ', c:0:4);
  end;
  end;
  writeln('  ');
  writeln('3. Diketahui a(t) = 4t^5/4 - 8t^1/4 menujukkan fungsi percepatan');
  writeln('   sebuah kendaraan bermotor jika pada t=0s kendaraan tersebut memilikk kecepatan v = 30m/s,');
  writeln('   tentukan kecepatan kendaraan pada t=10s!: ');
  writeln('                                                  ');
    begin
      u:=0;
      v:=10;
      n:=round((v-u)/dx);
      r:=0;
      vo:=30;
      for i:=1 to n do 
      begin
          r:=r+hf(u+((2*i-1)/2)*dx)*dx;
      end;
      q:=r+vo;
      writeln('Kecepatannya ketika t=0s aka kecepatan awal adalah = ', r:0:4, ' m/s');
      writeln('Kecepatannya ketika t=10s aka kecepatan ketika dipercepat adalah = ', q:0:4, ' m/s');       
  end;
  writeln('	');
  writeln('Ketik Enter untuk mengakhiri program');
  readln;
end.

