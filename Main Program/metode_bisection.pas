program
metode_bisection;

var
a,b,c: real;

function f(x: real): real;
begin
  f:=cos(x)-x;
end;

begin
  //write('a = '); readln(a);
  //write('b = '); readln(b);
  a:=0;
  b:=40;
  c:=(a+b)/2;
  repeat
  if (f(a)*f(c) < 0) then b:=c else a:=c;
  c:=(a+b)/2;
  until (abs(b-a) < 0.000000000001);
  write('x = ', c:0:16);
  readln;
end.