program pengunjung;
var
	kemarin,sekarang,i,hari,hari1: integer;
begin
	write('Jumlah Pengunjung hari ke 1: ');
	readln(sekarang);
	kemarin:= 0;
	hari:= 0;
	i:= 1;
	repeat
		i:=i+1;
		if (kemarin>sekarang) then
			hari:= hari+1;
		if (kemarin>sekarang) then
			hari1:= i-1;
		kemarin:=sekarang;
		write('Jumlah Pengunjung hari ke ',i,': ');
		readln(sekarang);
	until (kemarin>=100)and(sekarang>=100);
	writeln('Jumlah Hari Penurunan: ',hari,' Hari');
	writeln('Hari Ke ',hari1,' Terjadi Penurunan');
end.