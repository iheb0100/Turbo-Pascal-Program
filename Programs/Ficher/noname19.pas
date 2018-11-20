program ex;
uses wincrt ;
type
fiche= file of char ;

var
f:fiche ;
i,p: integer ;
X:char ;

BEGIN
assign(f,'c:\tesssst.dat');
rewrite(f);
For i := 0 to 9 do
begin
seek(f,i);
readln(X);
write(f,x);
end;
close(f);
reset(f);
seek(f,0);
while not(eof(f))do
read(f,X);

p:=filepos(f);
seek(f,p-5);
read(f,X);

truncate(f);
close(f);
Writeln(p);
writeln(x);

END.

