program elim_gauss;

var
a: array[1..2,1..2] of real;
b: array[1..2,1..2] of real;
c: array[1..2,1..2] of real;
i,j: integer;

begin
  for i:=1 to 2 do
  begin
    for j:=1 to 2 do
      begin
        write('a[',i,',',j,'] = ');
        readln(a[i,j]);
      end;
  end;
  for i:= 1 to 2 do
  	begin
  		write('b[',i,'] = ');
  		readln(b[i]);
  	end
  c:= A
end.