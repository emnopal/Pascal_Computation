// Persamaan Diferensial Numerik
// Menggunakan metode numerik runge kutta ordo 3

program pers_dif_secord;

var 
x,y,u : array[0..1000] of real;
xmax,h,f0,f1,f2,f3,u1,u2,u3: real;
i,n: integer;

function func(x,y,u: real): real;
begin
	func:=5*y*y*x;
end;


begin
	x[1]:=0.1;
	x[2]:=0.2;
	x[3]:=0.3;
	x[4]:=0.4;
	x[5]:=0.5; 
	x[6]:=0.6;
	x[7]:=0.7;
	x[8]:=0.8;
	x[9]:=0.9;
	y[1]:=1.184;
	y[2]:=1.203;
	y[3]:=1.321;
	y[4]:=1.463;
	y[5]:=1.638; 
	y[6]:=1.854;
	y[7]:=2.126;
	y[8]:=2.461;
	y[9]:=2.883;
	xmax:=0.9;
	h:=0.01;
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
