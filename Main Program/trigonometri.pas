program trigonometri;

// Global Variable
var 
i,j,n: integer;
x,h,y: real;

// Power
function power(y: real; n: integer): real;
begin
  power:=1;
  for i:=1 to  n do
  begin
    power:=power*y;
  end;
end;

// Factorial
function factorial(a: integer): longint;
begin
  factorial:=1;
  for j:=1 to a do
  begin
    factorial:=factorial*j;
  end;
end;

// Sinus
function sinus(x: real): real;
begin
  sinus:=0;
  n:=0;
  y:=3.1415926535897932384626433832795;
  x:=x*y/180;
  repeat
    h:=power(-1,n)*power(x,(2*n)+1)/factorial((2*n)+1);
    sinus:=sinus+h;
    n:=n+1
  until  (h<= 0.01)
end;

// Cosinus
function cosinus(x: real): real;
begin
  cosinus:=0;
  n:=0;
  y:=3.1415926535897932384626433832795;
  x:=x*y/180;
  repeat
    h:=power(-1,n)*power(x,2*n)/factorial(2*n);
    cosinus:=cosinus+h;
    n:=n+1
  until  (h<= 0.01)
end;

// Tangent
function tangent(x: real): real;
begin
  tangent:=0;
  y:=3.1415926535897932384626433832795;
  x:=x*y/180;
  h:=sinus(x)/cosinus(x);
  tangent:=tangent+h;
end;

// Procedure Trigonometry
procedure trigonometry;
begin
  write('x = ');
  readln(x);
  writeln('sin x = ', sinus(x):0:16);
  writeln('cos x = ', cosinus(x):0:16);
  writeln('tan x = ', tangent(x):0:16);
end;

// Summoning Trigonometry Program
begin
  trigonometry;
  readln;
end.
