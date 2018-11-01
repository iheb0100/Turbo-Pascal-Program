program ex;
uses wincrt ;
type
car= file of char ;
var
f,f1,f2: car;


procedure remplir(var f : car);
var
c:char ;
begin
rewrite(f);
c:=' ';
while(c<>'.')do
begin
Writeln('Entrer un caractere '); readln(c);
if(upcase(c) in['A'..'Z']) then
begin
write(f,c);
end;
end;
close(f);
end;


procedure rempli_f(var f,f1,f2:car);
var
X:char;
begin
reset(f);
rewrite(f1);
rewrite(f2);
while(not(eof(f)))do
begin
read(f,X);
if( upcase(X) in ['O','A','E','I','U','W','Y'])then
begin
write(f1,X);
end
else if(upcase(X) in ['S','Q','D','T','P','M','L','K','N','B','V','Z'])then
begin
write(f2,X);
end;
end;
close(f);
end;


procedure aff(var f:car);
var
X:char ;
begin
reset(f);
Writeln('Le contenu du fichiere ');
While(not(eof(f)))do
begin
read(f,X);
Writeln(X);
end;
close(f);
Writeln('------------------------');
end;


BEGIN
Assign(f,'c:\caractere.car');
Assign(f1,'c:\consonnes.car');
Assign(f2,'c:\Voyelle.car');
remplir(f);
rempli_f(f,f1,f2);
aff(f);
readln;
clrscr;
aff(f1);
readln;
clrscr;
aff(f2);
END.
