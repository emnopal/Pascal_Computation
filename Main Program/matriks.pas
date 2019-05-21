program matriks;

// Variabel "Matriks" A, B dan C buat menyatakan Matriksnya
// Variabel i dan j untuk deret 1 sampai 3

var 
  a,b,c,n: array[1..3,1..3] of integer;
  i,j,k: integer;

begin

// Matriks A
// Input dan Definisi Nilai Matriks A

  for i:=1 to 3 do
  begin
    for j:=1 to 3 do
      begin
        write('a[',i,',',j,'] = ');
        readln(a[i,j]);
      end;
  end;

// Ngerapihin Nilai Matriks A

  write('a = ');
  for i:=1 to 3 do
  begin
    if (i <> 1) then write('    ');
    for j:=1 to 3 do
      begin 
        write(a[i,j],'  ');
      end;
    writeln();
  end;

// Matriks B
// Input dan Definisi Nilai Matriks B

  for i:=1 to 3 do
  begin
    for j:=1 to 3 do
      begin
        write('b[',i,',',j,'] = ');
        readln(b[i,j]);
      end;
  end;

// Ngerapihin Nilai Matriks B

  write('b = ');
  for i:=1 to 3 do
  begin 
    if (i <> 1) then write('    ');
      for j:=1 to 3 do
        begin
          write(b[i,j],'  ');
        end;
    writeln();
  end;

// Matriks Hasil Penjumlahan
// Definisi dari Matriks hasil Penjumlahan antara Matriks A dan Matriks B

  for i:=1 to 3 do
  begin
    for j:=1 to 3 do
      begin
        c[i,j]:=a[i,j]+b[i,j];
      end;
  end;

// Ngerapihin nilai Matriks C

  write('Penjumlahan = ');
  for i:=1 to 3 do
  begin 
    if (i <> 1) then write('              ');
    for j:=1 to 3 do
      begin
        write(c[i,j],'  ');
      end;
    writeln();
  end;

// Matriks Hasil Pengurangan
// Definisi dari Matriks hasil Penjumlahan antara Matriks A dan Matriks B

  for i:=1 to 3 do
  begin
    for j:=1 to 3 do
      begin
        c[i,j]:=a[i,j]-b[i,j];
      end;
  end;

// Ngerapihin nilai Matriks D

  write('Pengurangan = ');
  for i:=1 to 3 do
  begin 
    if (i <> 1) then write('              ');
    for j:=1 to 3 do
      begin
        write(c[i,j],'  ');
      end;
    writeln();
  end;
  
// Matriks Hasil Perkalian
// Definisi dari Matriks hasil Perkalian antara Matriks A dan Matriks B

for i:=1 to 3 do
for j:=1 to 3 do
for k:=1 to 3 do
n[i,j]:=n[i,j]+a[i,j]*b[j,k];

// Ngerapihin nilai Matriks K

  write('Perkalian = ');
  for i:=1 to 3 do
  begin 
    if (i <> 1) then write('            ');
    for j:=1 to 3 do
      begin
        write(n[i,j],'  ');
      end;
    writeln();
  end;

end.
