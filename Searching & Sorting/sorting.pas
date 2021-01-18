program sorting;
const
	nMax= 50;
var
	temp: integer;
	tabint: array [1..nMax] of integer;

	procedure IsiData;
		var
			i: integer;
		begin
			i:= 1;
			repeat
				write('Nilai ke ',i,' : ');
				readln(tabint[i]);
			i:=i+1;
			until(i>nMax);
		end;
	procedure mengurutkan;
	var
		i,j: integer;
	begin
		for i:= 1 to nMax-1 do
			for j:= 1 to nMax-1 do
				if (tabint[j]>tabint[j+1]) then
				begin
					temp:= tabint[j];
					tabint[j]:= tabint[j+1];
					tabint[j+1]:= temp;
				end;
	end;

	procedure menampikan;
	var
		j: integer;
	begin
			for j:=46 to nMax do
			begin
				writeln('Nilai Tertinggi: ',tabint[j]);
			end;
	end;
begin
	IsiData;
	mengurutkan;
	menampikan;
	readln;
end.