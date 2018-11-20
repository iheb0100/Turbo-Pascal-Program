Program ex ;
uses wincrt ;
type
mat=array[1..100,1..100] of integer ;
tab = array[1..100] of integer ;
var
m:mat;
f :text ;
j,i:integer;
t:tab;
Procedure Tri_Rapide (d, f : Integer ; Var T : Tab);
Var i, p, x, m : Integer;
Begin
If (f > d) Then
Begin
m :=(d+f) div 2;
x := T[m]; T[m]:=T[d]; T[d]:=x;
p:=d;
For i := d+1 to f Do
If (T[i]<T[d]) Then
Begin
p:=p+1;
x:=T[i];
T[i]:=T[p];
T[p]:=x;
End;
x:=T[p];
T[p]:=T[d];
T[d]:=x;
Tri_Rapide(d, p-1, T);
Tri_Rapide(p+1, f, T);
End;
End;

procedure transfere(var f :text;var m:mat;var t:tab);
var
i,x,j:integer ;
begin
i:=0;
j:=1;
reset(f);
while(not(eof(f)))do
begin
read(f,x);
i:=i+1;
m[j,i]:=x;
if(i=10) then
begin
j:=j+1;
i:=0;
end;
end;
close(f);
end;

procedure int(var t : tab );
var i: integer ;
begin
for i := 1 to 10 do
begin
t[i]:=0;
end;
end;

procedure ta(var m :mat );
var
i,c,j: integer ;
t:tab;
begin
int(t);
for i:= 1 to 6 do
begin
Tri_Rapide(i,10,t);
Writeln;
for c := 1 to 10 do
begin
write(t[c],'|');
end;
end;
end;





Begin
assign(f,'c:\source.txt');
transfere(f,m,t);
ta(m);
{rewrite(f);}
{for i := 1 to 60 do
begin
Write(f,t[i],' ');
if(i in [10,20,30,40,50,60])then
writeln(f);
end;
close(f); }
{for i := 1 to 6 do
begin
for j:= 1 to 10 do
begin
write(f,m[i,j],' ');
end;
writeln(f);
end;
close(f);  }
END.