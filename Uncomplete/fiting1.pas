program Gaussnxn;

const ;

type

var
A: array[1..n,1..n] of real;
B: array [1..n] of real;
i,j,k: integer;
c: real;


begin
for i:= 1 to n do
begin
write('nilai B[',i,']= ');
readln(B[i]);
end;

for i:= 1 to n do
begin
	for j:= 1 to n do
	begin
	write('Nilai A[',i,',',j,']= ');
	readln(A[i,j]);
	end;
end;
writeln;

for i:=1 to n do
	begin
	for j:=1 to n do
		begin
		write(A[i,j]:0:2,'  ');
		end;
	writeln;
	end;
writeln;

for i:=1 to n do
	begin
	writeln(B[i]:0:2,'  ');
	end;
writeln;

for j:= 2 to n do
begin
	for k:= 1 to j-1 do
	begin
	c:= A[j,k]/A[k,k];
		for i:=1 to n do
		begin
		A[j,i]:= A[j,i]-c*A[k,i];
		end;
		B[j]:= B[j] -c*B[k];
	end;
end;

for j:= n-1 downto 1 do
begin
	for k:= n downto j+1 do
	begin
	c:= A[j,k]/A[k,k];
		for i:=1 to n do
		begin
		A[j,i]:= A[j,i]-c*A[k,i];
		end;
		B[j]:= B[j] -c*B[k];
	end;
end;

for j:= 1 to n do
begin
	c:= 1/A[j,j];
		for i:=1 to n do
		begin
		A[j,i]:= c*A[j,i];
		end;
		B[j]:= c*B[j];
end;

for i:=1 to n do
	begin
	for j:=1 to n do
		begin
		write(A[i,j]:0:2,'  ');
		end;
	writeln;
	end;
writeln;
for i:= 1 to n do
begin
writeln(B[i]:0:2);
end;
readln;
end.