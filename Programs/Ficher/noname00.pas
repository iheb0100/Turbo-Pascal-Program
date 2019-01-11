program ex;
uses wincrt ;
var
x,n : integer ;

function puis(x,n: integer): integer ;
begin
if(n=0)then
puis:=1
else
puis:=x*puis(x,n-1);
end;

Begin
readln(x);
readln(n);
writeln(puis(x,n));
end.