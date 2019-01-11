program ex;
uses wincrt ;
var
ch : string ;

function inv(ch : string ;i: integer): string ;
begin
if(i=0)then
inv:=''
else
inv:= ch[i]+inv(ch,i-1);
end;

Begin
Writeln('la chaine ');
readln(ch);
Writeln('Linverse = ',inv(ch,length(ch)));
end.