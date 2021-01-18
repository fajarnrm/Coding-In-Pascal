program kalkulator;
var
	a,b: integer;
	c: char;
	function tambah(a,b:integer): integer;
		begin
			tambah:= a+b;
		end;
	function kurang(a,b:integer): integer;
		begin
			kurang:=a-b;
		end;
	function kali(a,b:integer): integer;
		begin
			kali:= a*b;
		end;
	function bagi(a,b:integer): real;
		begin
			bagi:=a/b;
		end;
	function faktorial(a:integer): integer;
		var
			fak,i: integer;
		begin
			fak:=1;
			i:=1;
			repeat
				fak:=fak*i;
				i:=i+1;
			until(i=a+1);
			faktorial:= fak;
		end;
	function pangkat(a,b:integer): integer;
		var
			i,p: integer;
		begin
			p:= 1;
			i:= 0;
			repeat
				p:=p*a;
				i:=i+1;
			until(i=b);
			pangkat:= p;
		end;
	function kombinasi(a,b:integer): real;
		var
			fak,kom1,kom2,i,c: integer;
		begin
			begin
				fak:=1;
				i:=1;
				repeat
					fak:=fak*i;
					i:=i+1;
				until(i=a+1);
				kom1:= fak;
			end;
			begin
				c:=a-b;
				fak:=1;
				i:=1;
				repeat
					fak:=fak*i;
					i:=i+1;
				until(i=c+1);
				kom2:= fak;
			end;
			kombinasi:= faktorial(a)/faktorial(c);
		end;
	function permutasi(a,b:integer): real;
		var
			fak,kom1,kom2,kom3,i,c: integer;
		begin
			begin
				fak:=1;
				i:=1;
				repeat
					fak:=fak*i;
					i:=i+1;
				until(i=a+1);
				kom1:= fak;
			end;
			begin
				fak:=1;
				i:=1;
				repeat
					fak:=fak*i;
					i:=i+1;
				until(i=b+1);
				kom2:= fak;
			end;
			begin
				c:=a-b;
				fak:=1;
				i:=1;
				repeat
					fak:=fak*i;
					i:=i+1;
				until(i=c+1);
				kom3:= fak;
			end;
			kombinasi:= kom1(a)/(kom2*kom3);
		end;
	procedure divmod(a,b:integer);
		var
			d,m: real;
		begin
			d:= a/b;
			m:= d-b;
			writeln(a,' div ',b,'=',d:2:0);
			write(a,' mod ',b,'=',m:2:0);
		end;
begin
	repeat
		write('Masukan B1: ');
		readln(a);
	until(a>=0);
	repeat
		write('Masukan B2: ');
		readln(b);
	until(b>=0);
	repeat
		writeln('Masukan Oprator: ');
		write('+,-,x,/,^,!,C,P,%');
		readln(c);
	until (c='+')or(c='-')or(c='x')or(c='/')or(c='!')or(c='^')or(c='C')or(c='P')or(c='%');
	case c of
		'+': begin
			write(tambah(a,b));
			end;
		'-': begin
			write(kurang(a,b));
			end;
		'x': begin
			write(kali(a,b));
			end;
		'/': begin
			write(bagi(a,b));
			end;
		'!': begin
			write(faktorial(a));
			end;
		'^': begin
			write(pangkat(a,b));
			end;
		'C': begin
			write(kombinasi(a,b));
			end;
		'P': begin
			write(permutasi(a,b));
			end;
		'%': begin
				divmod(a,b);
			end;
	end;
end.