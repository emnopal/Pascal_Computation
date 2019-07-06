program Gauss3x3;
var
A: array[1..4,1..4] of real;
B: array [1..4] of real;
i,j,k: integer;
c: real;
begin
for i:= 1 to 4 do
begin
write('nilai B[',i,']= ');
readln(B[i]);
end;
for i:= 1 to 4 do
begin
	for j:= 1 to 4 do
	begin
	write('Nilai A[',i,',',j,']= ');
	readln(A[i,j]);
	end;
end;
writeln;
for i:=1 to 3 do
	begin
	for j:=1 to 3 do
		begin
		write(A[i,j]:0:2,' ');
		write(B[i]:0:2,' ');
		end;
	writeln;
	end;
writeln;
{for i:=1 to 3 do
	begin
	write(B[i]:0:2,' ');
	writeln;
	end;}
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
for j:= 2 downto 1 do
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
		for i:=1 to 3 do
		begin
		A[j,i]:= c*A[j,i];
		end;
		B[j]:= c*B[j];
end;

{c:= A[2,1]/A[1,1];
for i:=1 to 2 do
begin
A[2,i]:= A[2,i]-c*A[1,i];
end;
B[2]:= B[2] -c*B[1];

c:= A[1,2]/A[2,2];
for i:=1 to 2 do
begin
A[1,i]:= A[1,i]-c*A[2,i];
end;
B[1]:= B[1] -c*B[2];

c:= 1/A[1,1];
for i:=1 to 2 do
begin
A[1,i]:= c*A[1,i];
end;
B[1]:= c*B[1];

c:= 1/A[2,2];
for i:=1 to 2 do
begin
A[2,i]:= c*A[2,i];
end;
B[2]:= c*B[2];}

{for i:=1 to 3 do
	begin
	for j:=1 to 3 do
		begin
		write(A[i,j]:0:2,' ');
		end;
	writeln;
	end;}
	for i:= 1 to 4 do
	begin
		writeln(i,' = ',B[i]:0:2);
	end
{writeln('1 = ',B[1]:0:2);
writeln('2 = ',B[2]:0:2);
writeln('3 = ',B[3]:0:2);
A[1,1] := 3;
	A[1,2] :=}
end.
