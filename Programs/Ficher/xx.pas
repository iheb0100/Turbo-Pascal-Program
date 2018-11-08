program ex ;
uses wincrt ;
type
tab=array[1..100] of integer ;
nombre = file of integer;

VAR
f:text;
n: integer ;
t:tab;


Procedure saisir(var n: integer );
begin
repeat
writeln('Enterer le taille ');
readln(n);
until(n in [5..100]);
end;

Procedure remp(var f:nombre ; n: integer );
var
i,nb: integer;
begin
rewrite(f);
randomize;
for i:= 1 to n do
begin
nb:=random(1000);
write(f,nb);
end;
close(f);
end;


Procedure tri(var f :text ;var t:tab ; n : integer );
var
i,j,x,c: integer ;
begin

for i:= 2 to n do
begin
j:=i;
x:=t[i];
while(t[j-1]>x)and(j>1)do
begin
t[j]:=t[j-1];
j:=j-1;
end ;
t[j]:=x;
end;

rewrite(f);
for c :=1 to n do
begin
writeln(f,t[c]);
end;
close(f);
end;

Procedure copier(var f:text ;var t:tab);
var j,i,nb: integer;

begin
reset(f);
i:=0;
While(not(eof(f)))do
begin
readln(f,nb);
i:=i+1;
t[i]:=nb;
end;
close(f);
Writeln('le contenu du tableau');
for j:= 1 to i do
begin
write(t[j],'|');
end;
tri(f,t,i);
end;




procedure aff(var f :text  );
var b: integer ;
begin
reset(f);
while(not(eof(f)))do 
begin
read(f,b);
if(eoln(f)=true)then
begin
readln(f);
end;
Write(b,'|');

end;
close(f);
end;

BEGIN
assign(f,'c:\s.txt');
{saisir(n);
remp(f,n);}
aff(f);
readln;
copier(f,t);
{aff(f);}  
END. 
 
