program ex;
uses wincrt ;
var
n : integer ;

function suite(n: integer ): integer ;
begin
if(n=1) then
suite:=1
else if(n=0) then
suite:=0
else
suite:=suite(n-1)+suite(n-2);
end;

BEGIN
Writeln('le nombre du terme ');
readln(n);
Writeln(suite(n));
END.