program fitinggan;

type
	array2d = [1..100,0..100] of real;
	array1d = [1..100]of real;

var
	x,y: array1d
	m,n: integer;

begin
	m:=3;
	n:=4;
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

end.