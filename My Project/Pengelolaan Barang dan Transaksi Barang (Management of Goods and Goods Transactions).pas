program tubes;
type 
	jenis =  record
			kode,jumlah: integer;
			nama,tglkadaluarsa: string;
			hargasatuan: longint;
		end;
type 
	barang = array [1..100] of jenis;
var
	tipe: barang;
	Karakter,karakter2: char;
	i,idx,data,kode2,jumlah: integer;
	harga: longint;
	user,pasword,beli: string;
	fix,exit,exit1,exit2,forsearch,cekbarang: boolean;

function search (kode2: integer; tipe2: barang): boolean;
begin
	i:= 1;
	fix:= false;
	while (i<=data) and (fix<>true) do
	begin
		if (kode2=tipe2[i].kode) then
			begin
				fix:= true;
				idx:= i;
			end
		else
			i:= i+1;
	end;
	search:= fix;
end;

procedure isidatabarang (data: integer);
begin
	if (karakter2='1') then
	i:= 1;
	repeat
		write('Kode Barang       : ');
		readln(tipe[i].kode);
		write('Nama Barang       : ');
		readln(tipe[i].nama);
		write('Jumlah Barang     : ');
		readln(tipe[i].jumlah);
		write('Harga Satuan      : Rp.');
		readln(tipe[i].hargasatuan);
		write('Tanggal Kadaluarsa: ');
		readln(tipe[i].tglkadaluarsa);
		writeln('=====================');
	i:=i+1;
	until(i>data);
	cekbarang:= true;
end;

procedure menampilkandatabarang (kode2: integer);
begin
	i:=1;
	if (karakter2='1') then
		begin
			repeat
				writeln('=============== Data Ke-',i,' ===============');
				writeln('Kode Barang        : ',tipe[i].kode);
				writeln('Nama Barang        : ',tipe[i].nama);
				writeln('Jumlah Barang      : ',tipe[i].jumlah);
				writeln('Harga Satuan       : Rp.',tipe[i].hargasatuan);
				writeln();
				i:= i+1;
			until(i>data);
		end
	else if (karakter2='2') then
		begin
			forsearch:= search(kode2,tipe);
			if (forsearch=true) then
				begin
					writeln('Kode Barang        : ',tipe[idx].kode);
					writeln('Nama Barang        : ',tipe[idx].nama);
					writeln('Jumlah Barang      : ',tipe[idx].jumlah);
					writeln('Harga Satuan       : Rp.',tipe[idx].hargasatuan);
					writeln('Tanggal Kadaluarsa : ',tipe[idx].tglkadaluarsa);
				end
			else
				writeln('Barang Dengan Kode Tersebut Tidak Tersedia');
		end;
end;

procedure ubahdatabarang (kode2: integer);
begin
	i:=1;
	forsearch:= search(kode2,tipe);
	if (forsearch=true) then
		begin
			writeln('Kode Barang Yang Akan Diubah: ',tipe[idx].kode);
			write('Kode Barang Baru        : ');
			readln(tipe[idx].kode);
			write('Nama Barang Baru        : ');
			readln(tipe[idx].nama);
			write('Jumlah Barang Baru      : ');
			readln(tipe[idx].jumlah);
			write('Harga Satuan Baru       : Rp.');
			readln(tipe[idx].hargasatuan);
			write('Tanggal Kadaluarsa Baru : ');
			readln(tipe[idx].tglkadaluarsa);
			writeln('Data Barang Sudah Diubah');
		end
	else
		writeln('Barang Tidak Tersedia');
end;

procedure hapusdatabarang (kode2: integer);
begin
	i:= 1;
	forsearch:= search(kode2,tipe);
	if (forsearch=true) then
		begin
		i:= idx;
		repeat
			tipe[i].kode := tipe[i+1].kode;
			tipe[i].nama := tipe[i+1].nama;
			tipe[i].jumlah := tipe[i+1].jumlah;
			tipe[i].hargasatuan := tipe[i+1].hargasatuan;
			tipe[i].tglkadaluarsa := tipe[i+1].tglkadaluarsa;	
			i:= i+1;
		until(i>data-1);
		data:= data-1;
		end
	else
		writeln('Barang Tidak Tersedia');
end;

procedure caridatabarang (kode2: integer);
begin
	forsearch:= search(kode2,tipe);
	if (forsearch=true) then
	begin
		writeln('Barang tersedia');
		writeln('Apakan Barang Dari Kode Tersebut Ingin Ditampilkan?');
		writeln('1. Ya');
		writeln('2. Tidak');
		write('Pilihan: ');
		readln(karakter2);
		if (karakter2='1') then
			begin
				forsearch:= search(kode2,tipe);
				if (forsearch=true) then
					begin
						writeln('Kode Barang        : ',tipe[idx].kode);
						writeln('Nama Barang        : ',tipe[idx].nama);
						writeln('Jumlah Barang      : ',tipe[idx].jumlah);
						writeln('Harga Satuan       : Rp.',tipe[idx].hargasatuan);
						writeln('Tanggal Kadaluarsa : ',tipe[idx].tglkadaluarsa);
						writeln();
					end;
			end
		else if (karakter2='2') then
			writeln()
	end
	else
		writeln('Barang Tidak Tersedia');
end;

procedure urutkandatabarang (data: integer; karakter2: char);
var
	i,j,v_kode,v_jumlah,mark: integer;
	v_harga: longint;
	v_tanggal,v_nama: string;
begin
	i:= 1;
	if (karakter2='1') then
	begin
		while (i<data) do
		begin
			mark:= i;
			j:=i+1;
			while (j<=data) do
				begin
					if (tipe[j].kode < tipe[mark].kode) then
						mark:= j;					
				j:=j+1;
				end;
			v_kode:= tipe[i].kode;
			v_nama:= tipe[i].nama;
			v_harga:= tipe[i].hargasatuan;
			v_jumlah:= tipe[i].jumlah;
			v_tanggal:= tipe[i].tglkadaluarsa;

			tipe[i].kode:= tipe[mark].kode;
			tipe[i].nama:= tipe[mark].nama;
			tipe[i].hargasatuan:= tipe[mark].hargasatuan; 
			tipe[i].jumlah:= tipe[mark].jumlah;
			tipe[i].tglkadaluarsa:= tipe[mark].tglkadaluarsa;

			tipe[mark].kode:= v_kode;
			tipe[mark].nama:= v_nama;
			tipe[mark].hargasatuan:= v_harga; 
			tipe[mark].jumlah:= v_jumlah;
			tipe[mark].tglkadaluarsa:= v_tanggal;
		i:=i+1;
		end;
		writeln('Data Sudah Diurutkan Berdasarkan Kode');
		writeln;
	end
	else if (karakter2='2') then
	begin
		while (i<data) do
		begin
			mark:= i;
			j:=i+1;
			while (j<=data) do
				begin
					if (tipe[j].hargasatuan < tipe[mark].hargasatuan) then
						mark:= j;					
				j:=j+1;
				end;
			v_kode:= tipe[i].kode;
			v_nama:= tipe[i].nama;
			v_harga:= tipe[i].hargasatuan;
			v_jumlah:= tipe[i].jumlah;
			v_tanggal:= tipe[i].tglkadaluarsa;

			tipe[i].kode:= tipe[mark].kode;
			tipe[i].nama:= tipe[mark].nama;
			tipe[i].hargasatuan:= tipe[mark].hargasatuan; 
			tipe[i].jumlah:= tipe[mark].jumlah;
			tipe[i].tglkadaluarsa:= tipe[mark].tglkadaluarsa;

			tipe[mark].kode:= v_kode;
			tipe[mark].nama:= v_nama;
			tipe[mark].hargasatuan:= v_harga; 
			tipe[mark].jumlah:= v_jumlah;
			tipe[mark].tglkadaluarsa:= v_tanggal;
		i:=i+1;
		end;
		writeln('Data Sudah Diurutkan Berdasarkan Harga');
		writeln;
	end;
end;	

procedure cariharga (harga: longint);
begin
	i:= 1;
	writeln('1. Harga Dibawah Rp.',harga);
	writeln('2. Harga  Diatas Rp.',harga);
	write('Jawaban: ');
	readln(karakter2);
	if (karakter2='1') then
		begin
		writeln('Stok Barang Dengan harga Dibawah Rp.',harga);
		repeat 
			if (harga>= tipe[i].hargasatuan)then
			begin
				writeln('Kode Barang        : ',tipe[i].kode);
				writeln('Nama Barang        : ',tipe[i].nama);
				writeln('Jumlah Barang      : ',tipe[i].jumlah);
				writeln('Harga Satuan       : Rp.',tipe[i].hargasatuan);
				writeln('Tanggal Kadaluarsa : ',tipe[i].tglkadaluarsa);
				writeln;	
			end;
		i:=i+1;
		until (i>data);
		end
	else if (Karakter2='2') then
		begin
		writeln('Stok Barang Dengan harga Diatas Rp.',harga);
		repeat 
			if (harga<= tipe[i].hargasatuan)then
			begin
				writeln('Kode Barang        : ',tipe[i].kode);
				writeln('Nama Barang        : ',tipe[i].nama);
				writeln('Jumlah Barang      : ',tipe[i].jumlah);
				writeln('Harga Satuan       : Rp.',tipe[i].hargasatuan);
				writeln('Tanggal Kadaluarsa : ',tipe[i].tglkadaluarsa);
				writeln;	
			end;
		i:=i+1;
		until (i>data);
		end;
end;

procedure menampilkan0 (kode2: integer; tipe2: barang);
var
	bukti: boolean;
begin
	begin
	i:= 1;
	bukti:= true;
	while (i<=data) do
	begin
		if (kode2=tipe2[i].jumlah) then
			begin
			writeln('Data Barang Ke-',i);
			writeln('Kode Barang        : ',tipe[i].kode);
			writeln('Nama Barang        : ',tipe[i].nama);
			writeln('Jumlah Barang      : ',tipe[i].jumlah);
			writeln('Harga Satuan       : Rp.',tipe[i].hargasatuan);
			writeln('Tanggal Kadaluarsa : ',tipe[i].tglkadaluarsa);
			writeln();
			bukti:= false;	
			end;
	i:= i+1;
	end;
	if (bukti=true) then
		writeln('Barang Tidak Tersedia');
	end;
end;

procedure belibarang ;
var
	cek2: boolean;
	harga2: longint;
	karakter3: char;
	j: integer;
begin
	cek2 := true;
	i:=1;
	writeln;
	write('Barang/Makanan Apa Yang ingin Anda Beli?: ');
	readln(beli);
	repeat
			if (beli=tipe[i].nama) then
			begin
				cek2:= false;
				j:= i;
			end
			else if (beli<>tipe[i].nama) then
				cek2:= true;	
		i:=i+1;
	until(i>data) or (cek2=false);

		if (cek2=false) then
			begin
				writeln('Barang Dengan Nama: ',beli,' Tersedia Dengan Rincian: ');
				writeln('Harga             : Rp.',tipe[j].hargasatuan);
				writeln('Banyak            : ',tipe[j].jumlah,' Buah');
				writeln('Tanggal Kadaluarsa: ',tipe[j].tglkadaluarsa);
				writeln('Kode Barang       : ',tipe[j].kode);
				writeln;
				repeat
					write('Berapa Banyak ',beli,' Yang Anda Beli?: ');
					readln(jumlah);
					if (jumlah>tipe[j].jumlah) then
				 		writeln('Pesanan Melebihi Jumlah Yang Tersedia');
				until(jumlah<=tipe[j].jumlah);
				harga2:= jumlah*tipe[j].hargasatuan;
				writeln('Anda Akan Membeli Barang/Makanan ',beli,' Dengan Total Harga Rp.',harga2);
				writeln('Apakan Anda Setuju? (Y/T)');
				readln(karakter3);
				if (karakter3='Y') then
				begin
					tipe[j].jumlah:= tipe[j].jumlah-jumlah;
					writeln('Transaksi Berhasil. Anda Sudah Membeli Barang/Makanan Tersebut');
					writeln('Pengiriman Akan Segera Kami Proses');
				end
				else if (karakter3='T') then
					writeln('Transaksi Dibatalkan')
				else 
					writeln('Respon Salah');
				if (tipe[j].jumlah=0) and (karakter3='Y') then
					begin
						kode2:= tipe[j].kode;
						hapusdatabarang(kode2);
					end;
			end
		else
			writeln('Barang/Makanan Tersebut Tidak Tersedia');			
end;
//Program Utama
begin
	cekbarang:= false;
	repeat
		exit:= true;
		writeln('=======================');
		writeln('-----------------------');
		writeln('        FN SHOP        ');
		writeln('-----------------------');
		writeln(' Masuk Sebagai:        ');
		writeln(' 1. Admin              ');
		writeln(' 2. Kasir				');
		writeln('=======================');
		writeln(' E For Exit            ');
		writeln('=======================');
		write('Jawaban: ');
		readln(karakter2);
		if (karakter2='1') then
		begin	
			exit1:= true;
			write('Masukan Username: ');
			readln(user);
			write('Masukan Pasword : ');
			readln(pasword);
			writeln('----------------');
			if (user<>'Fajar') and (pasword<>'user') then
			begin
				repeat
				writeln('Username dan Pasword yang Anda Masukan Salah');
				write('Kembali Ke Menu (Y/T): ');
				readln(karakter2);
				if (karakter2='t') or (Karakter2='T') then
				begin
					exit1:= true;
					write('Masukan Username: ');
					readln(user);
					write('Masukan Pasword : ');
					readln(pasword);
					writeln;
				end
				else if (karakter2='y') or (karakter2='Y') then
				begin
					user:= 'Fajar';
					pasword:= 'user';
					exit1:= false;
				end;
				until(user='Fajar') and (pasword='user');
			end;
			if (user='Fajar') and (pasword='user') then
			begin
				while (exit1=true) do
				begin
					writeln('-FN Shop-');
					writeln('Pengeloaan Admin');
					writeln('Pilihan: ');
					writeln('1. Input Data');
					writeln('2. Ubah Data'); // cari data berdasarkan kode untuk mengubah data
					writeln('3. Hapus Data');  // cari data berdasarkan kode untuk menghapus data
					writeln('4. Cari Data');  // cari berdasarkan kode
					writeln('5. Urutkan Data'); // urut berdasarkan kode dan harga
					writeln('6. Cari Harga'); // inputan menjadi sekat, pilhan antara atas dan bawah
					writeln('7. Tampilkan Data');
					writeln('8. Keluar');	
					write('Pilih Inputan No: ');;
					readln(Karakter);
					writeln();
						case Karakter of 
							'1': begin
									write('Masukan Jumlah Data Yang Ingin Diinputkan: ');
									readln(data);
									isidatabarang(data);
								end;
							'2': begin
									if (cekbarang=true) then
									begin
										write('Tulis Kode Barang Yang Akan Diubah: ');
										readln(kode2);
										ubahdatabarang(kode2);
									end
									else
										writeln('Maaf Data Barang Belum Tersedia');
										writeln;
								end;
							'3': begin
									if (cekbarang=true) then
									begin
										write('Tulis Kode Barang Yang Akan Dihapus: ');
										readln(kode2);
										hapusdatabarang(kode2);
										writeln('Barang Dengan Kode: ',kode2,' Sudah Dihapus');
									end
									else
										writeln('Maaf Data Barang Belum Tersedia');
										writeln;
								end;
							'4': begin
									if (cekbarang=true) then
									begin
										write('Tulis Kode Barang Untuk Mencari Data: ');
										readln(kode2);
										caridatabarang(kode2);
									end
									else
										writeln('Maaf Data Barang Belum Tersedia');
										writeln;
								end;
							'5': begin
									if (cekbarang=true) then
									begin
										writeln('1. Kode Barang');
										writeln('2. Harga');
										write('Urutkan Data Berdasarkan: ');
										readln(karakter2);
											case karakter2 of
												'1': begin
														urutkandatabarang(data,karakter2);
													end;
												'2': begin
														urutkandatabarang(data,karakter2);
													end;
											end;
									end
									else
										writeln('Maaf Data Barang Belum Tersedia');
										writeln;
								end;
							'6': begin
									if (cekbarang=true) then
									begin
										write('Masukan Harga: ');
										readln(harga);
										cariharga(harga); 
									end
									else
										writeln('Maaf Data Barang Belum Tersedia');
										writeln;
								end;
							'7': begin
									if (cekbarang=true) then
									begin
										writeln('1. Semua Barang');
										writeln('2. Salah Satu Barang');
										write('Pilih Untuk Menampikan Data: ');
										readln(karakter2);
										if (karakter2='2') then
											begin
												write('Masukan Kode Barang Yang Ingin Ditampikan: ');
												readln(kode2);
											end;
										menampilkandatabarang (kode2);
									end
									else
										writeln('Maaf Data Barang Belum Tersedia');
										writeln;
								end;
							'8': begin
									exit1:= false;
								end;
						end;
				end;
			end;
		end
		else if (karakter2='2') then
		begin
		exit2:= true;	
		write('Masukan Nama Anda: ');
		readln(user);
			Repeat
				writeln;
				writeln('  -----Hai!!! ',user,'-----');
				writeln('- Selamat Datang Di FN Shop-');
				writeln('Stok Makanan dan Bahan Makanan');
				writeln('Pilihan: ');
				writeln('1. Cari Data');
				writeln('2. Cari Harga'); 
				writeln('3. Urutkan Data'); 
				writeln('4. Tampilkan Data');  
				writeln('5. Beli Barang'); 
				writeln('6. Tampilkan Barang Yang kosong');
				writeln('7. Keluar'); 
				write('Pilih Inputan No: ');;
				readln(Karakter);
				writeln();
					case Karakter of 
						'1': begin
								if (cekbarang=true) then
								begin
									write('Tulis Kode Barang Untuk Mencari Data: ');
									readln(kode2);
									caridatabarang(kode2);
								end
								else
									writeln('Maaf Data Barang Belum Tersedia');
									writeln;
							end;
						'2': begin
								if (cekbarang=true) then
								begin
									write('Masukan Harga: ');
									readln(harga);
									cariharga(harga); 
								end
								else
									writeln('Maaf Data Barang Belum Tersedia');
									writeln;
							end;
						'3': begin
								if (cekbarang=true) then
								begin
									writeln('1. Kode Barang');
									writeln('2. Harga');
									write('Urutkan Data Berdasarkan: ');
									readln(karakter2);
										case karakter2 of
											'1': begin
													urutkandatabarang(data,karakter2);
												end;
											'2': begin
													urutkandatabarang(data,karakter2);
												end;
										end;
								end
								else
									writeln('Maaf Data Barang Belum Tersedia');
									writeln;
							end;
						'4': begin
								if (cekbarang=true) then
								begin
									writeln('1. Semua Barang');
									writeln('2. Salah Satu Barang');
									write('Pilih Untuk Menampikan Data: ');
									readln(karakter2);
									if (karakter2='2') then
										begin
											write('Masukan Kode Barang Yang Ingin Ditampikan: ');
											readln(kode2);
										end;
									menampilkandatabarang (kode2);
								end
								else
									writeln('Maaf Data Barang Belum Tersedia');
									writeln;
							end;
						'5': begin
								if (cekbarang=true) then
								begin
									belibarang;
								end
								else
									writeln('Maaf Data Barang Belum Tersedia');
									writeln;
							end;
						'7': begin
								exit2:= false;
							end;
						'6': begin
								kode2:=0;
								menampilkan0(kode2,tipe);
							end;
					end;
			until(exit2=false);
		end
		else if(karakter2='E') then
		begin
			exit:= false;
		end;
	until(exit= false);
end.