program ex;
uses wincrt;
var
f:text;
c:string;

BEGIN
assign(f,'C:\ii.pas');
reset(f);
while not(eof(f))do
begin
readln(f,c);
Writeln(c);
end;
close(f);
end.