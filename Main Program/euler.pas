program euler;

var
i,j,n: integer;
h,x: real;

function power(y: real; n: integer): real;
begin
  power:=1;
  for i:=1 to  n do
  begin
    power:=power*y;
  end;
end;

function factorial(a: integer): longint;
begin
  factorial:=1;
  for j:=1 to a do
  begin
    factorial:=factorial*j;
  end;
end;

function euler(x: real): real;
begin
  euler:=0;
  n:=0;
  repeat
    h:=power(x,n)/factorial(n);
    euler:=euler+h;
    n:=n+1
  until  (h<= 0.000000000000000001)
end;

begin
  x:=1;
  write('e = ', euler(x):0:16);
  readln;
end.