program fiting_polinom_interpolasi.pas;

var 
	x,f: array[0..9] of real;
	II,xmin,xmax,dx: real;
	i,j,k,N: integer;
	xdata,p: array[0..1000] of real;

begin 
	xmin := 0.1;
	xmax := 0.9;
	x[1]:=0.1;
	x[2]:=0.2;
	x[3]:=0.3;
	x[4]:=0.4;
	x[5]:=0.5; 
	x[6]:=0.6;
	x[7]:=0.7;
	x[8]:=0.8;
	x[9]:=0.9;
	f[1]:=1.184;
	f[2]:=1.203;
	f[3]:=1.321;
	f[4]:=1.463;
	f[5]:=1.638; 
	f[6]:=1.854;
	f[7]:=2.126;
	f[8]:=2.461;
	f[9]:=2.883;
	dx := 0.005;
	N := round(((xmax - xmin)/dx)+1);
	for i:= 1 to N do xdata[i] := xmin + dx*(i-1);
		for k:= 1 to N do 
			begin
				p[k]:=0;
				for i:= 1 to 9 do
					begin
						II := 1;
						for j:= 0 to 9 do
							begin
								if (i<>j) then II := II*(xdata[k]-x[j])/(x[i]-x[j]);
							end;
						p[k] := p[k] + II*f[i];
					end;
			end;
	writeln(' x 	|	 p(x) ');
	for i:=1 to N do writeln(xdata[i]:6:2,' | ',p[i]:6:2);
	readln;
end.