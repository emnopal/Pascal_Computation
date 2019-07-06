program interpolasi_lagrange;

var 
	x,f: array[0..3] of real;
	II,xmin,xmax,dx: real;
	i,j,k,N: integer;
	xdata,p: array[0..1000] of real;

begin 
	xmin := 1;
	xmax := 4;
	x[0] := 1;
	x[1] := 2;
	x[2] := 3;
	x[3] := 4;
	f[0] := 30;
	f[1] := 70;
	f[2] := 120;
	f[3] := 180;
	dx := 0.05;
	N := round(((xmax - xmin)/dx)+1);
	for i:= 0 to N do xdata[i] := xmin + dx*(i-1);
		for k:= 0 to N do 
			begin
				p[k]:=0;
				for i:= 0 to 3 do
					begin
						II := 1;
						for j:= 0 to 3 do
							begin
								if (i<>j) then II := II*(xdata[k]-x[j])/(x[i]-x[j]);
							end;
						p[k] := p[k] + II*f[i];
					end;
			end;
	writeln(' x | p(x) ');
	for i:=0 to N do writeln(xdata[i]:6:2,' | ',p[i]:6:2);
	readln;
end.