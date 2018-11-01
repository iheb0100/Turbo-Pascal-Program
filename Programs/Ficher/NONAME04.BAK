program ex17;
uses wincrt ;
type
fiche= file of integer ;
var
f:fiche ;


procedure remplir(var f:fiche );
var
c:char ;
n: integer ;
begin
rewrite(f);
repeat
Writeln('Entrer un nombre ');
readln(n);
Writeln('Votre pointeur est à la position ',filepos(f));
write(f,n);
Writeln('Voulez vous continuez ');
readln(c);
until(upcase(c)='O');
close(f);
end;


procedure afficher(var f:fiche );
var
x,p: integer ;
begin
reset(f);
clrscr ;

p:=filesize(f)-1;
seek(f,p);
while(p>=0) do
begin
read(f,x);
Writeln('Le Nombre à la position',filepos(f)-1,' est ',x);
p:=p-1;
seek(f,p);
end;
close(f);
end;

begin
assign(f,'c:\entier');
remplir(f);
afficher(f);
end.
