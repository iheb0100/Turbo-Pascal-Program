Program ex;
uses wincrt ;
type
client = record
cb,cg:string[5];
nc:string[11];
cr:string[2];
n,nuc:string[30];
end;

fiche= file of client ;

Var
f:fiche;
o:string;



Procedure saisir(var e :client );
function verif(ch: string ):boolean ;
var i: integer ;
Begin
i:=0;
repeat
i:=i+1;
until not(ch[i] in['1'..'9'])or(i<=23);
verif:=not(ch[i] in['1'..'9']);
end;
Begin
with e do
begin
Writeln('Enter le code bancaire  ');
readln(nc);
writeln('entreer le code du guichet ');
readln(cg);
writeln('Entere le numero du client ');
readln(nc);
writeln('Enter le code RIB ');
readln(cr);
Writeln('Entere le nom ');
readln(n);
repeat 
writeln('entere le numerop du compte ');
readln(nuc);
until(verif(nuc)=false)and(length(nuc)=23);
end;
end;

Procedure remplir(var f :fiche );
Var
e:client ;
c:char;
Begin
rewrite(f);
repeat
saisir(e);
write(f,e);
writeln('Voulez vous continuez ');
readln(c);
until(upcase(c)='N');
close(f);
end;

Procedure aff(var f:fiche );
var
e:client ;
Begin
reset(f);
while(not(eof(f)))do
Begin
read(f,e);
Writeln('Nom',e.n);
writeln('-----------');
End;
close(f);
end;

function exist(o: string ;var f:fiche ):boolean ;
var e : client ;
Begin
reset(f);
repeat
read(f,e);
until(eof(f))or(o=e.nuc);
close(f);
exist:=(o=e.nuc);
end;



BEGIN
assign(f,'c:\client123.dat');
remplir(f);
clrscr;
aff(f);
Writeln('Entere le num ');
readln(o);
if(exist(o,f))then
Writeln('Exieie')
else
writeln('non ');
END.