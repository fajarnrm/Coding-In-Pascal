program perpustakaan;
var
        jumlah,rata,hari:real;
        peng,pengunjung,i:integer;
begin
        i:=0;
        jumlah:=0;
        write('Pengunjung: ');
        readln(pengunjung);
        repeat
            i:=i+1;
            peng:=pengunjung;
                if (pengunjung<0) then
                    pengunjung:=0
                else if (pengunjung>1000) then
                    pengunjung:=1000;
            jumlah:=pengunjung+jumlah;
            write('Pengunjung: ');
            readln(pengunjung);
        until (pengunjung<=0) and (peng<=0);
        hari:=i-1;
        rata:=jumlah/hari;
        writeln('Rerata Kunjungan Harian Adalah:',rata:4:0);
        readln;
end.
