program Gauss4x4;

type
array2D = array[1..4,1..4] of real;
array1D = array[1..4] of real;

var
a: array2D;
b: array1D;
i,j,k: integer;
c: real;

begin

// 1st Matrix (Matrix A for 4x4 Matrix)
	for i:= 1 to 4 do
		begin
			for j:= 1 to 4 do
				begin
					write('Matrix of A[',i,',',j,']= ');
					readln(A[i,j]);
				end;
		end;

// 2nd Matrix (Matrix B for 4x1 Matrix)
	for i:= 1 to 4 do
		begin 
			write('Matrix of B[',i,']= ');
			readln(B[i]);
		end;

// Let's Counting a Gaussian Elimination Using Pascal
	writeln;
	for j:= 2 to 4 do
	begin
		for k:= 1 to j-1 do
			begin
				c:= A[j,k]/A[k,k];
				for i:=1 to 4 do
					begin
						A[j,i]:= A[j,i]-c*A[k,i];
					end;
				B[j]:= B[j] -c*B[k];
			end;
	end;
	for j:= 3 downto 1 do
	begin
		for k:= 4 downto j+1 do
			begin
				c:= A[j,k]/A[k,k];
					for i:=1 to 4 do
						begin
							A[j,i]:= A[j,i]-c*A[k,i];
						end;
					B[j]:= B[j] -c*B[k];
			end;
	end;
	for j:= 1 to 4 do
	begin
		c:= 1/A[j,j];
		for i:=1 to 4 do
			begin
				A[j,i]:= c*A[j,i];
			end;
		B[j]:= c*B[j];
	end;

// Show That Result
	writeln;
	for i:=1 to 4 do
		begin
			write('The result of x',i,' is ',B[i]:0:2,' ');
			writeln;
		end;
	readln;

// End of Statement
end.