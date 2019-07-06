program kelarin;

var
x,y: real;

function f(x: real): real;
begin
  f:=cos(x)-x;
end;

function df(x: real): real;
var a: integer;
begin
  a:=1;
  df:=-sin(x)-a;
end;

begin
  write('x = ');
  readln(x);
  repeat
  y:=x-(f(x)/df(x));
  until (f(x) < 0.000000001);
  write('y = ', y:0:16);
  readln;
end.
