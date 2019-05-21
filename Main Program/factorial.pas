program factorial;

var
i,a: integer;

// Factorial
function factorial(a: integer): longint;
begin
  factorial:=1;
  for i:=1 to a do
  begin
    factorial:=factorial*i;
  end;
end;

begin
  write('Factorial = ');
  readln(a);
    if a < 0 then write ('Negative Factorial does not exist!')
    else
        write('Result = ', factorial(a));
        readln;
end.