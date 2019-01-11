program ex;
uses wincrt ;
type
tab= array[1..50] of string[5] ;
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


function verif(t: tab ; n,i,j: integer ): boolean ;
begin
if(i>=j) then
verif:= true
else if(t[j]<>t[i]) then
verif:=false
else
begin

verif:=verif(t,n,i+1,j-1);
end;
end;

BEgin
Writeln('n');
readln(n);
remplir(t,n);
writeln(verif(t,n,1,n));
end.