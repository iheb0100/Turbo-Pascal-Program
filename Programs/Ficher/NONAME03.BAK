Program AymenDA;
uses wincrt;
Type
fichier = file Of Integer;
Var
i,aux,a,b : Integer;
f : fichier;
test : Boolean;

Procedure createfile(Var f : fichier);
Begin
Assign(f,'C:\New folder\test.dat');
Rewrite(f);
Close(f);
End;

Procedure FillFile(Var f : fichier);
Var
a : Integer;
Begin
Assign(f,'C:\New folder\test.dat');
Reset(f);
For i:=0 To 5 Do
Begin
Readln(a);
Seek(f,i);
Write(f,a);
End;
Close(f);
End;

Procedure AffichFile(Var f : fichier);
Var
a : Integer;
Begin
Assign(f,'C:\New folder\test.dat');
Reset(f);
For i:=0 To (Filesize(f)-1) Do
Begin
Seek(f,i);
read(f,a);
Writeln(a);
End;
Close(f);
End;

Procedure tri(Var f : fichier);
Var
a,b,i : Integer;
Begin
Assign(f,'C:\New folder\test.dat');
Reset(f);
Repeat
test := True;
For i:=0 To (Filesize(f)-2) Do
Begin
Seek(f,i);
read(f,a);

Seek(f,i+1);
read(f,b);

If (a>b) Then
Begin
Seek(f,i);
Write(f,b);
Seek(f,i+1);
Write(f,a);
test := False;
End;
End;
Until (test = True);
Close(f);
End;
Begin
createfile(f);
FillFile(f);

affichfile(f);
Writeln('***************aprés le tri ya si hamad***************­*');
tri(f);
affichfile(f);
Readln;
End.