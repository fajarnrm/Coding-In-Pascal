program lama_pekerjaan;
var
        day,hari,h,bulan,b,tahun,t: longint;
begin
        write('lama kerja dalam hari: ');
        readln(day);
        tahun:= day div 365;
        t:= day mod 365;
        bulan:= t div 30;
        b:= t mod 30;
        hari:=b;
        write('lama pekerjaan=> Tahun:',tahun, ' Bulan:',bulan, ' Hari:',hari);
        readln;
end.