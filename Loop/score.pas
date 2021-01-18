program score;
uses crt;
var
        x:char;
        poin,jumlah,i,menang: integer;
begin
        clrscr;
        i := 1;
        jumlah := 0;
        menang := 0;
        repeat
                write('Pertandingan ke-',i,': ');
                readln(x);
                        if ((x = 'w') or (x = 'W')) then
                        begin
                                poin := 3;
                                jumlah := jumlah + poin;
                                menang := menang + 1;
                                i := i + 1;
                        end
                        else if ((x = 'd') or (x = 'D')) then
                        begin
                                poin := 1;
                                jumlah := jumlah + poin;
                                i := i + 1
                        end
                        else if ((x = 'l') or (x = 'L')) then
                        begin
                                poin := 0;
                                jumlah := jumlah + poin;
                                i := i + 1;
                        end
                        else
                                i := i;
        until ((x = 'q') or (x = 'Q'));
        write('Jumlah poin yang di peroleh adalah ',jumlah,' dan menang ',menang,' kali.');
        readln;
end.