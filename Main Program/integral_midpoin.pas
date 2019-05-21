// Integral Mid-rule Point
program integral_midpoin;

const
dx = 0.01;

var
b,a,r: real;
i,n : integer;

function f(x: real): real;
    begin
        f:=4*exp((5/4)*ln(x)) - 8*exp((1/4)*ln(x));
    end;

begin
    a:=0;
    b:=10;
    n:=round((b-a)/dx);
    r:=0;
    for i:=1 to n do 
    begin
        r:=r+f(a+((2*i-1)/2)*dx)*dx;
    end;
    write('Hasilnya = ', r:0:15); 
    readln;
end.
