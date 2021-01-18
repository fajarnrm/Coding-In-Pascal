program menghitung_waktu;
var
        d,m,j,h,detik,second,menit,jam,hari:longint;
begin
        write('Detik: ');
        readln(second);
        hari:= second div 86400;
        h:= second mod 86400;
        jam:= h div 3600;
        j:= h mod 3600;
        menit:= j div 60;
        m:= j mod 60;
        d:= m;
        write('Hari:',hari,' Jam:',jam,' Menit: ',menit,' Detik:',d);
        readln;
end.
