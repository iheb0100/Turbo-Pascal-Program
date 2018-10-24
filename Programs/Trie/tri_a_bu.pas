program tri_a_bulle ;
uses wincrt ;
type
tab=array[1..10] of integer ;
var
t:tab;
{-----------------------Remplir le tableau-----------------------}
procedure  remplir_t(var t:tab );
var
i:integer;
begin
for i := 1 to 10 do
begin
Writeln('Entrer des nombre pour les trier ');
readln(t[i]);
end;
end;
{-----------------------Trier le tableau T-----------------------}
procedure tri_bulle(var t:tab);
{---------Permuter--------------}
procedure permuter(var x,n:integer );
var
ox:integer ;
begin
ox:=x;
x:=n;
n:=ox;
end;
{--------Fin Permuter-----------}
var
test:boolean;
i:integer;
begin
repeat
test:=false;
for i := 1 to 10-1 do
begin
if(t[i]<t[i+1])then
begin
permuter(t[i],t[i+1]);
test:=true;
end;
end;
until(test=false);
end;
{--------------------Fin procedure trier-----------------------}
{--------------------Procedure Affichage-----------------------}
procedure affichage(t:tab);
var
i:integer ;
begin
for i := 1 to 10 do
begin
Write(t[i],'|');
end;
end;
{--------------------Fin procedure Affichage-------------------}
{--------------------Programme principal-----------------------}
begin
remplir_t(t);
tri_bulle(t);
Writeln('******************************************************');
affichage(t);
end.
{-----------------Fin Du programme tri a bulle------------------}

