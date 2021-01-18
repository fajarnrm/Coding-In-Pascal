program mencari_tegangan_listrik;
uses crt;
var
        v,i,r: real;
begin
        clrscr;
        writeln('PROGRAM MENCARI TEGANGAN LISTRIK');
        write('Masukan Arusnya (i): ');
        readln(i);
        write('Masukan Tahanannya (r): ');
        readln(r);
        v:=i*r;
        write('Jadi Tegangannya Adalah = ',v:4:0,' Volt');
        readln;
end.