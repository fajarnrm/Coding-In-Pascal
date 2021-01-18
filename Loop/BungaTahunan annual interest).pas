program BungaTahunan;
var
        sb,uang,target,nominal,target2: real;
        periode,i                     : integer;
begin
        write('Suku Bunga: ');
        readln(sb);
        write('Target (juta): ');
        readln(target2);
        target:=target2*1000000;
        nominal:=1000000;
        i:=1;
        repeat
                uang:=nominal*sb;
                nominal:=nominal+uang;
                periode:=i+periode;
        until(nominal>target);
        write('Pada Tahun Ke: ',periode, '  Uang Akan Mencapai Target: ',target2:2:1,'  yaitu: Rp.',nominal:4:0);
        readln;
end.
