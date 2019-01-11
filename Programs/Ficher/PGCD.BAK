program ex;
uses wincrt ;
var

a,b : integer ;

function pgcd(a,b : integer ): integer ;
begin
if(a<b) then
pgcd :=pgcd(a,b-a)
else if(b<a) then
pgcd := pgcd(a-b,b)
else
pgcd:= a ;
end ;



begin
writeln('a ,b ') ;
readln(a,b);
writeln(pgcd(a,b));
end.