program ex ;
uses wincrt ;
type
fiche= file of integer ;
var
f,f1,f2:fiche ;


procedure remplir(var f : fiche );
var
c: char ;nb:integer ;
begin
assign(f,'c:\dentier.fch');
rewrite(f);
repeat
Writeln('Enter un niombre ');
readln(nb);
write(f,nb);
Writeln('Continuez ');
readln(c);
until(filepos(f)=149)or(c='N');
close(f);
end;

procedure transfer(var f,f1,f2:fiche );
var x: integer ;
begin
assign(f1,'c:\positif.fch');
assign(f2,'c:\negatif.fch');
reset(f);
rewrite(f1);
rewrite(f2);
While(not(eof(f)))do
begin
read(f,x);
if(x>0) then
begin
write(f1,x);
end
else
begin
write(f2,x);
end;
end;
close(f);
close(f1);
close(f2);
end;


procedure aff(var f : fiche );
var  x:integer ;
begin
reset(f) ;
while(not(eof(f)))do
begin
read(f,x) ;
Writeln(x) ;
end ;
close(f) ;
end ;


BEGIN
remplir(f);
transfer(f,f1,f2);
Writeln('Le fiche 1 ') ;
aff(f);
readln;
clrscr;
writeln('Le fichier 2 ') ;
aff(f1);
readln;
clrscr;
Writeln('Fichier 3 ');
aff(f2);
readln;
clrscr;
writeln(IOresult);
end.
