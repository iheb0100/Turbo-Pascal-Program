program Employer ;
uses wincrt;
type
etat=(marier,celeb,divor);
emp= record
Mat:integer ;
nom: string[30];
sal:real ;
et:etat;
end;

tab= array[1..50] of emp;
var
t:tab;
n :integer ;


procedure saisir_taille(var n : integer ) ;
begin
repeat
Writeln('Entrer la taille du tableau ');
readln(n);
until(n in [1..50]);
end;

procedure saisir_emp(var e:emp);
var
c: char;
begin
Writeln('************************');
with e do
begin
Writeln('Entrer le nom ');readln(nom);
Writeln('Entrer la matricule ');readln(mat);
Writeln('Entrer le salaire ');readln(sal);
repeat 
Writeln('entre letat Marier : m / celebater : c/ Divorcé: D ');
readln(c);
until(c in ['d','c','m']);

case c of
'd':et:=divor;
'c':et:=celeb;
'm':et:=marier;
end;
Writeln('************************');
end;
end;


procedure remplir_tab(var t:tab ; n: integer );
var
e:emp;
i: integer ;
begin
for i:= 1 to n do
begin
saisir_emp(e);
t[i]:=e;
end;
end;

procedure afficher(t:tab ; n: integer) ;
var
j:integer ;
e: emp;
begin
for j := 1 to n do
begin
Writeln('************************');
with t[j] do
begin
Writeln('Nom : ',nom);
Writeln('Le salaire ',sal);
Writeln('la Matricule: ',mat);
Writeln('************************');
end;
end;
end;


BEGIN
saisir_taille(n);
remplir_tab(t,n);
afficher(t,n);
END.