program power;

var
y: real;
n,i: integer;

function power(y: real; n: integer): real;
begin
  power:=1;
  for i:=1 to  n do
  begin
    power:=power*y;
  end;
end;

procedure power;
begin
  write('Number = ');
  readln(y);
  write('Power to = ');
  readln(n);
  write('Result = ', power(y,n):0:3);
  readln;
end;

begin
  power;
  readln;
end.