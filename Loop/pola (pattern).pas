program pola;
var
    i,j,n:integer;
begin
    write('Masukan Bilangan: ');
    readln(n);
    i:=1;
    repeat
        begin
            j:=1;
                repeat
                    begin
                        if (i=1) or (j=1) or (i>=n) or(j>=n) then
                            begin
                                write(j,' ');
                            end
                        else
                            begin
                                write('  ');
                            end;
                    j:=j+1;
                    end;
                until(j>n);
            writeln;
            i:=i+1;
        end;
    until(i>n)
end.

