program pendampingan;
var
	b1,b2: integer;
	p: boolean;
	function hitungselisih(b1,b2: integer): integer;
		var
			nilai: integer;
		begin
			nilai:= b1-b2;
			if(nilai<0) then
				hitungselisih:= -1*nilai
			else
				hitungselisih:= nilai;
		end;
	function terbilang(b1,b2: integer): string;
		var
			nilai: integer;
		begin
			nilai:= hitungselisih(b1,b2);
			if (nilai=0) then
				terbilang:= 'Nol'
			else if (nilai=1) then
				terbilang:= 'Satu'
			else if (nilai=2) then
				terbilang:= 'Dua'
			else if (nilai=3) then
				terbilang:= 'Tiga'
			else if (nilai=4) then
				terbilang:= 'Empat';
		end;
	procedure banding (b1,b2: integer);
		var
			p: boolean;
		begin
			p:= hitungselisih(b1,b2) <= 4;
			if(p=true) then
				writeln('Selisih: ',terbilang(b1,b2))
			else
				write('Program Selesai');
		end;
begin
	repeat
		write('Bilangan 1 dan 2: ');
		read(b1,b2);
		p:= hitungselisih(b1,b2)<= 4;
		banding(b1,b2);
	until(p=false);
end.