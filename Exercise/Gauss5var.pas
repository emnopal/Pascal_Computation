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

// Declaration
program Gauss5var;

uses
crt;

type
array2D = array[0..4,0..4] of real;
array1D = array[0..4] of real;
arraystring = array[0..4] of string;

var
a: array2D;
b: array1D;
d: arraystring;
i,j,k: integer;
c: real;

// Main Program
begin

{with} textcolor(LightBlue); 

// Header
	writeln('Nama: Muhammad Naufal');
	writeln('NIM: 11170970000033');
	writeln('Praktikum Fisika Komputasi');
	writeln;

// Question
	writeln('Soal: ');
	writeln('Selesaikan Persamaan ini dengan menggunakan metode Gaussian!');
	writeln('2x+4y+z+7u+v=9');
	writeln('7x+6y+9z+4v=8');
	writeln('4x+3y+4z+6u+7v=7');
	writeln('8x+7y+5z+3u+6v=6');
	writeln('9x+3z+u+9v=5');

{// Matrix Custom Input (not usable, because i have another parameter)
// 1st Matrix (Matrix A for 4x4 Matrix)
	for i:= 0 to 4 do
		begin
			for j:= 0 to 4 do
				begin
					write('Matrix of A[',i,',',j,']= ');
					readln(A[i,j]);
				end;
		end;

// 2nd Matrix (Matrix B for 4x1 Matrix)
	for i:= 0 to 4 do
		begin 
			write('Matrix of B[',i,']= ');
			readln(B[i]);
		end;}

// Matrix input based from Question
	A[0][0]:=2;
	A[0][1]:=4;
	A[0][2]:=1;
	A[0][3]:=7;
	A[0][4]:=1;
	A[1][0]:=7;
	A[1][1]:=6;
	A[1][2]:=9;
	A[1][3]:=0;
	A[1][4]:=4;
	A[2][0]:=4;
	A[2][1]:=3;
	A[2][2]:=4;
	A[2][3]:=6;
	A[2][4]:=7;
	A[3][0]:=8;
	A[3][1]:=7;
	A[3][2]:=5;
	A[3][3]:=3;
	A[3][4]:=6;
	A[4][0]:=9;
	A[4][1]:=0;
	A[4][2]:=3;
	A[4][3]:=1;
	A[4][4]:=9;
	B[0]:=9;
	B[1]:=8;
	B[2]:=7;
	B[3]:=6;
	B[4]:=5;
	D[0]:='x';
	D[1]:='y';
	D[2]:='z';
	D[3]:='u';
	D[4]:='v';

// Show the Matrix
	writeln;
  	writeln('Matriksnya: ');
	for i:=0 to 4 do
  		begin
    		for j:=0 to 4 do
      			begin 
        			write('[',a[i,j]:0:0,']');
      			end;
      		write('|');
        	write('[',d[i],'] ');
        	write('= ');
        	write('[',b[i]:0:0,']');
    		writeln;
 		end;

// Let's Counting a Gaussian Elimination Using Pascal
	writeln;
	for j:= 1 to 4 do
	begin
		for k:= 0 to j-1 do
			begin
				c:= A[j,k]/A[k,k];
				for i:=0 to 4 do
					begin
						A[j,i]:= A[j,i]-c*A[k,i];
					end;
				B[j]:= B[j] -c*B[k];
			end;
	end;
	for j:= 2 downto 0 do
	begin
		for k:= 4 downto j+1 do
			begin
				c:= A[j,k]/A[k,k];
					for i:=0 to 4 do
						begin
							A[j,i]:= A[j,i]-c*A[k,i];
						end;
					B[j]:= B[j] -c*B[k];
			end;
	end;
	for j:= 0 to 4 do
	begin
		c:= 1/A[j,j];
		for i:=0 to 4 do
			begin
				A[j,i]:= c*A[j,i];
			end;
		B[j]:= c*B[j];
	end;

// Show That Result
	writeln;
	writeln('Dengan metode Gaussian kita dapati hasilnya adalah: ');
	for i:=0 to 4 do
		//if (B[i] > 0) then write('  ');
		begin
			write('Hasil dari ',D[i],' adalah ',B[i]:0:2,' ');
			writeln;
		end;
	writeln;
	writeln('(',B[0]:0:2,',',B[1]:0:2,',',B[2]:0:2,',',B[3]:0:2,',',B[4]:0:2,')');
	readln;
		{writeln('Hasil dari x adalah ',B[0]:0:2,' ');
		writeln('Hasil dari y adalah ',B[1]:0:2,' ');
		writeln('Hasil dari z adalah ',B[2]:0:2,' ');
		writeln('Hasil dari u adalah ',B[3]:0:2,' ');
		writeln('Hasil dari v adalah ',B[4]:0:2,' ');
		writeln;
	readln;}

// End of Statement
end.