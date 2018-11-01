program ex;
uses wincrt ;
type
periode=(q,h,m,a,t);
journal = record
num:word ;
tit:string[10];
per:periode;
spe:string[30];
pri:longint;
end;
fiche=file of journal ;
var
f:fiche ;
choix:1..10;

procedure menu;
begin
writeln('***********Menu************');
writeln('1-Saisir les information des journaux ');
writeln('2-Ajouter un nouveau journal à la fin du fichier ');
writeln('3-Afficher la liste des journaux dans une periode dinné');
writeln('4-Chercher une ou les journaux  avec un chaine ');
writeln('5-Modifier le prix d''une journal selon un periode donné');
Writeln('6-Affichage de tous les journal');
writeln('7-Pour quittez Not menu');
writeln('************************************************************');
end;



procedure saisir_e(var e: journal);
var
ch:char;
begin
with e do
begin
repeat
Writeln('Le numéro du série');
readln(num);
until(num>0);
repeat
writeln('Entere le titre du jornal');
readln(tit);
until(length(tit)<=10);
writeln('Q:quotidien');
writeln('H:Hebdomadaire');
writeln('M:Mensuel');
writeln('T:termestriel');
writeln('A:Annuel');
repeat
Writeln('Enter votre choix');
readln(ch);
until(upcase(ch)in ['Q','M','A','T','H']);
case ch of
'Q':per:=q;
'M':per:=m;
'A':per:=a;
'T':per:=t;
'H':per:=h;
end;

Writeln('Enter la specialité Sportif/Culturelle..');
readln(spe);
Writeln('Entere le prix en millimes ');
readln(pri);
end;
end;

procedure saisir_j(var f:fiche);
var
e:journal;
c:char ;
begin
rewrite(f);
repeat
saisir_e(e);
write(f,e);
Writeln('Continuez');
readln(c);
until(upcase(c)='N');
close(f);
end;


procedure ajout(var f: fiche);
var
e:journal;
Begin
reset(f);
seek(f,filesize(f));
saisir_e(e);
write(f,e);
close(f);
end;

procedure aff_p(var f:fiche);
var
ch:char;
aa:periode;
e:journal;
begin
reset(f);
writeln('Q:quotidien');
writeln('H:Hebdomadaire');
writeln('M:Mensuel');
writeln('T:termestriel');
writeln('A:Annuel');
repeat
Writeln('Enter votre choix');
readln(ch);
until(ch in ['Q','M','A','T','H']);
case ch of
'Q':aa:=q;
'M':aa:=m;
'A':aa:=a;
'T':aa:=t;
'H':aa:=h;
end;
Writeln('**********La liste est ***********');
While(not(eof(f)))do
begin
read(f,e);
if(aa=e.per) then
begin
Writeln('Le titre ',e.tit);
end;
end;
close(f);
writeln('***********************************');
end;


procedure chercher(var f:fiche);
var
e:journal;
chaine:string;
lo:integer;
begin
reset(f);
Writeln('Enter une chaine donneéé');
readln(chaine);
lo:=length(chaine);
While(not(eof(f)))do
begin
read(f,e);
if(chaine=copy(e.tit,1,lo))then
begin
Writeln('Le titre ',e.tit);
end;
end;
close(f);
writeln('**************************');
end;


procedure modi(var f:fiche);
var
ch:char;
aa:periode;
prii:longint;
e:journal;
begin
reset(f);
writeln('Q:quotidien');
writeln('H:Hebdomadaire');
writeln('M:Mensuel');
writeln('T:termestriel');
writeln('A:Annuel');
repeat
Writeln('Enter votre choix');
readln(ch);
until(upcase(ch)in ['Q','M','A','T','H']);
case ch of
'Q':aa:=q;
'M':aa:=m;
'A':aa:=a;
'T':aa:=t;
'H':aa:=h;
end;
while(not(eof(f)))do
begin
read(f,e);
if(e.per=aa)then
begin
seek(f,filepos(f)-1);
Writeln('entrer le nouveau prix');
readln(prii);
e.pri:=prii;
end;
write(f,e);
end;
close(f);
end;


procedure aff(var f:fiche);
var
e:journal;
begin
reset(f);
Writeln('La liste des journaux ');
while(not(eof(f)))do
begin
read(f,e);
writeln('Le numeror série ',e.num);
writeln('Le titre ',e.tit);
writeln('Le prix ',e.pri);
writeln('La periode ');
case e.per of
q:writeln('quotidien');
h:writeln('Hebdomadaire');
m:writeln('Mensuel');
t:writeln('termestriel');
a:writeln('Annuel');
end;
Writeln('---------------------------');
end;
close(f);
end;

BEGIN
assign(f,'c:\journalle.dat');
repeat
menu;
Writeln('Enterer votre choix ');
readln(choix);
case choix of
1:saisir_j(f);
2:ajout(f);
3:aff_p(f);
4:chercher(f);
5:modi(f);
6:aff(f);
end;
readln;
clrscr;
until(choix=7);
END.