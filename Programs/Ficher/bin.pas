program ex;
uses wincrt ;
var
n: integer;


function bin(n: integer ): string ;
var
x:string[40];
begin
if(n div 2 = 0 ) then
begin
str(n mod 2 ,x);
bin := x;
end
else
begin
str(n mod 2 ,x);

bin:=bin(n div 2 )+x;
end;
end;


BEGIN
readln(n);
writeln(bin(n));
end.