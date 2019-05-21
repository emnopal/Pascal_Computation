program nxn_gauss_jordan;

const
	max = 25;

type
	matrik = record
	row, col : byte;
	element : array [1..max, 1..max] of real;
end;

	vektor = record
	row : byte;
	element : array [1..max] of real;
end;

var
	x, b : vektor;
	A : matrik;
	n : integer;
	c : real;
	error : boolean;

procedure input;
	var
		i,j : byte;
	begin
		write ('How many equation you want to solve? ');
		readln (n);
		writeln;
		A.row := n;
		A.col := n ;
		b.row := n;
			for i := 1 to n do
				begin
					writeln ('The ',i, ' Equation' );
					for j := 1 to n do
						begin
							write ('X[',i,',',j,'] = ');
							readln (A.element[i,j]);
						end;
					write('Y[',i,']   = '); readln(A.element[i,n+1]);
			writeln;
	end;
end;


procedure matrix;
	var
		i,j,k : integer;
		temp, S : real;
	begin
		error := false;
		for i := 1 to n do
			begin
				if (A.element[i,i] = 0 ) then
					begin
						write(A.element[i,i]) ;
						error := true;
						exit;
					end;
				temp := A.element[i,i];
				for k := 1 to n+1 do
					begin
						A.element[i,k] := A.element[i,k] / temp;
					end;
				for j := 1  to n do
					begin
						if(j<>i) then
							begin
								c := A.element[j,i];
								for k := 1 to n+1 do
									begin
										A.element[j,k] := A.element [j,k] - (c * A.element[i,k]);
									end;
							end;
			end;
	end;
	x.row := n;
	for i := n downto 1 do
		begin
			if (A.element [i,i] = 0.0 ) then
			begin
				error := true;
				exit;
			end;
			x.element[i] := A.element[i,n+1];
		end;
		end;

procedure result;
	var i : byte;
	begin
		if (error) then
			begin
				writeln ('Error');
			end
		else
			begin
				writeln ('Result : ');
				for i := 1 to x.row do
					writeln('X',i,' = ',x.element[i]:6:2);
				end;
			end;
 
begin
	input;
	matrix;
	result;
	readln;
end.
