Program ex;
uses wincrt ;
type
periode=(Q,H,M,T,A);

journal=record
num:word ;
tit:string[10];
per:periode;
spe:string[20];
pri:longint;
end;

fichier=file of journal ;
var
f:fichier;
choix:1..6;

Procedure menu ;
begin
writeln('************************MENU********************************');
writeln('1-Saisir Tous les information des journaux');
Writeln('2-Ajouter un nouveau journal ');
Writeln('3-Afficher la liste des journaux selon une periode donnes');
Writeln('4-Chercher Une journal ');
Writeln('5-Modifier Les prix des journaux selon une periode');
Writeln('6-Quitter');
Writeln('**************************************************************');
end;

Procedure saisir_e(var e:journal);
var c:char;
begin
With e do
begin
repeat
Writeln('Entrer le numero du serie ');
readln(num);
until(num>0);
repeat
writeln('Entrer Le titre ');
readln(tit);
until(length(tit)<=10);
repeat
Writeln('Q-Quotidien ');
writeln('H-Hébdomadaire ');
writeln('M-Mensuel ');
Writeln('T-termestriel ');
Writeln('A- Annuel ');
Writeln('Entere La periode ');
readln(c);
until(upcase(c) in ['A','T','M','H','Q']);
Case c of
'Q':per:=Q;
'T':per:=T;
'M':per:=M;
'Q':per:=Q;
'A':per:=A;
end;

Writeln('Entere la specialité ') ;
readln(spe);
repeat
Writeln('Entere le prix en millime ');
readln(pri);
until(pri>0);
 end;
 end;
procedure remp_f(var f:fichier);
var e:journal ; ch:char;
begin
rewrite(f);
Repeat
saisir_e(e);
write(f,e);
Writeln('Voulez vous continuez ');
readln(ch);
until(upcase(ch)='N');
close(f);
end;

procedure ajout(var f: fichier);
var
e:journal ;
begin
reset(f);
seek(f,filesize(f));
saisir_e(e);
write(f,e);
close(f);
end;


Procedure aff_j(var f:fichier );
var
e:journal; aa:periode;c:char;
begin
reset(f);
repeat
Writeln('Q-Quotidien ');
writeln('H-Hébdomadaire ');
writeln('M-Mensuel ');
Writeln('T-termestriel ');
Writeln('A- Annuel ');
Writeln('Entere La periode ');
readln(c);
until(upcase(c) in ['A','T','M','H','Q']);
Case c of
'Q':aa:=Q;
'T':aa:=T;
'M':aa:=M;
'Q':aa:=Q;
'A':aa:=A;
end;
Writeln('Les journaux selon une periode donne');

While(not(eof(f)))do
begin
read(f,e);
if(e.per=aa)then
begin
Writeln(e.tit);
end;
end;
close(f);
Writeln('---------------------------------------');
readln;
end;

procedure  cher(var f:fichier);
var
e:journal;
n,ch,j:string;
begin
reset(f);
Writeln('Entrer Le Nom que vous voulez chercher ');
readln(ch);
readln;
Writeln('Chercher par une chaine ');
while(not(eof(f)))do
begin
read(f,e);
j:=copy(e.tit,1,length(ch));
if(j=ch)then
begin
Writeln('Le titre ',e.tit);
Writeln('Le prix ',e.pri);
end;
end;
close(f);
readln;
end;


procedure modi(var f:fichier );
var
e:journal ;c:char; aa:periode;  pr:longint;
p:longint;
begin
reset(f);
repeat
Writeln('Q-Quotidien ');
writeln('H-Hébdomadaire ');
writeln('M-Mensuel ');
Writeln('T-termestriel ');
Writeln('A- Annuel ');
Writeln('Entere La periode ');
readln(c);
until(upcase(c) in ['A','T','M','H','Q']);
Case c of
'Q':aa:=Q;
'T':aa:=T;
'M':aa:=M;
'Q':aa:=Q;
'A':aa:=A;
end;
While not(eof(f))do
begin
if(e.per=aa)and(aa=M)then
begin
E.pri:=e.pri+e.pri*10 div 100;
end
else
begin
Writeln('Entrer votre nouveau prix ');
readln(pr);
e.pri:=pr;
end;
end;
close(f);
end;

BEGIN
assign(f,'c:\tessssssssst.dat');
repeat
Menu;
repeat
Writeln('Entrer votre choix ') ;
readln(choix);
until(choix in [1..6]);
case choix of
1:remp_f(f);
2:ajout(f);
3:aff_j(f);
4:cher(f);
5:modi(f);
6:Exit;
end;
clrscr;
until(choix=6);
end.

