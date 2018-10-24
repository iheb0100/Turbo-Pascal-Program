program perso;
uses wincrt ;
type
person=record
nom:string[30];
tel:string[10];
com:word;
end;

tab =array[1..100] of person ;
var
t:tab ;
n: integer ;

function verif(ch : string ): boolean ;
var
i :integer ; 
begin
i:=0 ;
repeat
i:=i+1;
until(upcase(ch[i]) in ['A'..'Z']);
verif:=(upcase(ch[i]) in ['A'..'Z']);
end;


procedure saisr_e(var e : person ) ;
begin
With e do
begin
repeat
Writeln('Entere le nom  ');readln(nom) ;
until(verif(nom)=true);
Writeln('Entere telephonr '); readln(tel) ;
Writeln('Entere le nmbre du compte bancaire ') ; readln(com);
end;
end ;


function saisir_n : integer ;
begin 
repeat
Writeln('Enter la taille du tableau ');
readln(n);
until (n in [1..100]);
saisir_n:=n;
end;


Procedure remplir_t(var t: tab ; n : integer);
var
e:person;
j : integer;
begin
for j := 1 to n do
begin
saisr_e(e);
t[j]:=e;
end;
end;


procedure aff(t:tab; n : integer );
var
i: integer ;
begin
for i := 1 to n do
begin
With t[i] do
begin 
Writeln('Entere le nom  ',nom); 
Writeln('Entere telephonr ',tel);  
Writeln('Entere le nmbre du compte bancaire ',com);
end;
end;
end;


BEGIN
n:=saisir_n ;
remplir_t(t,n);
Writeln('***************************');
aff(t,n);
Writeln('***************************');
END.