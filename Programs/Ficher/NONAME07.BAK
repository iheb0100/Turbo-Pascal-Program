program ex;
uses wincrt ;
type
fiche= file of integer ;
var
n: integer ;
f:fiche ;

procedure remp(var f:fiche ; n: integer );
var
i,nb: integer ;
begin
rewrite(f);
for i := 1 to n do
begin
Writeln('Entere un nb ');
readln(nb);
write(f,nb);
end;
close(f);
end;

procedure inv(var f: fiche ; n: integer );
var
i,y,x: integer ;
begin
reset(f);
{for i := 1 to n div 2  do
begin
read(f,x);
seek(f,filesize(f)-i);
read(f,y);
seek(f,filesize(f)-i);
write(f,x);

seek(f,i-1);
write(f,y);
end; }

close(f);
end;

procedure aff(var f: fiche ;n : integer );
var
i,x : integer ;

begin
reset(f);
Writeln('-----------------------------');
for i := 1 to n do
begin
read(f,x);
Writeln(x);
end;
Writeln('-------------------------');
close(f);
end; 




BeGIN
assign(f,'c:\exerciciee.dat');
Writeln('Sasisir la taille ');
readln(n);
remp(f,n);
writeln('fichier non inverser ');
aff(f,n);

inv(f,n);
writeln('fichier inverser');
aff(f,n);
END.
