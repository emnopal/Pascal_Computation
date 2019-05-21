program arrays;

var
x,y,z,u: array[1..3] of real;
i: integer;

begin
  for i:=1 to 3 do
    begin
      write('x[',i,'] = ');
      read(x[i]);
      write('y[',i,'] = ');
      read(y[i]);
      write('z[',i,'] = ');
      read(z[i]);
      u[i]:=x[i]+y[i]+z[i];
      write(u[i]);
      read(u[i]);
    end;
  readln;
end.
