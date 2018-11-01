program ex;
uses wincrt ;
type
mat=array[1..6,1..10] of integer ;
var
f:text;
a,i,j,k,c:integer;
m:mat;
begin
j:=0;
assign(f,'c:\Source.txt');
reset(f);
i:=1;
While(not(eof(f)))or(i=6)do
begin
read(f,a);
j:=j+1 ;
m[i,j]:=a;
if(j=10)then
begin
j:=0;
end;
if(eoln(f)=true)then
begin
i:=i+1;
end;
end;
close(f);

For k := 1 to 6 do
begin
for c := 1 to 10 do
begin
write(m[k,c],'|');
end;
writeln;
end;

end.
