program IPK;
type
	isidata= record
		nama: string;
		nim: integer;
		ipk: real;
			end;
var
	i,n,nim1,nim2: integer;
	mhs: array[1..100] of isidata;
	min,max: real;
	nama1,nama2: string;
	procedure datamhs;
		var
			i: integer;
		begin
			writeln('Data Mahasiswa Dengan IPK Diatas 2.0');
			i:= 1;
			while (i<=n) do
				begin
					if (mhs[i].ipk>2) then
						begin
							writeln('Mahasiswa Ke- ',i);
							writeln('Nama: ',mhs[i].nama);
							writeln('Nim : ',mhs[i].nim);
							writeln('IPK : ',mhs[i].ipk:2:1);
						end;
					i:=i+1;
				end;
		end;
			
	procedure min_max (x:integer);
		var
			j,k: integer;
		begin	
			max:=0;
			j:=1;
			while (j<=n) do
				begin
					if (mhs[j].ipk>max) then
						begin
							max:= mhs[j].ipk;
							nama1:= mhs[j].nama;
							nim1:= mhs[j].nim;
						end;
					j:=j+1;
				end;
			min:= 9999;
			k:=1;
			while (k<=n) do
				begin
					if (mhs[k].ipk<min) then
						begin
							min:= mhs[k].ipk;
							nama2:= mhs[k].nama;
							nim2:= mhs[k].nim;
						end;
					k:=k+1;
				end
		end;

begin
	write('Masukan Banyak Mahasiswa: ');
	readln(n);
	i:= 1;
	while (i<=n) do
		begin
			write('Masukan Nama: ');
			readln(mhs[i].nama);
			write('Masukan Nim: ');
			readln(mhs[i].nim);
			write('Masukan IPK: ');
			readln(mhs[i].ipk);
		i:=i+1;
		end;
	datamhs;
	writeln();
	min_max(n);
		writeln('Mahasiswa Dengan IPK Tertinggi: ');
			writeln('Dengan IPK: ',max:2:1);
			writeln('Nama:',nama1);
			writeln('Nim: ',nim1);
		writeln('Mahasiswa Dengan IPK Terendah: ');
			writeln('Dengan IPK: ',min:2:1);
			writeln('Nama:',nama2);
			writeln('Nim: ',nim2);
end.
	