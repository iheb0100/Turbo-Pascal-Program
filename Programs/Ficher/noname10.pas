program act ;
uses wincrt;
var
f:text;
n:string;p,i:integer;

procedure remplir_f(var f:text);
var
n,i:integer;
begin
i:=0;
rewrite(f);
repeat
Writeln('Entrer un nombre ');
readln(n);
writeln(f,n);
i:=i+1;
until(n<0);
close(f);
writeln('Le nombre ',i);
end;

procedure aff_p(var f:text);
var
n:integer;
begin
reset(f);
while(not(eof(f)))do
begin
readln(f,n);
if(n mod 2 = 0 )then
begin
writeln(n);
end;
end;
close(f);
end;

BEGIN
assign(f,'c:\Nombre.txt');
remplir_f(f);
Writeln('------------les nombres pair--------------');
{aff_p(f);  }
writeln('donne');readln(p);append(f);
i:=1;

writeln(f,'hellllo');
close(f);
{rename(f,'c:\Valeur.doc');}
END.