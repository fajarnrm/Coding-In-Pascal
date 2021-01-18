Program HitungUangMakanSiang;
type 
	DPeg = record
		nik, nama: String;
		hariHadir: integer;
		uangMaksi: longint; 
			end;
var
	TPeg: array [1..30] of DPeg;
	n: integer;
	total: longint;
	procedure IsiData(n: integer);
		var
			i: integer;
		begin
			i:= 1;
			repeat
				write('NIK Pegawai: ');
				readln(TPeg[i].nik);
				write('Nama Pegawai: ');
				readln(TPeg[i].nama);
				write('Hari Hadir: ');
				readln(TPeg[i].hariHadir);
			i:=i+1;
			until(i=n+1);
		end;

	procedure HitungUangMaksi(n: integer);
		var
			i: integer;
		begin
		writeln('_______________________________________________________________');
				writeln('[]   NIK   []    Nama    []  Hari Hadir  []  Uang Makan Siang  []');
		writeln('_______________________________________________________________');	
			i:= 1;
			repeat
				total:= TPeg[i].hariHadir*20000;
				write('   ',TPeg[i].nik);
				write('     ',TPeg[i].nama);
				write('           ',TPeg[i].hariHadir);
				writeln('               ',total);
				writeln('_______________________________________________________________');
			i:=i+1;
			until(i=n+1);
		end;
begin
	write('Jumlah Pegawai: ');
	readln(n);
	IsiData(n);
	writeln();
	HitungUangMaksi(n);
end.	
