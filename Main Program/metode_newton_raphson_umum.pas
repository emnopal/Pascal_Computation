program metode_newton_raphson_umum;

var
x,y,z: real;

function f(x: real): real;
begin
  f:=cos(x) - x;
end;

function df(x: real): real;
begin
  df:=0 - sin(x) - 1;
end;

begin
  x:=1;
  z:=x;
    repeat
      begin
      y:=f(x)/df(x);
      z:=z-y;
      x:=z;
      end;
    until (y < 0.0000000001);
  writeln(z:0:16);
  readln;
end.
