program ex;
uses wincrt ;
var
nombre : string[20] ;
         
function chtoval(x:string; i,n: integer ): integer ;
begin
if(i<=0) then
chtoval := 0
else
begin
chtoval:=((ord(x[i])-48)*n)+chtoval(x,i-1,n*10) ;
end;
end;  



Begin
Writeln('Enter le nombre ');
readln(nombre);
Writeln('Le nombre est ',chtoval(nombre,length(nombre),1));

end.