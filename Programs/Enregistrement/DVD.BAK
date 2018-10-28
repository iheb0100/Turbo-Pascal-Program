program DVD1;
uses wincrt ;
type
dvd = record 
nb: integer ;
let:string[3];
Zon:1..3;
end;

tab=array[1..200] of dvd;
var
v:tab ;
n: integer;

function saisir : integer ;
begin
repeat
Writeln('Entere l taille du vecteur ');
readln(n);
until(n in [1..200]);
saisir:=n;
end;


procedure remplir_e(var e :dvd);
begin
With e do
begin
repeat
Writeln('Enter un nombre du dvd !4 chiffre ');
readln(nb);
until(nb>1000);
repeat
writeln('entre trios lettre ');
readln(let);
until(length(let)=3);
repeat
Writeln('Enter un nombre de votre cont ');
Writeln('1-amerique ');
Writeln('2- europe et afrique ');
Writeln('3- asie ');
Readln(zon);
until(zon in [1..3]);
end;
end;


procedure remplir_v(var v:tab ; n: integer);
var
e:dvd;
i :integer;
begin
for i := 1 to n do
begin
remplir_e(e);
v[i]:=e;
end;
end;


procedure aff(v: tab ; n: integer );
function tran(x:dvd):string;
var
ch,ch1:string ;
begin
str(x.nb,ch)  ;
str(x.zon,ch1);
tran:=ch+x.let+ch1;
end;

var
i: integer ;
begin
for i:= 1 to n do
begin
Writeln('**********************');
Writeln('Le nb ',v[i].nb);
Writeln('La zone ',v[i].zon);
if(v[i].zon=1) then
 Writeln('Amerique')
else if (v[i].zon=2) then
writeln('Afrique or europe ')
else
 writeln('Asie');
Writeln('Tout le mot ',tran(v[i]));
writeln('***********************');
end;
end;


BEGIN
n:=saisir ;
remplir_v(v,n);
aff(v,n);
END.

 