program metode_newton_raphson;

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
    writeln('---------------------------------'); 
    writeln('| Program Metode Newton Raphson |');
    writeln('| Muhammad Naufal               |'); 
    writeln('| 111709700000033               |'); 
    writeln('| Praktikum Fisika Komputasi    |'); 
    writeln('| Fisika UIN JAKARTA            |'); 
    writeln('| Senin, 8 April 2019           |'); 
    writeln('| Hasilnya adalah:              |'); 
    x:=1;
    z:=x;
        repeat
            begin
                y:=f(x)/df(x);
                z:=z-y;
                x:=z;
            end;
        until (y < 0.0000000001);
    writeln('| ', z:0:16, '            |');
    writeln('---------------------------------'); 
    writeln('Press Enter to Exit');
    readln();
end.