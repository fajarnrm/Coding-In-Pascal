program biner2;
var
        bill,biner,i: integer;
        bilbin: string;
begin
        write('Desimal: ');
        readln(bill);
        i:=1;
        repeat
            begin
                biner:= bill mod 2;
                    if (biner=1) then
                            bilbin:='1'+bilbin
                    else
                            bilbin:='0'+bilbin;
                bill:= bill div 2;
            end;
        until(bill=0);
        write('Biner: ',bilbin);
end.
