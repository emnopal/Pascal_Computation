program UTS_Fiskom;
const
pi = 3.14;
dx = 0.01;
var
at,bt,ct,a0,b0,c0,u,v,r,q,h,z: real;
i,vo,n: integer;
function a(t:real):real;
begin
a:=90-20*cos(0.03*pi*t);
end;
function b(t:real):real;
begin
b:=70+30*sin(0.015*pi*t);
end;
function d(t:real):real;
begin
d:=20-20*cos(0.03*pi*t)-30*sin(0.015*pi*t);
end;
function df(x: real): real;
begin
h:=0.01;
df:=((d(x+h) - d(x-h))/(h+h));
end;
begin
writeln('Nama : Muhammad Naufal');
writeln('NIM : 11170970000033');
writeln('Praktikum Fisika Komputasi');
writeln('Ulangan Tengah Semester Fisika Komputasi');
writeln('Selasa, 30 - April - 2019');
writeln('');
writeln('Nomor 1.');
at:=a(10);
bt:=b(10);
ct:=at-bt;
writeln('Percepatan pada saat t ','10',' adalah = ',at:0:3,'m/s2');
writeln('Perlambatan pada saat t ','10',' adalah = -',bt:0:3,'m/s2');
writeln('Percepatan total pada saat t ','10',' adalah = ',ct:0:3,'m/s2');
writeln('');
for i:=1 to 8 do
if (i mod 2 =0) then
begin
at:=a(i)*10;
bt:=b(i)*10;
ct:=at-bt;
writeln('Percepatan pada saat t ',i,'0',' adalah = ',at:0:3,'m/s2');
writeln('Perlambatan pada saat t ',i,'0',' adalah = -',bt:0:3,'m/s2');
writeln('Percepatan total pada saat t ',i,'0',' adalah = ',ct:0:3,'m/s2');
writeln('');
end;
writeln('Nomor 2.');
begin
a0:=0;
b0:=30;
c0:=(a0+b0)/2;
repeat
if (d(a0)*d(c0) < 0) then b0:=c0 else a0:=c0;
c0:=(a0+b0)/2;
until (abs(b0-a0) < 0.0000001);
writeln('Percepatan Konstan di Titik = x1: ', c0:0:3,' m/s2');
end;
begin
a0:=30;
b0:=50;
c0:=(a0+b0)/2;
repeat
if (d(a0)*d(c0) < 0) then b0:=c0 else a0:=c0;
c0:=(a0+b0)/2;
until (abs(b0-a0) < 0.0000001);
writeln('                              x2: ', c0:0:3,' m/s2');
end;
begin
a0:=50;
b0:=100;
c0:=(a0+b0)/2;
repeat
if (d(a0)*d(c0) < 0) then b0:=c0 else a0:=c0;
c0:=(a0+b0)/2;
until (abs(b0-a0) < 0.0000001);
writeln('                              x3: ', c0:0:3,' m/s2');
end;
writeln('');
writeln('Nomor 3.');
begin
r:=0;
vo:=40;
begin
u:=0;
v:=18.006;
n:=round((v-u)/dx);
for i:=1 to n do 
begin
r:=r+d(u+((2*i-1)/2)*dx)*dx;
end;
q:=r+vo;
writeln('Kecepatan di Titik x1 = ', q:0:4, ' m/s');       
end;
begin
u:=0;
v:=48.695;
n:=round((v-u)/dx);
for i:=1 to n do 
begin
r:=r+d(u+((2*i-1)/2)*dx)*dx;
end;
q:=r+vo;
writeln('                   x2 = ', q:0:4, ' m/s');
end;
begin
u:=0;
v:=66.700;
n:=round((v-u)/dx);
for i:=1 to n do 
begin
r:=r+d(u+((2*i-1)/2)*dx)*dx;
end;
q:=r+vo;
writeln('                   x3 = ', q:0:4, ' m/s');
end;
end;
writeln();
writeln('Nomor 4.');
begin
a0:=0;
b0:=50;
c0:=(a0+b0)/2;
repeat
if (df(a0)*df(c0) < 0) then b0:=c0 else a0:=c0;
c0:=(a0+b0)/2;
until (abs(b0-a0) < 0.0000001);
z:=a0+d(c0);
writeln('Waktu Maksimum = ', c0:0:3,' s');
writeln('Percepatan Maksimum = ', z:0:3,' m/s2');
end;
begin
a0:=50;
b0:=100;
c0:=(a0+b0)/2;
repeat
if (df(a0)*df(c0) < 0) then b0:=c0 else a0:=c0;
c0:=(a0+b0)/2;
until (abs(b0-a0) < 0.0000001);
z:=a0+d(c0);
writeln('Waktu Minimum = ', c0:0:3,' s');
writeln('Percepatan Minimum = ', z:0:3,' m/s2');
end;
readln;
end.
