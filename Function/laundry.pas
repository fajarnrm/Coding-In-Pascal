program laundry;
var
	seprai,bedcov: integer;
	kg: real;
	function pembulatan(kg:real): integer;
		var
			pembanding: integer;
			hasil: real;
		begin
			pembanding:=trunc(kg);
			hasil:= pembanding+0.5;
			if (hasil<=kg) then
				pembulatan:= pembanding+1
			else
				pembulatan:= pembanding;
		end;
	procedure hithrghari (kg: real; seprai:integer; bedcov:integer);
		var
			biaya: real;
			hari,hari1,jumlah: integer;
		begin 
			hari1:= pembulatan(kg) div 2;
			if (pembulatan(kg) mod 2=1) then
				hari:= hari1+1+seprai+bedcov
			else
				hari:= hari1+seprai+bedcov;
			biaya:= pembulatan(kg)*6000+bedcov*10000+seprai*5000;
			jumlah:= seprai+bedcov;
			writeln('Lama Pengerjaan: ',hari,' Hari');
			writeln('Biaya: Rp.',biaya:2:0);
			writeln('Keterangan: ');
			writeln(hari,' hari= ',hari1,' Hari (Cucian ',pembulatan(kg),' kg) + ',jumlah,' Hari (',seprai,' Seprai dan ',bedcov,' Bed Cover)');
			write('Rp.',biaya:2:0,' = (Cucian: ',pembulatan(kg),' X Rp.6.000) + (Seprai: ',seprai,' X Rp.5.000) + (Bed Cover: ',bedcov,' X Rp.10.000)');
		end; 
begin
	write('Masukan Berat Cucian(kg): ' );
	readln(kg);
	write('Masukan Jumlah Seprai: ');
	readln(seprai);
	write('Masukan Jumlah Bed Cover: ');
	readln(bedcov);
	writeln('Hasil Pembulatan Cucian: ',pembulatan(kg),' Kg');
	hithrghari(kg,seprai,bedcov);
end.