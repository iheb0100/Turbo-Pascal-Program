program ex;
uses wincrt ;
var
x: integer ;

procedure saisir(var x :integer );
begin
writeln('Entrer X ');
readln(x);
if(x<0) then
saisir(x);
end;


BEGIN
saisir(x);
writeln('La valeur x ',x);
END.