program billprima;
var
	i,prima,bill: integer;
begin
	write('Bilangan Bulat: ');
	readln(bill);
	i:=1;
	prima:=0;
	repeat
		if (bill mod i=0) then
		prima:=prima+1;
		i:=i+1;
	until (bill<i);
	if (prima=2) then
		write(bill,' Bilangan Prima')
	else
		write(bill,' Bukan bilangan prima');
end.