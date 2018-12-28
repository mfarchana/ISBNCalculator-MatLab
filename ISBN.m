%***********************************************************
% MENU PILIHAN
%***********************************************************

clear;
clc;

disp('***********************************************************');
fprintf('\t\t\t\t\tISBN Calculator\n');
fprintf('\t\t\t\t\t@AanUser\n');
disp('***********************************************************');

disp('Menu yang tersedia');
disp('1. Cek Digit & Validasi ISBN-10');
disp('2. Cek Digit & Validasi ISBN-13');
disp('3. Convert ISBN-10 ke ISBN-13');
disp('');
pilih=input('Pilihan Anda (1-3): ');
switch pilih
case 1
   disp('Masukan ISBN-10 : ');  
   isbn10 = [];
   
    for i = 1:10
   fprintf("Digit ke-%d = ",i);
   n = input('');
   isbn10 = [isbn10 n];
    end
    
    jml = 0;
    k=1;
    while k <= 10
        jml = jml+(k*isbn10(k));
        k = k+1;
    end
    
    if jml%11 == 0
        fprintf(" . : Proses Validasi : . \n >");
        %Proses Kali
        k=1;
        while k <= 10
        if k == 10
        fprintf("(%d x %d)",k,isbn10(k));
        k = k+1;
        else
        fprintf("(%d x %d)\t+\t",k,isbn10(k));
        k = k+1;
        end
        end
        fprintf('\n > ');
        %Proses tambah
        k=1;
        while k <= 10
        if k == 10
            fprintf("%d",k*isbn10(k));
            k = k+1;
        else
            fprintf("%d",k*isbn10(k));
            fprintf("\t\t+\t");
            k = k+1;
        end
        end
          sum = 0;
          for z=1:9
                sum = sum+(z*isbn10(z));
          end
        fprintf("\nJumlah = %d\n",jml);
        fprintf("Hasil Modulo %d mod %d = %d",jml,11,mod(jml,11));
        fprintf("\n\nSelamat ISBN VALID!\n\n");
        
        fprintf(" . : Cek Digit : . \n >");
        %Proses Kali
        k=1;
        while k <= 9
        if k == 9
            fprintf("(%d x %d)",k,isbn10(k));
            k = k+1;
        else
            fprintf("(%d x %d)\t+\t",k,isbn10(k));
            k = k+1;
        end
        end
        fprintf('\n > ');
        %Proses Tambah
        k=1;
        while k <= 9
        if k == 9
        fprintf("%d",k*isbn10(k));
        k = k+1;
        else
        fprintf("%d",k*isbn10(k));
        fprintf("\t\t+\t");
        k = k+1;
        end
        end
        
        fprintf("\nJumlah = %d\n",sum);
        fprintf("Hasil Modulo %d mod %d = %d",sum,11,mod(sum,11));
        fprintf("\n\nCek Digitnya = %d\n\n",mod(sum,11));
    else
        fprintf("\nJumlah = %d\n",jml)
        fprintf("Hasil Modulo %d mod %d = %d",jml,11,mod(jml,11))
        fprintf("\n\nMaaf, ISBN tidak VALID\n")
    end
    
case 2
   disp('Masukan ISBN-13 : ');  
   isbn13 = [];
   
    for i = 1:13
    fprintf("Digit ke-%d = ",i);
    n2 = input('');
    isbn13 = [isbn13 n2];
    end
    
    jml = 0;
    k=1;
    while k <= 13
        if k < 13 
        jml = jml +((1*isbn13(k))+(3*isbn13(k+1)));
        else
        jml = jml +(1*isbn13(k));
        end
        k = k+2;
    end
   
    if jml%10 == 0
        sum = 0;
        z=1;
        while z <= 13
            if z < 13 
                sum = sum +((1*isbn13(z))+(3*isbn13(z+1)));
            end
            if z == 13
                
            end
        z = z+2;
        end
     
        fprintf(" . : Proses Validasi : . \n >");
        %Proses Kali
        k=1;
    while k <= 13
        if k < 13
            fprintf("(1 x %d)+(3 x %d)+",isbn13(k),isbn13(k+1));
        else
            fprintf("(1 x %d)",isbn13(k));
        end
        k = k+2;
    end
    fprintf('\n > ');
        %Proses Tambah
        k=1;
    while k <= 13
        if k < 13
            if mod(k,2)==1
               fprintf("%d",1*isbn13(k));
            end
            fprintf("\t +\t");
            fprintf("%d",3*isbn13(k+1));
            fprintf("\t +\t");
            k = k+2;
        else
            fprintf("%d",isbn13(k));
            k = k+2;
        end
    end
        fprintf("\nJumlah = %d\n",jml);
        fprintf("Hasil Modulo %d mod %d = %d",jml,10,mod(jml,10));
        fprintf("\n\nSelamat ISBN VALID!\n\n");        
        fprintf(" . : Cek Digit : . \n >");
        k=1;
        %Proses Kali
        while k < 13
        if k < 11
            fprintf("(1 x %d)+(3 x %d)+",isbn13(k),isbn13(k+1));
        else
            fprintf("(1 x %d)+(3 x %d)",isbn13(k),isbn13(k+1));
        end
        
        k = k+2;
    end
    fprintf('\n > ');
        %Proses Tambah
        k=1;
    while k < 12    
            if mod(k,2)==1
               fprintf("%d",1*isbn13(k));
               fprintf("\t +\t");
            end
            if k<11
            fprintf("%d",3*isbn13(k+1));
            fprintf("\t +\t");
            else
            fprintf("%d",3*isbn13(k+1));    
            end
            
            k = k+2;    
    end
        fprintf("\nJumlah = %d\n",sum);
        fprintf("Hasil Modulo %d mod %d = %d",sum,10,mod(sum,10));
        fprintf("\nCek Digit / Karakter Uji : 10 - %d = %d",mod(sum,10),10-mod(sum,10));
        fprintf("\n\nMaka Cek Digitnya = %d\n\n",10-mod(sum,10));        
    else
        fprintf("Jumlah = %d\n",jml)
        fprintf("Hasil Modulo %d mod %d = %d",jml,10,mod(jml,10))
        fprintf("\n\nMaaf, ISBN tidak VALID\n")
    end
    
        
   case 3
   disp('Masukan ISBN-10 : ');  
   isbn10 = [];
   for i = 1:10
   fprintf("Digit ke-%d = ",i);
   n = input('');
   isbn10 = [isbn10 n];
   end
   jmlawal = 38;
   fprintf("\nISBN-13\t : 978-");
   i=1;
   while i <= 10
       if i<=8
           fprintf("%d%d%d-",isbn10(i),isbn10(i+1),isbn10(i+2));
       else
           fprintf("X");
       end
       i = i + 3;
   end
   jumlah1 = 0;
   jumlah2 = 0;
   for i=1:9
    if mod(i,2) == 0
        jumlah2 = jumlah2+(1*isbn10(i));
    else
        jumlah1 = jumlah1+(3*isbn10(i));
    end
   end
   
   
   %Proses Kali
   %Awal 978
   fprintf("\n > (1 x 9)+(3 x 7)+(1 x 8)+");
        k=1;
    while k <= 9
        if k < 9
            fprintf("(3 x %d)+(1 x %d)+",isbn10(k),isbn10(k+1));
        else
            fprintf("(3 x %d)",isbn10(k));
        end
        k = k+2;
    end
    fprintf('\n > ');
        %Proses Tambah
        %Awal 978
        fprintf("9\t  +\t21\t  +\t8\t  +\t");
        k=1;
    while k <= 9
        if k < 9
            if mod(k,2)==1
               fprintf("%d",3*isbn10(k));
            end
            fprintf("\t  +\t");
            fprintf("%d",1*isbn10(k+1));
            fprintf("\t +\t");
            k = k+2;
        else
            fprintf("%d",3*isbn10(k));
            k = k+2;
        end
    end
   
   
   
   hasil = jumlah1+jumlah2+jmlawal;
   
   
   fprintf("\nJumlah = %d\n",hasil);
   fprintf("Hasil Modulo %d mod %d = %d",hasil,10,mod(hasil,10));
   fprintf("\nCek Digit / Karakter Uji : 10 - %d = %d",mod(hasil,10),10-mod(hasil,10));
   fprintf("\n\nISBN-13\t : 978-");
   i=1;
   while i <= 10
       if i<=8
           fprintf("%d%d%d-",isbn10(i),isbn10(i+1),isbn10(i+2));
       else
           fprintf("%d",10-mod(hasil,10));
       end
       i = i + 3;
   end
   fprintf("\n\n");
   end     