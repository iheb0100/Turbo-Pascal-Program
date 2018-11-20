program ex;
uses wincrt ;
type
tab=array[1..100] of integer ;
fiche=file of integer ;
var
f,f1:fiche ;
t:tab;


procedure rem(var f:fiche);
var
n: integer ;
begin
rewrite(f);
repeat
Writeln('Entere un nombre ');
readln(n);
write(f,n);
until(n>1000)or(filesize(f)=100);
close(f);
end;


procedure tran(var f:fiche; var t:tab);
var
i,x:integer;
begin
i:=0;
reset(f);
While(not(eof(f)))do
begin
read(f,x);
i:=i+1;
t[i]:=x ;
end;
close(f);
end;


procedure cop(var f1:fiche;t:tab);
var
i:integer;
begin
i:=0;
rewrite(f1);
repeat
i:=i+1;
write(f1,t[i]);
until(t[i]>1000);
close(f1);
end;

procedure aff(var f:fiche);
var
n : integer ;
begin
reset(f);
While(not(eof(f)))do
begin
read(f,n);
Write(n,'|');
end;
close(f);
writeln;
end;

BEGIN
assign(f,'c:\fiche1.fch');
assign(f1,'c:\fiche2.fch');
rem(f);
Writeln('Contenu fichier 1 ');
aff(f);
writeln('-----------------------');
tran(f,t);
Writeln('Contenu Fiche  2 ');
cop(f1,t);
aff(f1);
END.

