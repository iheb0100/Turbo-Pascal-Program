program  Maccandy ;
uses wincrt ;
var
n: integer ;
function mac(n: integer ): integer ;
begin
if(n>100) then
mac:= n-10
else
mac:= mac(mac(n+11));
end;

Begin
Writeln('entrer un nombre ');
readln(n);
Writeln('Maccandy = ',mac(n));
end.