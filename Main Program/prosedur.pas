// Contoh Prosedur 
// Bikin Luas Segitiga

program prosedur;

// Local Variable
// Luas Segitiga
function luas_segitiga(a,t: real): real;
begin
  luas_segitiga:=a*t/2;
end;
// Keliling Segitiga Siku-Siku
function keliling_segitiga_sikusiku(a,t: real): real;
begin
  keliling_segitiga_sikusiku:=a+t+sqrt(a*a + t*t);
end;

// Prosedur
procedure menghitung_segitiga();
// Local Variable
var
alas,tinggi:real;
// Program Pembantu
begin
  write('Alas = '); readln(alas);
  write('Tinggi = '); readln(tinggi);
  writeln('Luas Segitiga = ', luas_segitiga(alas,tinggi):0:1);
  writeln('Keliling Segitiga Siku-Siku = ', keliling_segitiga_sikusiku(alas,tinggi):0:1);
  readln;
end;

// Pemanggilan Prosedur
begin
  menghitung_segitiga();
  menghitung_segitiga();
end.