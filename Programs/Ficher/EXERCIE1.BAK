program ex;
uses wincrt ;
type
tab= array[1..50] of integer ;
var          
n: word ;
t:tab ;

procedure remplir(var t : tab ; n: integer );
var i:integer ;

begin
for i := 1 to n do
begin
Writeln('Enter l''element',i);
readln(t[i]);
end;
end;


function somme(t: tab ; n: integer ): integer ;
begin
if(n=1) then
somme:=t[1]
else
somme:= t[n]+somme(t,n-1);
end;

Begin
repeat
writeln('enter lentier pos ');
readln(n);
until(n>0);
remplir(t,n);
Writeln('La somme des element ',somme(t,n));
end.