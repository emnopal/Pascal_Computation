program elim_gauss;
uses crt;
Const
Max = 25;
Type
Matrik = record
Row, col : byte;
Element : array [1..max, 1..max] of real;
End;
Vektor = record
Row : byte;
Element : array [1..max] of real;
End;
Var
x, b : vektor;
A : matrik;
n : integer;
c : real;
Error : boolean;
Procedure masukkandata;
Var i,j : byte;
Begin
Write ('Jumlah persamaan :');
Readln (n);
A.row := n;
A.col := n ;
b.row := n;
for i := 1 to n do
begin
writeln ('Persamaan ke ',i );
for j := 1 to n do
begin
write ('X[',i,',',j,'] = ');
readln (A.element[i,j]);
end;
write('Y[',i,']   = '); readln(A.element[i,n+1]);
writeln;
end;
end;
procedure eliminasigauss;
var I,j,k : integer;
temp, S : real;
Begin
Error := false;
For i := 1 to n do
Begin
If (A.element[i,i] = 0 ) then
Begin
write(A.element[i,i]) ;
Error := true;
Exit;
End;
temp := A.element[i,i];
for k := 1 to n+1 do
begin
A.element[i,k] := A.element[i,k] / temp;
end;
For j := 1  to n do
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
Begin
Error := true;
Exit;
End;
x.element[i] := A.element[i,n+1];
end;
end;
Procedure tulishasil;
Var i : byte;
Begin
If (error) then
Begin
Writeln ('tidak memenuhi');
End
Else
Begin
Writeln;
Writeln ('Penyelesaian : ');
For i := 1 to x.row do
Writeln('X',i,' = ',x.element[i]:6:2);
End;
End;
Begin
Masukkandata;
Eliminasigauss;
Tulishasil;
readln;
End.
