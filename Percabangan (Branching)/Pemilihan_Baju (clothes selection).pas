program pemilihan baju;
const
        senin ='Kemeja Kotak';
        selasa='Kemeja Batik';
        rabu  ='Kebaya';
        kamis ='Kemeja kotak';
        jumat ='Baju Muslim';
var
        hari:string;
begin
        write('Hari: ');
        readln(hari);
        if (hari='senin') then
           begin
              write(senin);
           end
        else if (hari='selasa') then
           begin
              write(selasa);
           end
        else if (hari='rabu') then
           begin
              write(rabu);
           end
        else if (hari='kamis') then
           begin
              write(kamis);
           end
        else if (hari='jumat') then
           begin
              write(jumat);
           end;
        readln;
end.