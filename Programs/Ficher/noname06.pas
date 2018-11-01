program ex ;
uses wincrt ;
type
emp= record
mat:string[8];
no:string[30];
gra:string[30];
sal:real;
end;
fiche = file of emp;
var
f:fiche ;


procedure remplir(var f :fiche );
function verif(ch:string):boolean;
var i: integer ;
begin
i:=0;
repeat
i:=i+1;
until not(ch[i] in ['A'..'Z'])or not(ch[i] in ['1'..'9'])or(i<=length(ch));
verif:=(not(upcase(ch[i]) in ['A'..'Z'])or not(ch[i] in ['1'..'9']))
end;

procedure saisir_e(var e :emp);
begin
with e do
begin
repeat
Writeln('Enter la matricule de ce employer');
readln(mat);
Writeln(verif(mat));
until(length(mat)=3)and(verif(mat)=false);
writeln('Entere le nom du ce employer ');
readln(no);
writeln('entrer la grade du ce employer');
readln(gra);
Writeln('Entere le salaire du ce employer ');
readln(sal);
end;
end;

var
e:emp; c:char;
begin
assign(f,'c:\fichierem.dat');
rewrite(f);
repeat
saisir_e(e);
write(f,e);
Writeln('Voulez vous continuez ');
readln(c);
until(upcase(c)='N');
close(f);
end;


procedure afficher_sal(var f :fiche );
var
e:emp;
begin
reset(f);
Writeln('*********Le salaire compris entere 500 et 800********');
while(not(eof(f)))do
begin
read(f,e);
if(e.sal<=800)and(e.sal>=500)then
begin
with e do
begin
Writeln('Matricule',mat);
Writeln('Nom',no);
writeln('Le salsair ',sal );
Writeln('La grade ',gra);
end;
end;
end;
close(f);
Writeln('****************************************************');
Writeln('presser une touche pour passerr');
readln;
end;


procedure aff(var f: fiche );
var
e:emp;
m : string;
begin
clrscr;
reset(f);
Writeln('Donner la matricule ');
readln(m);
while(not(eof(f)))do
begin
read(f,e);
if(e.mat=m)then
begin
Writeln('**********************************');
Writeln('Nom',e.no);
writeln('-----------------------------------');
end;
end;
close(f);
end;


BEGIN
remplir(f);
afficher_sal(f);
Writeln('*******************************');
aff(f);
END.