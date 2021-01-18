program biner1;
var
        bill,bill1,biner,i,sisa:integer;
begin
        write('Desimal: ');
        readln(bill);
        i:=1;
        repeat
            begin
                biner:= bill mod 2;
                bill:= bill div 2;
                writeln('Remainder ',biner);
            end;
        until(bill=0)
end.   
