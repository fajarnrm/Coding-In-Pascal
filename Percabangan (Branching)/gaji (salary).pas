program gaji4;
const
        golA= 3000;
        golB= 4000;
        golC= 5000;
        upahlembur= 3000;
var
        nama: string;
        gaji,lembur,jam: real;
        gol:char;
begin
        write('Masukan Nama: ');
        readln(nama);
        write('Golongan (karakter): ');
        readln(gol);
        write('Jam Kerja: ');
        readln(jam);
        if (jam>48) then
           begin
                if (gol='A') then
                   begin
                      lembur:= jam-48;
                      gaji:= golA*48+lembur*upahlembur;
                   end
                else if (gol='B') then
                   begin
                      lembur:= jam-48;
                      gaji:= golB*48+lembur*upahlembur;
                   end
                else if (gol='C') then
                   begin
                      lembur:= jam-48;
                      gaji:= golC*48+lembur*upahlembur;
                   end
           end
        else
           begin
                if (gol='A') then
                   begin
                      gaji:=golA*jam;
                   end
                else if (gol='B') then
                   begin
                      gaji:=golB*jam;
                   end
                else if (gol='C') then
                   begin
                      gaji:=golc*jam;
                   end
           end;
        write('Nama: ',nama, '. Total Gaji Anda= Rp.',gaji:4:0);
        readln;
end.