program data_penyu;
uses math;
var
        umur,berat,i,p: integer;
        telur,jml:real;
        gender: string;
begin
        write('Jumlah Penyu: ');
        readln(p);
        jml:= 0;
        i:= 0;
        repeat
            i:=i+1;
            write('Penyu ',i,' umur: ');
            readln(umur);
            write('Penyu ',i,' Berat: ');
            readln(berat);
            write('Penyu ',i,' Jenis Kelamin: ');
            readln(gender);
            if ((gender= 'Betina') and (umur>35)) then
                begin
                    telur:= (1/berat)*power((1+berat/1000), umur/2);
                    writeln('Penyu: ',i, ' Menghasilkan ',telur:4:0, ' Telur/Tahun');
                end
            else if ((gender= 'Betina') and (umur<=35)) then
                    writeln('Penyu: ',i, ' Menghasilkan 0 Telur/Tahun')
            else
                    writeln('Penyu: ',i, ' Tidak Menghasilkan Telur');
            jml:= jml+telur;
        until (i>=p);
        writeln('jumlah telur penyu adalah: ',jml:4:0);
end.
