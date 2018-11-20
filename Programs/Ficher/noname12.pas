program ex;
uses wincrt ;
type
fichier=file of integer ;
var
f:fichier;


procedure remplir(var f : fichier );
var
i,nb:integer ; 
begin
rewrite(f);
for i := 0 to 5 do
begin
Writeln('Enterer le nb ');
readln(nb);
seek(f,i);
write(f,nb);
end;
close(f);
end;

procedure tri(var f :fichier );
var
x,y,i,b,j,a: integer ;
begin
reset(f);
for i := 0 to 4 do
begin
seek(f,i);
read(f,a);
 for j:= i+1 to 5 do
 begin
 seek(f,j);
 read(f,b);
 if(b<a)then
 begin
 seek(f,i);
 write(f,b);
 seek(f,j);
 write(f,a);
 a:=b;
 end;
 end;
 end;
 close(f);
 end;


 procedure aff(var f : fichier );
 var
 i,a: integer ;
 begin
 reset(f);
 for i := 0 to 5 do
 begin
 read(f,a);
 Write(a,'|');
 end;
 close(f);
 end;


 BEGIN
 writeln('########################Ya Aymen Ahaya solution simple W mahiche twila ############################');
 assign(f,'c:\file.dat');
 remplir(f);
 Writeln('Avant le tri ') ;
 aff(f);
 Writeln;
 Writeln('Apressss le tri ');
 tri(f);
 aff(f);
 END. 
