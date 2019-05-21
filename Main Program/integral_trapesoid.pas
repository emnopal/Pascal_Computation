// Integral Trapesoid
program integral_trapesoid;
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
    write('Nilai Awal = '); readln(a);
    write('Nilai Akhir = '); readln(b);
    n:=round((b-a)/dx);
    r:=0;
    for i:=1 to n do 
    begin
        r:=r+(f(a+(i-1)*dx)+f(a+i*dx))*dx/2;
    end;
    write('Hasilnya = ', r:0:3); 
    readln;
end.
