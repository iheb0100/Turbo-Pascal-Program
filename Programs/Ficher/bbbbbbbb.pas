program ex;
uses wincrt ;
var
f:text;
ch:string;


procedure saisir(var ch :string);


function verif(ch:string):boolean;
var
i:integer;
begin
i:=0;
repeat
i:=i+1;
until (ch[i] in ['1'..'9'])or(i=length(ch));
verif:= (ch[i] in ['1'..'9']) ;
end;

begin
repeat
Writeln('Enter une chaine ');
readln(ch);
until(verif(ch)=False)
end;


procedure remplir(var f:text; ch :string);
var
j:string;
begin
rewrite(f);
repeat
j:=copy(ch,1,pos('.',ch));
writeln(j);
readln;
if(j[1]<>' ')then
j[1]:=upcase(j[1])
else
delete(j,1,1);

writeln(f,j);
delete(ch,1,length(j));
until(length(ch)=0);
close(f);
end;



BEGIN
assign(f,'c:\fff.txt');
saisir(ch);
remplir(f,ch);
END.