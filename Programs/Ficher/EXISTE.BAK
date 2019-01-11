program ex;
uses wincrt ;
type
tab= array[1..50] of integer ;
var          
n: word ;
t:tab ;
p: integer ; 

procedure remplir(var t : tab ; n: integer );
var i:integer ;

begin
for i := 1 to n do
begin
Writeln('Enter l''element',i);
readln(t[i]);
end;
end;


function existe(t:tab ; n,p: integer ): boolean ;
begin
if(n=0) then
existe:=false
else if(t[n]=p) then
existe := true
else
existe:=existe(t,n-1,p);
end;



BEGIN
Writeln('LA taille du tab ');
readln(n);
remplir(t,n);
writeln('Leelement ') ;
readln(p);
writeln(existe(t,n,p));
end.