program menendang;
var
	angka,i: integer;
function kelipatan2 (angka:integer):boolean;
	begin
		kelipatan2:= angka mod 2=0;
	end;
function kelipatan5 (angka:integer):boolean;
	begin
		kelipatan5:= angka mod 5=0;
	end;
function ganjil (angka:integer):boolean;
	begin
		ganjil:= (angka mod 2=1) and (angka mod 5<>0);
	end;
begin
	i:=1;
	repeat
		begin
			write('Masukan Tendangan ke-',i,' :');
			readln(angka);
			i:=i+1;
			if kelipatan2(angka) then
				writeln('Tendangan Terlalu Ke Kiri atau Terlalu Ke Kanan')
			else if kelipatan5(angka) then
				writeln('Tendangan Terlalu Ke Atas')
			else 
				writeln('Tendangan Tepat Sasaran');
		end;
	until (i>5);
	if (ganjil(angka)) > (kelipatan2(angka)) and (ganjil(angka)) > (kelipatan5(angka)) then
		writeln('Superb Marcus!')
	else
		writeln('Well Done, De Gea');
end.