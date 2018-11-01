program ex;
uses wincrt;
type
emp=record
mat:integer;
nom,gra:string[30];
sal:real;
end;

fiche=file of emp;
var
f:fiche;
procedure saisir_e(var e:emp);
begin
with e do
begin
repeat
Writeln('Entere la matricule');
readln(mat);
until(mat>0);
repeat
writeln('Enter nom ');
readln(nom);
writeln('Entere grade ');
readln(gra);
until(length(gra)+length(nom)<60);
Writeln('Enterer salair');
readln(sal);
end;
end;

procedure remplir(var f:fiche);
var
e:emp;
c:char;
begin
assign(f,'c:\employer.dat');
rewrite(f);
repeat
writeln('------------------------');
saisir_e(e);
writeln('------------------------');
write(f,e);
Writeln('Voulez vous continuez ');
readln(c);
until(c='N')or(c='n');
close(f);
end;

procedure aff(var f:fiche);
var
e:emp;
begin
reset(f);
Writeln('La liste du 500D ET 800D');
while not(eof(f))do
begin
read(f,e);       
if(e.sal<=800)and(e.sal>=500)then
begin
Writeln('Le nom',e.nom);
end;
end;
close(f);
Writeln('-----------------------------');
end;

procedure rech(var f:fiche);
var
m:integer ;e:emp;
begin
reset(f);
writeln('Entere la matricule');
readln(m);
writeln('les employe');
while(not(eof(f)))do
begin
read(f,e);
if(e.mat=m)then
begin
writeln('Le nom ',e.nom);
end;end;
close(f);
writeln('----------------------------');
end;


BEGIN
remplir(f);
aff(f);
rech(f);
END.
