program turunan;

var
dy_maju,dy_mundur,dy_tengah,x,h:real;
i,j,n: integer;

function f(x: real): Real;
begin
    f:=cos(x) - x;
end;

begin
  x:= pi;
  h:= 0.001;
  dy_maju:=((f(x+h) - f(x))/h);
  dy_mundur:=((f(x) - f(x-h))/h);
  dy_tengah:=((f(x+h) - f(x-h))/(h+h));
  writeln('Turunan Maju = ', dy_maju:0:5);
  writeln('Turunan Mundur = ', dy_mundur:0:5);
  writeln('Turunan Tengah = ', dy_tengah:0:5);
  readln;
end.





