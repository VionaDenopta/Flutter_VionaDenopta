**FLUTTER NAVIGATION**
berpindah dari halaman satu ke halaman lain

**Navigation dasar**
-Berpindah halaman menggunakan Navigator.push (GO)-->
-Kembali ke halaman sebelumnya menggunakan navigator.pop() <--(back)

#Mengirim data ke halaman baru
menggunakan parameter pada constructor halaman

**Navigation dengan named Routes**
Tiap halaman memiliki alamat yang disebut route

-berpindah halaman menggunakan **navigator.pushNamed()** -->go
-kembali ke halaman sebelumnya menggunakan **navigator.pop()** <--back

#Mendaftarkan Route
-tambahkan initialRoute dan Routes pada MaterialApp
-tiap ROUTE adalah fungsi yang membentuk halaman
#mengirim data ke halaman baru
menggunakan arguments saat melakukan pushNamed
