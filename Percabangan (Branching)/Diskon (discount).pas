program Diskon;
const
        diskon=0.1;
var
        harga,potongan,total:real;
begin
        write('Total Belanja= Rp.');
        readln(harga);
        if (harga>100000) then
           begin
              potongan:=harga*diskon;
              total:=harga-potongan;
              write('Total Bayaran= Rp.',total:4:0);
           end
        else
           begin
              write('Total Bayaran= Rp.',harga:4:0);
           end;
         readln;
end.
