program soal2loop;
var
        bill,ganjil,genap,nol:integer;
begin
        write('Bilangan Bulat: ');
        readln(bill);
        ganjil:=0;
        genap :=0;
        nol   :=0;
        repeat
             if (bill mod 2=1) or (bill mod 2=-1) then
             ganjil:=ganjil+1
             else if( bill mod 2=0) or (bill=0) then
             genap:= genap+1;
             if (bill=0) then
             nol:= nol+1;
             write('Bilangan Bulat: ');
             readln(bill);
        until (bill=-9999);
        writeln('Bilangan Ganjil:',ganjil, '  Bilangan Genap:',genap,'  bilangan Nol:',nol);
        readln;
end.
