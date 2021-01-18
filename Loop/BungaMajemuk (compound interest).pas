program BungaMajemuk;
var
        modal,hasilbunga,sb,hasil : real;
        i,periode                 : integer;
begin
        write('Suku Bunga: ');
        readln(sb);
        write('Lama Periode(tahun): ' );
        readln(periode);
        modal:= 1000000;
        for i:= 1 to periode do
                begin
                hasilbunga:=modal*sb;
                hasil:=modal;
                modal:=modal+hasilbunga;
                writeln('Uang pada Tahun Ke: ',i, ' Rp.',modal:4:0,' Dengan Bunga: Rp.',hasilbunga:4:0);
                end;
end.