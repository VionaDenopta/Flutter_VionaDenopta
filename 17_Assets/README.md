**ASSETS**
1.File yang di bundled dan di deployed bersamaan dengan aplikasi
2.tipe-tipe assets:
	-static data(JSON files),icons,images,dan font file(ttf)
#Menentukan assets
1.flutter menggunakan pubspec.yaml
2.pubspec.yaml terletak pada root project,untuk mengidentifikasi assets yang dibutuhkan aplikasi
3.gunakan karakter "/" untuk memasukka semua assets dibawah satu directory name

**Images**
1.image atau gambar akan membuat tampilan aplikasi menjadi lebih menarik
2.flutter mendukung format gambar :
	-JPEG
	-WebP
	-GIF
	-Animated web/GIF
	-PNG
	-BMP
	-WBMP
3.menampilkan gambar dari project asset dan internet

#Loading images
1.gunakan widget image
2.membutuhkan properti image dengan nilai class AssetImage()
3.Menggunakan method image.asset,mendapatkan image yang sudah ditambahkan dalm project
4.Menggunakan method image.network, mendapatkan data image melalui internet dengan menggunakan string urlnya

**font**
1.penggunaan font dengan style tertentu akan menjadi keunikan pada aplikasi
2.penentuan font yang mau dipakai biasanya oleh UI designer
3.penerapan font menggunakan custom font atau dari package

#custom font
cara menggunakan custom font
1.cari dan download font(Ex.https://fonts.google.com/)
2.Import file.ttf
3.Daftarkan font di pubspec.yaml
4.mengatur font sebagai dafult
5.gunakan font di spesifik widget

#font dari packkage
1.tambahkan package google_fonts di dependencies
2.import package di file dart
3.gunakan font dengan memanggil googlefonts.namaFont()

**APLIKASI TASK MANAGEMENT (Continue)**
#menambahkan image
todo 23: menambahkan image pada empty_task_screen.dart
	24:membuat profile picture di profile sheet.dart,menggunakan widget CircleAvatar
	25:menambahkan font pada setiap text
	26:(profile_sheet.dart) menambahkan konten lain
	27:(empty_task_screen.dart) menambahkan text di bawah image empty screen






