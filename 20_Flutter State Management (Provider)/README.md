**FLUTTER GLOBAL STATE MANAGEMENT**

**State**
-data yang dapat di baca saat pembuatan widget
-dapat berubah saat widget sedang aktif
-hanya dimiliki oleh **statefulwidget**
-------------------------------------------------------
Global state di perlukan agar antara widget dapat memanfaatkan stste yang sama dengan mudah

##Manfaatkan state
-di buat sebagai property dari class
-digunakan pada widget saat build

var number=0;
text('$nuber);

#mengubah state
-menggunakan method setState

**Global State**
State biasa yang dapat digunakanpada seluruh widget
#provider
-state management
-perlu di-install agar dapat digunakan

#instalasi provider
-menambahkan package provider pada bagian dependencies dalam file pubspec.yaml
-jalankan perintah **flutter pub get**

#membuat state provider
-buat file bernama contact.dart
-definisikan state dalam bentuk class

#Mendaftarkan state provider
-import dalam file main.dart
-daftarkan pada runApp dengan MultiProvider

#menggunakan state dari provider
-simpan provider dalam varaiable
-ambil data dari provider melalui getter




