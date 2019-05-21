program Pengulangan_Bertingkat;
var
i,a: integer;
begin
write(' a = ');
readln(a);
for i:=1 to a do 
begin
if (i mod 2 = 0) then write(
' ', i,'.Selamat Datang di Pascal')
else
begin
write(
' ', i,'.Tidak Selamat Datang di Pascal');
end;
end;
end.
