program menentukan_koordinat;
uses crt;
var
    x,y: integer;
    hasil: boolean;
begin
   clrscr;
   writeln('MENENTUKAN TITIK KOORDINAT (X,Y)');
   write('Masukan Nilai X: ');
   readln(x);
   write('masukan nilai y: ');
   readln(y);
   hasil:= (x=0)and(y>0) or (y=0)and(x>0) or (x>0)and(y>0);
   write('Koordinat Tersebut Bernilai: ',hasil);
   readln;
end.