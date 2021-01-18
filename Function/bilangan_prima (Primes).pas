program assesment;
var
	a,b: integer;
	function prima (a,b: integer): boolean;
		var
			i,hasil: integer;
		begin
			i:= 1;
			hasil:= 0;
			repeat
				if (a mod i=0) then
					hasil:= hasil+1;
				if (hasil=2) then
					prima:= true
				else
					prima:= false;
				i:=i+1;
			until(i=b+1);
		end;
	function prima7 (a: integer): boolean;
		var
			i: integer;
		begin
			i:= a-7;
			if(a=7)then
				prima7:= true;
			if(i mod 10=0) then
				prima7:= true
			else
				prima7:= false;
		end;
	procedure pembagi (a,b: integer);
		var
			i: integer;
		begin
			i:= 2;
			repeat
				if (a mod i=0) then
					if(prima(a,b)=false) then
						write(i,',');
				i:=i+1;
			until (i=b+2);
		end;
	procedure menampilkan (a,b: integer);
		var
			p1,p7: string;
		begin
			repeat
				if(prima(a,b)=true) then
					p1:= 'PRIMA'
				else
					p1:= ' ';
				if(prima7(a)=true) then
					p7:= 'TUJUH'
				else
					p7:= ' ';
				writeln(a,'=>',p1,' ',p7);
				pembagi(a,b);
				a:=a+1;
			until(a=b+1);
		end;
begin
	write('Bill 1: ');
	readln(a);
	write('Bill 2: ');
	readln(b);
	menampilkan(a,b);
end.