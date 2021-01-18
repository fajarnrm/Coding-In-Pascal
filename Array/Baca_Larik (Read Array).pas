program asprak1;
var
	kata: array [1..20] of string;
	n: integer;
	procedure bacalarik (n: integer);
		var
			i: integer;
		begin
			i:=1;
			repeat
				write('Kata ke-',i,': ');
				readln(kata[i]);
				i:=i+1;
			until(i>n);
		end;
	procedure menampikan (n: integer);
		var
			i: integer;
		begin
			i:=1;
			repeat
				if(kata[i][1]='A')or(kata[i][1]='I')or(kata[i][1]='U')or(kata[i][1]='E')or(kata[i][1]='O')then
					write(kata[i],' ');
				i:=i+1;
			until(i>n)
		end;
begin
	write('Masukan N: ');
	readln(n);
	bacalarik(n);
	writeln();
	menampikan(n);
end.