program ex ;
uses wincrt ;
type
fiche = file of char ;
var
f:fiche;

procedure remp_f(var f :fiche);
var
c:char;
begin
rewrite(f);
c:=' ';
while(c<>'.')do
begin
Writeln('Entrer un caractere ');
readln(c);
if(c<>'.') then

write(f,c);
end;
close(f);
end;

procedure ajout(var f :fiche);
var
p,i:integer;
x,y,di:char ;
begin
reset(f);
di:='#';
writeln('La position');
readln(p);
seek(f,p-1);
read(f,x);
seek(f,p-1);
write(f,di);
for i := p to filesize(f)-1 do
begin
read(f,y);
seek(f,filepos(f)-1);
write(f,x);
x:=y;
end;
write(f,y);
close(f);
end;



procedure eff(var f :fiche );
var
i,g:integer ;
x:char ;
begin
reset(f);
Writeln('la position ') ;
readln(g);
seek(f,g-2);
read(f,x);
write(f,x);
for i :=g to filesize(f)-1 do
begin
read(f,x);
seek(f,filepos(f)-2);
write(f,x);
seek(f,filepos(f)+1);
end;
seek(f,filepos(f)-1);
truncate(f);
close(f);
end;

procedure aff(var f: fiche) ;
var
  x:char;
 begin
reset(f);
while(not(eof(f)))do
begin
read(f,x);
writeln(x);
end ;
close(f);
end ;


BEGIN
assign(f,'c:\caraateree.car');
remp_f(f);
writeln('-------------------------');
aff(f);
ajout(f);
writeln('---------------------------');
aff(f);

eff(f);
writeln('-----------------------------');
aff(f);
END.