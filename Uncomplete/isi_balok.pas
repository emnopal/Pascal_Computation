program isi_balok;
//const
    // kebanyakan nih max nya harusnya 3 aja cukup
    //max = 3;
type
    // penulisan indeks disini sepertinya kurang efisien
    //indeks = 1..max;
    kata = string[10];
    data = array [1..9] of Integer; // gabisa real, soalnya domain angka real kan banyak, bahkan antara 0 dan 1 pun banyak 
                                    // sekali domain angka real nya seperti 0.1, 0.2, 0.3, 0.4,.....
var
    panjang,lebar,tebal,isi: data;
    balok_ke: kata;
    i,n: integer; // variabel kode buat apa?
    // kode: integer;
begin
    balok_ke:= 'mulai';
    n:=0;
    repeat
        // kenapa readln dari panjang itu balok_ke sedangkan antara panjang dengan balok_ke mempunyai tipe variable yang berbeda
        // trus kenapa write panjang ada disini?
        // write('panjang = ');
        // readln(panjang[n]);
        begin
            if (balok_ke = 'selesai') AND (balok_ke = 'selesai')  then // Kurang " = " di balok_ke
                begin
                    n:=n+1;
                    val(balok_ke, panjang[n]);
                    // val(balok_ke, panjang[n], kata);
                   // write('panjang = ');
                   //readln(balok_ke);                    
                    write('panjang = ');
                    readln(panjang[n]);
                    write('Lebar = ');
                    readln(lebar[n]);
                    write('Tebal = ');
                    readln(tebal[n]);
                    isi[n]:=panjang[n]*lebar[n]*tebal[n];
                    // gimana mau nampilin? kalo variabel isi aja gak di deklarasiin hmmm....
                    write('Isi = ');
                    readln(isi[n])
                end //Tidak Perlu ";" diakhir end
            else
                begin
                    for i:=1 to n do writeln(isi[i],10:2);
                    //for i:=1 to n do writeln(1:5, isi[i]:10:2); 1:5 buat apaan? trus setelah string kenapa ":", harusnya "," kan
                end;
        end;
    until (balok_ke = 'selesai') or (balok_ke = 'SELESAI');
    //readln nya manee?
    readln;
end.

