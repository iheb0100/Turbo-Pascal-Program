program tri_par_insertion ;
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
procedure trie_insertion(var t:tab);
var
i,temp,j:integer;
begin
for i := 2 to 10 do
begin
temp:=t[i];
j:=i;
while(t[j-1]>temp)and(j>=2)do
begin
t[j]:=t[j-1];
j:=j-1;
end;
t[j]:=temp;
end;
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
trie_insertion(t);
Writeln('******************************************************');
affichage(t);
end.
{-----------------Fin Du programme tri a bulle------------------}

