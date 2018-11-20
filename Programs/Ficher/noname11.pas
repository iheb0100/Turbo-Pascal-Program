program act ;
uses wincrt;
var
f:text;


procedure remplir_f(var f:text);
var
n,i:integer;
begin i:=0;
rewrite(f);
repeat
Writeln('Entrer un nombre ');
readln(n);

writeln(f,n);
i:=i+1;
until(n<0);
close(f);
Writeln('Le nombre delement ',i);
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

aff_p(f);
END.