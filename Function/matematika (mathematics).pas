program matematika;
var
	x: real;
	function FX (x:real): real;
		begin
			FX:=x*x;
		end;
	function GX (x:real): real;
		begin
			GX:= 2*x+2;
		end;
	function FoGX (x:real): real;
		begin
			FoGX:= FX(GX(x));
		end;
begin
	write('Nilai X: ');
	readln(x);
	write('(FoG)(',x:4:0,') = F(G(',x:4:0,')) = F(',GX(x):4:0,') =',FoGX(x):4:0);
end.