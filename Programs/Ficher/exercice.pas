program ex6;
uses wincrt ;
type
date= record 
m:1..12;
a:integer;
end;

eleve = record
nom_p:string ;
d:date;
vd:string;
vdd:string;
ab:integer;
end;
 tab=array[1..5] of integer ;
fiche= file of eleve ; 
var
f:fiche;
n:integer;

procedure saisir(var n : integer );
begin
Writeln('Entrer le nob d''eleve ');
readln(n);
end;

procedure saisir_e(var e : eleve );
var
nb: integer;
begin
with e do
begin 
Writeln('Entrer le nom et le prenom ');
readln(nom_p);
Writeln('***************************');
Writeln('Entrer la date ');
with d do
begin
repeat
Writeln('Entrer le mois 1..12 ');
readln(m);
until(m in [1..12]);
Writeln('Entrer l''annes  ');
readln(a);
writeln('****************************');
end;
Writeln('Entrer La ville de depart  ');
readln(vd);
Writeln('Entrer la ville de destination ');
readln(vdd);
Writeln('Entrer de 1..5');
Writeln('-1 pour un abbonement annuel ');
Writeln('-2 pour un abbonement semestriel ');
Writeln('3- pour un abonnement trimestriel  ');
Writeln('4- pour un abonnement mensuel ');
Writeln('5- pour un abonnement par semaine ');
repeat 
readln(e.ab);
until(e.ab in [1..5] ) ;
{Case nb of
1:ab:='annuel';
2:ab:='semestriel';
3:ab:='trimestriel';
4:ab:='mensuel';
5:ab:='Semaine' ;
end;             }
end;
end;

procedure remplir_f(var f : fiche ; n : integer  );
var
i:integer ;
e:eleve;
c: char ;
begin
rewrite(f);
for i := 1 to n do 
begin
saisir_e(e);
Write(f,e);
end;
close(f);
end;

procedure affichage(var f :fiche);
var
np:integer ;
e:eleve ;

begin
np:=0;
reset(f);
While (not(eof(f)))do
begin
read(f,e);
np:=np+1;
Writeln('************* fiche N� ',np,'**************');
write('NOM  ');
write(e.nom_p);
writeln;
Writeln('**************************************');
end;
close(f);
end;

function rechercher(var f :fiche ; s,j: integer;e:eleve ):string ;
var
i: integer ;
abon:string;
begin
if(s<e.d.a)or(s=e.d.a)and(j<=e.d.m)then
begin
abon:=e.nom_p;
end;
rechercher:=abon;
end;

procedure Aff_ab(var f : fiche );
var
s,j:integer ;
e:eleve;

begin
reset(f);
Writeln('Entrer lannes ');
readln(s);
writeln('Entrer le mois ');
readln(j);
writeln('Les abonnet sont ');
While(not(eof(f)))do
begin
read(f,e);
writeln(rechercher(f,s,j,e));
end;
close(f);
end;

procedure aff_t(var f : fiche );


function max(t :tab): integer;
var
pmx,mx,i: integer ;
begin
mx := t[1] ;
pmx:=1;
for i := 2 to 5 do
begin

if (t[i]>mx)then
begin
mx:=t[i] ;
pmx:=i;
end;
end;
max:=pmx ;
end ;

var
t:tab;
e:eleve;
pos,j:integer;
 begin
 reset(f) ;
 for j:= 1 to 5 do
 begin
 t[j]:=0;
 end;

 while (not(eof(f))) do
 begin
 read(f,e);
 case e.ab of
 1:t[1]:=t[1]+1;
 2:t[2]:=t[2]+1;
 3:t[3]:=t[3]+1;
 4:t[4]:=t[4]+1;
 5:t[5]:=t[5]+1;
 end;
 end;
 case max(t) of
 1:Writeln('Annuel ');
 2:writeln('Semestriel ');
 3:Writeln('trimestriel ');
 4:Writeln('mensuel ');
 5:Writeln('Par semeaine ');
 end ;
 close(f);
 end;

 



{procedure Aff_nba(var f :fiche );
var
e:eleve;
tr,sem,se,an,me:integer ;
begin
tr:=0;
sem:=0;
se:=0;
an:=0;
me:=0;
reset(f);
While (not(eof(f)))do
read(f,e);
begin 
case e.ab of
'annuel':an:=an+1;
'semestriel':=se:=se+1;
'trimestriel'tr:=tr+1;
'mensuel':me:=me+1;
'Semaine':sem:=sem+1 ;
end;
end;
Writeln('Le nombre Abonnement pour chaque type ');
Writeln('annuel ',an);
Writeln('mensule ',me);
Writeln('termestriel ',tr);
Writeln('Semestriel ',se);
Writeln('Semaine ',sem);
close(f);
end;    }




BEGIN
assign(f,'c:\Abonnes.dat');
saisir(n);
remplir_f(f,n);
affichage(f) ;
Writeln;
Aff_ab(f);
Writeln('******************************');
Aff_t(f);
end.
 