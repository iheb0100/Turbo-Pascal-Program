program ex ;
uses wincrt;
var
f:text;
ch : string;
function conv(ch:string):integer;
var
d,i,b,x,e:integer;
begin
b:=1; d:=0;
for i :=  length(ch) downto 1 do
begin
val(ch[i],x,e);
d:=d+(b*x);
b:=b*2;
end;
conv:=d;
end;

procedure forme(var f: text);
var
j,ch,x:string;
b:integer;
begin
ch:='';
reset(f);
while(not(eof(f)))do
begin
readln(f,x);
Writeln(x);
repeat
j:=copy(x,1,8);
if(x[9]<>' ')then
begin
delete(x,1,8);
end
else
begin
delete(x,1,9) ;
end;
Writeln(j);
ch:=ch+chr(ord(conv(j)));
until(length(x)=0);
ch:=ch+' '
end;
Writeln(ch);
close(f);
end;







BEGIN
assign(f,'c:\cry.txt');
forme(f);
END.