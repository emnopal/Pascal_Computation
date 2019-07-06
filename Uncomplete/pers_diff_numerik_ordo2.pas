// Persamaan Diferensial Numerik
// Menggunakan metode numerik runge kutta ordo 3

program pers_dif_secord;

var 
x,y,u : array[1..1000] of real;
xmax,h,f0,f1,f2,f3,u1,u2,u3: real;
i,n: integer;

function func(x,y,u: real): real;
begin
	func:=3*cos(x)+4*u-4*y;
end;


begin
	x[1]:=0;
	y[1]:=1;
	u[1]:=2;
	xmax:=10;
	h:=0.1;
	n:=round(((xmax-x[1])/h)+1);
	for i:= 2 to n do x[i]:=x[1]+h*(i-1);
	for i:= 2 to n do 
	begin
		f0:=func(x[i-1],y[i-1],u[i-1]);
		u1:=u[i-1]+0.5*h*f0;
		f1:=func(x[i-1]+0.5*h,y[i-1]+0.5*h*u[i-1],u1);
		u2:=u[i-1]+0.5*h*f1;
		f2:=func(x[i-1]+0.5*h,y[i-1]+h*u1,u2);
		u3:=u[i-1]+h*f2;
		f3:=func(x[i-1]+h,y[i-1]+h*u2,u3);
		u[i]:=u[i-1]+h*(f0+2*f1+2*f2+f3)/6;
		y[i]:=y[i-1]+h*(u[i-1]+2*u1+2*u2+u3)/6;
	end;
	writeln('	x 	;	y(x) 	');
	for i:=1 to n do writeln(x[i]:6:2,'	: 	',y[i]:6:2);
end.
