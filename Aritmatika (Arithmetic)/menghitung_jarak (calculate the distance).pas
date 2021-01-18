program menghitung_jarak;
uses crt;
var
    x1,x2,y1,y2: integer;
    hasil: real;
begin
    clrscr;
    writeln('MENGHITUNG JARAK KOORDINAT');
    write('Masukan Nilai x1 nya: ');
    readln(x1);
    write('Masukan Nilai y1 nya: ');
    readln(y1);
    write('Masukan Nilai x2 nya: ');
    readln(x2);
    write('Masukan Nilai y2 nya: ');
    readln(y2);
    hasil:= sqrt(sqr(x2-x1)+sqr(y2-y1));
    write('jadi Jaraknya Adalah: ',hasil:4:0);
    readln;
end.