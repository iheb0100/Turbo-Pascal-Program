program ex;
uses wincrt ;
type
fi= file of char ;
var
f:fi;


procedure remplir(var f :fi);
var
e: char ;
c:char ;
begin
rewrite(f);
repeat
readln(e);
write(f,e);
Writeln('voumez vous continuez ');
readln(c);
until(upcase(c)='N');
close(f);
end;

procedure supp(var f : fi);
var
x,y:char ;
p,i: integer;
begin
reset(f);
writeln('Donner la position du candidat ');
readln(p);
for i:=p to filesize(f)-1do
begin
seek(f,i);
read(f,y);
seek(f,i-1);
write(f,y);
end;
truncate(f);
close(f);
end ;


procedure aff(var f : fi );
var e:char ;
begin
reset(f);
while(not(eof(f)))do
begin
read(f,e);
writeln(e);
end;
close(f);
end ;


BEGIN
assign(f,'c:\ccccccc.dat');
remplir(f);
supp(f);
aff(f);
end.