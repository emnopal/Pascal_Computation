program val;
type
	decision = (no, yes, maybe);
var
	s: string;
	r: decision;
	c: word;
begin
	writeLn('Are you OK?');
	readLn(s);
	val(s, r, c);
	writeLn('So ', r, '.');
    readln;
end.