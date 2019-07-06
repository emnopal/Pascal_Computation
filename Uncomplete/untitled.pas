program test;
uses crt;
var
x: real;
y: real;
z: real;
s: real;
a: real;

begin
write('x = ');
readln(x);
write('y = ');
readln(y);
write('z = ');
readln(z);
s:=(x+y+z)/2.0;
writeln(' x + y + z = ', s:0:3);
readln();
a:=sqrt(s*(s-x)*(s-y)*(s-z));
writeln(' a = ', a:0:3);
readln(a);
end.
