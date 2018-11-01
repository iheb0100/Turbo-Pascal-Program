program ex;
uses wincrt;
type
voiture=record
nom:string[20];
nb_jour:word ;
end ;
fiche=file of voiture ;
var
l:fiche;
n:integer ; 

procedure remplir_l(var l :fiche);
var
c:char ;
e:voiture;
begin
rewrite(l);
repeat
with e do
begin
writeln('Le nom du voiture');
readln(nom);
writeln('nombre du jour ');
readln(nb_jour);
end;
write(l,e);
Writeln('Voulez vous continuez ');
readln(c);
until(c ='N')or(c='n');
close(l);
{Writeln('File size',filesize(l));}
end;


function aff_d(var l : fiche ):word;
var
e:voiture ;
d,nb:word ;
begin
reset(l);
nb:=0;
while(not(eof(l)))do
begin
read(l,e);
if(e.nb_jour<>0) then
begin
nb:=nb+1;
end ;
end ;
close(l);
aff_d:=nb;
end;



procedure dec(var l :fiche );
var
e:voiture;
begin
reset(l);
while(not(eof(l)))do
begin
read(l,e);
if(e.nb_jour>0)then
begin
e.nb_jour:=e.nb_jour-1;
end ;
seek(l,filepos(l)-1);
write(l,e);
end ;
close(l);
end;

function aff_p(var l : fiche ):integer;
var
h:integer;
e:voiture;
begin
h:=0;
reset(l);
while(not(eof(l)))do
begin
read(l,e);
if(e.nb_jour=0)then
begin
h:=filepos(l)-1;;
seek(l,filesize(l));
end;
end;
close(l);
aff_p:=h;
end;


procedure stocker(var l : fiche);
var
e:voiture;
f:text;
begin
assign(f,'c:\dspo.txt');
rewrite(f);
reset(l);
while(not(eof(l)))do
begin
read(l,e);
if(e.nb_jour=0)then
begin
writeln(f,e.nom);
end ;
end ;
close(f);
close(l);
end;

procedure aff(var l :fiche);
var
e:voiture ;
begin
reset(l) ;
while(not(eof(l)))do
begin
read(l,e);
Writeln('Le nom := ',e.nom);
writeln('Le nombre dujour ',e.nb_jour);
end;
close(l);
end;


BEGIN
n:=0;
assign(l,'c:\location.dat');
remplir_l(l);
Repeat
writeln('-------------------------');
writeln('nb de voiture non dispo disponible ',aff_d(l));
writeln('-------------------------');
writeln('la prmiere voiture dispo    ',aff_p(l));
writeln('-------------------------');
dec(l);  
writeln('-------------------------');
stocker(l);
writeln('-------------------------');
aff(l);
writeln('-------------------------');
n:=n+1;
Writeln('Le jour N° ',n,' est passe');
readln;
clrscr;
until(n=7);
END.
 