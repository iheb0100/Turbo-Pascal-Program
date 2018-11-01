program ex;
uses wincrt ;
type
fiche= file of integer ;
var
f:fiche ;


procedure remp(var f:fiche );
var
n,p: integer ; c: char ;
f1:fiche;
begin
assign(f,'c:\entier.dat');
rewrite(f);
seek(f,3);
repeat
Writeln('Entrere un nombre ');
readln(n);

write(f,n);
p:=filepos(f);
writeln('La position du pointeur',p); 
Writeln('Continuez ');
readln(c);
until(c ='o');
close(f);
end;

procedure aff(var f:fiche );
var
n:integer;
begin
clrscr;
reset(f);
truncate(f);
While not(eof(f))do
begin
writeln('Ala pos ',filepos(f));
read(f,n);
While(n=2)do
begin
writeln('nombre = ',n);
n:=n-1;
end;
readln;
end;
seek(f,0);

close(f); 
end;
begin
Gotoxy(30,10);
Writeln('*************************');
end.