program mencari_volume_tabung;
uses crt;
const
        phi = 3.14;
var
        t,r,v: real;
begin
        clrscr;
        writeln('MENCARI VOLUME TABUNG');
        write('Masukan Jari-Jarinya: ');
        readln(r);
        write('Masukan Tinggi Tabungnya: ');
        readln(t);
        v:=r*r*phi*t;
        write('Jadi Volume Tabungnya Adalah = ',v:4:2);
        readln;
end.