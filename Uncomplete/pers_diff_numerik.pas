// Persamaan Diferensial Numerik
// Menggunakan metode numerik runge kutta ordo 3

program pers_dif;

var 
x,y : array[1..1000] of real;
xmax,h,f0,f1,f2: real;
i,n: integer;

function func(x,y: real): real;
begin
	func:=-3*x*y*y;
end;

begin
	x[1]:=0;
	y[1]:=4;
	xmax:=10;
	h:=0.1;
	n:=round(((xmax-x[1])/h)+1);
	for i:= 2 to n do x[i]:=x[1]+h*(i-1);
	for i:= 2 to n do 
	begin
		f0:=func(x[i-1],y[i-1]);
		f1:=func(x[i-1]+0.5*h,y[i-1]+0.5*h*f0);
		f2:=func(x[i-1]+h,y[i-1]+h*f1);
		y[i]:=y[i-1]+h*(f0+4*f1+f2)/6;
	end;
	writeln('	x 	;	y(x) 	');
	for i:=1 to n do writeln(x[i]:6:2,'	: 	',y[i]:6:2);
end.
