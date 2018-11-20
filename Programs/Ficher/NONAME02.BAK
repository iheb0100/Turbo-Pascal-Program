program ex;
uses wincrt ;
var
f:text;


procedure saisir_v(var f:text);
var
c:char;
vil:string;
begin
assign(f,'c:\ville.txt');
rewrite(f);
repeat
writeln('Entrer la ville ');
readln(vil);
writeln(f,vil);
writeln('Voulez vous continuez ');
readln(c);
Until(upcase(c) in ['N','n']);
close(f);
end;

procedure aff(var f:text);
var
ch:string;
begin
reset(f);
While(not(eof(f)))do
begin
readln(f,ch);
if(upcase(ch[1])='A')then
begin
writeln(ch);
end;
end;
close(f);
end;


procedure affi(var f:text);
var
c,i:char;
ch: string; 
begin
for i:= 'A' to 'Z' do
begin
Writeln('La liste des ville dont le nom commence par ',i);
reset(f);
while not(eof(f))do
begin
readln(f,ch);
if(upcase(ch[1])=i)then
begin
c:=ch[1];
writeln(ch);
end;
end;
if(not(ch[1] in ['A'..'Z']))then
Writeln('Not found ');

close(f);
end;

end;


BEGIN
saisir_v(f);
Writeln('La liste des ville dont le nom commence par ''A''');
aff(f);
Writeln('--------------------------------------------------');
affi(f);
END.