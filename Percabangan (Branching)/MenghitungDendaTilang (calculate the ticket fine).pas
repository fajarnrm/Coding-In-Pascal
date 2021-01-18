program MenghitungDendaTilang;
type
        denda=(Rp50000,Rp100000,Rp500000);
var
        besar_denda:denda;
        kode,slip_tilang,nominal:integer;
begin
        write('Kode: ');
        readln(kode);
        write('Slip Tilang: ');
        readln(slip_tilang);
        if ((kode in [0..2]) and (slip_tilang in [1..2]))then
           begin
                besar_denda:=denda(kode);
                if (besar_denda=Rp50000)then
                        nominal:=50
                else
                        if(besar_denda=Rp100000)then
                                nominal:=100
                else
                        nominal:=500;
                write('Besar denda yang harus dibayarkan= Rp.',nominal,' ribu');
                if(slip_tilang=1)then
                        write(' Anda harus ikut sidang tilang')
                else
                        write(' Anda mengaku bersalah')
           end
        else
                write(' salah memasukan kode');
        readln;
end.
