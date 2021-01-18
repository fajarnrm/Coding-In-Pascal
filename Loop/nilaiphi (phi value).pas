program nilaiphi;
var
        phi:real;
        deret,i,pen: integer;

begin
        write('Panjang Deret: ');
        readln(deret);
        phi:=4;
        i:=1;
        pen:=3;
        while pen<= deret-1 do
        begin
            if (i mod 2 = 0) then
                phi:=phi+4/pen
            else
                phi:=phi-4/pen;
            i:=i+1;
            pen:=pen+2;
        end;
        writeln('Nilai Phi Adalah: ',phi:2:10);
        readln;

end.
