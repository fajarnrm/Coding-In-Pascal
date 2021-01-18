program menghitung_substring;
var
	asli: string;
	awal,jumlah: integer;
	tes: array [1..100] of string;
	function substring (asli: string; awal,jumlah:integer): string;
	var
		i,idx,jml: integer;
		hasil: string;
	begin
		i:=1;
		jml:=length(asli);
		begin
				repeat
					begin
						tes [i]:= asli[i];
					end;	
				i:=i+1;
				until (i>jml);
		end;
		begin
			i:=awal;
			hasil:='';
			idx:=1;
			if (awal>0)and(jumlah<=jml) then
				repeat
					hasil:=hasil+tes[i];
					substring:= hasil;
				i:=i+1;
				idx:= idx+1;
				until(idx>jumlah)
			else
				write('INVALID RANGE');
		end;
	end;
begin
	write('Asli: ');
	readln(asli);
	write('awal: ');
	readln(awal);
	write('jumlah: ');
	readln(jumlah);
	write(substring(asli,awal,jumlah));
end.