program ex;
uses wincrt;
var
f:text ;

function nb_l(var f:text ): integer ;
var
ch: string ;
i:integer ;
begin
i:=0;
reset(f);
while(not(eof(f)))do
begin
i:=i+1;
readln(f,ch);
end;
close(f);
nb_l:=i;
end;


Procedure aff(var f:text);
var
nb,i,k:integer;
ch:string;
begin
reset(f);
nb:=0;i:=0;k:=0;
while(not(eof(f)))do
begin

 while(not(eoln(f)))do
 begin
 i:=i+1;
 readln(f,ch);
 nb:=nb+length(ch);
 k:=length(ch);
 Writeln('-------------------------------------');
 Writeln('Nombre de caractere par ligne ',i,'  ',k);
 end;
end;            Writeln('-------------------------------------');
Writeln('Nombre total du char ',nb);
close(f);
 end;
  


BEGIN
assign(f,'c:\test.txt');
writeln('le nombre de ligne ',nb_l(f));
aff(f);

END.