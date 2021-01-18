program panahan;
var
	n1,n2,n3,i,hasil: integer;
	cek: boolean;
begin
	i:=0;
	hasil:=0;
	repeat
		write('Nilai: ');
		read(n1);
		read(n2);
		read(n3);
		cek:=(n1=10) and (n2=10) and (n3=10);
		hasil:=n1+n2+n3+hasil;
		i:=i+1;
	until(hasil>=70) or (cek=true);
	writeln('SELESAI');
	write('Tercapai Pada Set Ke-',i);
end.