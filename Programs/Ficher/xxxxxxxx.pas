program ex;
uses wincrt ;
type
sel = record 
Num:word ;
nom,pre,mat:string[20];
moy:real ;
end;

fiche= file of sel ;
var
f:fiche;
f1 :text ;


Procedure Menu ;
begin
Writeln('*************Menu pour selectionneur*****************');
writeln('M:Modifier un candidat par son numero ');
writeln('S:supprimer un candidat par une position ');
writeln('T:Transfrer vers une fichier texte ');
writeln('Q:Quitter ');
writeln('*****************************************************');
end;

procedure saisir(var e : sel );
begin
with e do
begin
Writeln('Enter le numero ');
readln(num);
Writeln('Enter le nom ');
readln(nom);
writeln('Enter le prenom ');
readln(pre);
writeln('entreer le matiere ');
readln(mat);
writeln('Enter le moyenne ');
readln(moy);
end;
end;

procedure remplir(var f :fiche);
var
e: sel ;
c:char ;
begin
rewrite(f);
repeat
saisir(e);
write(f,e);
Writeln('voumez vous continuez ');
readln(c);
until(upcase(c)='N');
close(f);
end;


Procedure modif(var f :fiche );
var
id :word ;
 e:sel;
begin
reset(f);
writeln('Enter Le numeror du candidat ');
readln(id);
while(not(eof(f)))do
begin
read(f,e);
if(e.num=id) then
begin
Writeln('Modification du donnes d''n candidat ');
saisir(e);
seek(f,filepos(f)-1);
write(f,e);
end;
end;
close(f);
end;


procedure supp(var f : fiche );
var
x,y:sel ;
p,i: integer;
begin
reset(f);
writeln('Donner la position du candidat ');
readln(p);
for i:=p to filesize(f)-1do
begin
seek(f,i);
read(f,y);
seek(f,i-1);
write(f,y);
end;
truncate(f);
close(f);
end ;

procedure aff(var f : fiche );
var e:sel ;
begin
reset(f);
while(not(eof(f)))do
begin
read(f,e);
writeln('Nom  ',e.nom);
Writeln('Prenom ',e.pre);
end;
close(f);
end ;

procedure tra(var f : fiche;var f1:text);
var
e:sel;
n:integer;
begin
assign(f1,'c:\detail.txt');
rewrite(f1);reset(f);
n:=0;
while(not(eof(f)))do
begin
read(f,e);
if(e.moy>=10) then
begin
n:=n+1;
writeln(f1,'Nom ',e.nom,'| Prenom ',e.pre);
writeln(f1,'---------------------------------------------');
end;
end;
Writeln(f1,'le nombre du admis ',n);
close(f1);close(f);
end;
BEGIN
assign(f,'c:\candiat.dat');
remplir(f);
{supp(f); }
{modif(f); }
tra(f,f1);
aff(f); 
END.