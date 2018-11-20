program ex;
uses wincrt ;
type
mat = record
n:string[10];
q:real;
end;

tab= array[1..20] of mat;
fiche= file of mat;
var
m:fiche;
t:tab;
i:integer ;

procedure remplir(var f:fiche);
var
i:integer ;
e:mat;
begin
rewrite(f);
i:=0;
repeat
with e do
begin 
writeln('Enter n '); 
readln(n);
writeln('enterer q ');
readln(q); 
end;
write(f,e);
i:=i+1;
until(i=10);
close(f);
end;

procedure transfer(var t:tab; var f:fiche);
var
i:integer;
e:mat;
begin
i:=0;
reset(f);
while(not(eof(f)))do
begin
read(f,e);
i:=i+1;
t[i]:=e;
end;
close(f);
end;

procedure tri(var t:tab;var f:fiche);
var
i,j:integer;
y:mat;
x:real;
begin
reset(f);
for i := 2 to filesize(f) do
begin
x:=t[i].q;
y:=t[i];
j:=i;
while(x<t[j-1].q)and(j>1)do
begin
t[j]:=t[j-1];
j:=j-1;
end;
t[j]:=y;
end;
close(f);
end;

BEGIN
assign(m,'c:\dev.dat');
remplir(m);
transfer(t,m);
tri(t,m);

for i := 1 to filesize(m) do
begin
writeln(t[i].q);
end;
end.