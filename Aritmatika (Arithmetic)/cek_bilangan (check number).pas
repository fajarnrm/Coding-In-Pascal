program cek_bilangan;
uses crt;
const
    konstanta1='bilangan1 tidak habis dibagi 2 dan lebih besar dari bilangan2';
    konstanta2='bilangan1 <=bilangan2 atau habis dibagi dengan 2';
    phi=3.14;
var
    bilangan1,bilangan2:integer;
    luas1:real;
    luas2:integer;
begin
        clrscr;
        write('masukan bilangan pertama: ');
        readln(bilangan1);
        write('masukan bilangan kedua: ');
        readln(bilangan2);
        if (((bilangan1 mod 2) > 0) and (bilangan1 > bilangan2))then
        begin
             writeln(konstanta1);
             luas1 := phi*bilangan1*bilangan1;
             writeln('luas1= ',luas1:4:0);
             readln;
           end
        else
           begin
             writeln(konstanta2);
             luas2 := bilangan2*bilangan2;
             writeln('luas2= ',luas2);
             readln;
           end;
end. {jika kita memasukan billangan ganjil pada variabel bilangan1 dan
bilangan1>bilangan2 maka program akan menjalankan konstanta1. jika kita
memasukan nilai bilangan1<bilangan2 maka program akan menjalankan konstanta2.
jika kita memasukan nilai bilangan1=bilangan2 maka program akan menjalankan
konstanta2.}