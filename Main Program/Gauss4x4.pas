{
	Soal Persamaan Linear 5 Variabel

	2x+4y+z+7u+v=9
	7x+6y+9z+4v=8
	4x+3y+4z+6u+7v=7
	8x+7y+5z+3u+6v=6
	9x+3z+u+9v=5

	matriksnya adalah 
	
	[2,4,1,7,1][9]
	[7,6,9,0,4][8]
	[4,3,4,6,7][7]
	[8,7,5,3,6][6]
	[9,0,3,1,9][5]

	diberikan persamaan diatas, 
	selesaikan dengan menggunakan metode Gauss-Jordan!
}


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