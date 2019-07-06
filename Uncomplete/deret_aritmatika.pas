program deret_aritmatika;
var
a: integer;
b: integer;
i: integer;
n: integer;
begin
writeln('a = ');
readln(a);
writeln('b = ');
readln(b);
writeln('n = ');
readln(n);
for i:=1 to n do
begin 
write(a,' ');
a:=a+b;
end;
end.
