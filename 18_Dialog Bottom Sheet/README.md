**DIALOG DAN BOTTOM SHEET**

**Aplikasi Task Management**
1.Menambahkan dan menghapus kegiatan
2.TODO 1: Membuat model untuk informasi yang mau di ismpan.buat folder models dan di dalammnya buat file dart baru task_model.dart
3	2: Membuat Task_screen,buat folder screens di dalamnya buat file dart baru task_screen.dart
4.	3: membuat empty screen,buat file dart baru empty_task_screen.dart di folder screens
5.	4:tambahkan package privider di pubspec.yaml
6.	5:membuat task manager, buat file dart baru task_manager.dart di dalam folfer models.tambahkan methd delete task dan addtask
7.	6:(main.dart) menmabhakan taskmanager sebagai provider
8.	7:(task_screen.dart) membuat fungsi buildtaskscreen,akan me-return antara task screen yang ada datanya atau yang kosong dan panggil fungsi nya di body
9.	8:membuat task item screen,buat file dart baru task_item_screen.dart di dalam folder screens dan tambahkan properti onCreat
10.	9:(TASK_screen.dart) buat FloatingActionButton,untuk navigasi ke taskitemscreen.
11.	10:(TASK_item_screen.dart) menambahkan state properti,initstate,dan dipose
	11:(task_item_screen.dart) membuat buildnamefield dan panggil fungsi nya di dalam ListView
	12:(task_item_screen.dart) membuat buildbutton dan panggil fungsi nya di dalam ListView
	13:membuat task item card,buat folder baru components lalu didalmnya buat file dart baru task_item_card.dart
	14:(task_item_screen.dart) menmabhakan call back handler di elevetendbutton,dan menambhakan package uuid
	15:membuat task list creen, dalam folder acreens buat file dart baru task_list_screen.dart.dan tambahkan di buildtaskscreen(task_screen.dart)
	16:(task_list_screen.dart) menambhakan properti yang dibituhkan pada taskitemcard untuk melihat task yang sudah dibuat

**AlertDialog**
1.untuk tampilan android darimaterial design
2.meginfirmasikan pengguna tnetang situasi tertentu
3.bisa digunakan untuk mendapatkan input data user
4.membutuhkan halper method shoedialog

**buttom sheet**
1.seperti dialof tapi muncul dari bawah aplikasi
2.menggunakan fungsi bawaan flutter showmodalbottomsheet
3.membutuhkan dua properti,yaitu context dan bilder


