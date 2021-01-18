program ktm;
var
	bill,ganjil,genap,cek: integer;
begin
	write('bilangan: ');
	readln(bill);
	ganjil:=0;
	genap:=0;
	repeat
		if(bill mod 2=0) then
			genap:=bill+genap
		else   
			ganjil:=bill+ganjil;
		cek:=bill;
		write('bilangan: ');
		readln(bill);
	until (bill=9999);
	if (cek mod 2=0) then
		write('Genap: ',genap)
	else
		write('Ganjil: ',ganjil);
end.