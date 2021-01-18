program tabelfungsi;
var
	x: real;
	function f(x:real): real;
		begin
			f:= 2*x*x + 5*x - 8;
		end;
begin
	writeln('-----------------------');
	writeln('     x      f(x)       ');
	writeln('-----------------------');
	x:=10.0;
	while x<= 15.0 do
		begin
			writeln(x:4:2,'        ',f(x):10:4);
			x:= x+ 0.2;
		end;
		writeln('-----------------------');
		readln;
end.	