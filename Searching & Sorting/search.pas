program search;
type 
	tabint= array [1..5] of string;
var
	tabel: tabint;
	N: integer;
	procedure seqsearch (T:tabint; N: integer);
	var
		i: integer;
	begin
		i:= 5;
		repeat
			if (tabel[i]='X') then
				writeln('Array Ke ',i);
			i:= i-1;
		until(i=0);
	end;
begin
	tabel[1]:= 'X';
	tabel[2]:= 'K';
	tabel[3]:= 'Y';
	tabel[4]:= 'X';
	tabel[5]:= 'X';
	N:= length(tabel);
	seqsearch(Tabel,N);
	readln;
end.