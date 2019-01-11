program ex ;
uses wincrt ;
var
a,n : integer ;   


function puis(a,n : integer ): integer;
begin
if(n=0) then
puis:=1
else
puis := a*puis(a,n-1 ) ;
end;

function somme(a,n : integer ): integer ;
begin
if(n=0)then
somme:=1
else
somme:= puis(a,n) +somme(a,n-1);
end;



BEGIn
writeln('A');
readln(a);
writeln('n');
readln(n);
writeln(somme(a,n));
end.



