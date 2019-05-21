program integral_simpson;

var
a,b,h,t,s,xi,p: real;
n,i: integer;
loop: string;

function f(x: real): real;
    begin
        f:=4*exp((5/4)*ln(x)) - 8*exp((1/4)*ln(x));  
    end;

begin
    repeat
        write('Batas Atas = ');
        readln(a);
        write('Batas Bawah = ');
        readln(b);
        write('Jumlah Iterasi = ');
        readln(n);
        if n mod 2 = 1 then halt;
            h:=(b-a)/(n);
            t:=0;
            s:=0;
            for i:=1 to n-1 do
                begin
                    xi:=a+(i*h);
                    if i mod 2 = 0 then 
                        t:=t+f(xi);
                end;
            for i:=1 to n do
                begin
                    xi:=a+(i*h);
                    if i mod 2 = 1 then
                        s:=s+f(xi)
                end;
        p:=(h/3)*(f(a)+f(b)*2*t+4*s);
        writeln('Integral: ', p:1:5);
        write('Lanjut atau Selesai? '); read(loop);
    until (loop='Selesai') or (loop='selesai');
readln;
end.
    
