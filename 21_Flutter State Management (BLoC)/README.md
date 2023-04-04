**STATE MANAGEMENT**

**Declarative UI**
Flutter memiliki sifat declarative yang artinya flutter membnagun UI nya pada screen untuk mencerminkan keadaan state saat ini

#state
1.state adalah ketika sebuah widget sedang aktif dan widget tersebut menyimpan data di memori
2.Flutter akan membangun ulang UI nya ketika ada state atau data yang berubah
3.ada 2 jenis state dalam flutter,ephemeral state dan app state

#ephemeral state
1.digunakan ketika tidak ada bagian lain pada widget tree yang embutuhkan untuk engakses data widgetnya
2.tidak perlu state management yang kompleks
3.hanya membutuhkan statefulwidget dengan menggunakan fungsi setState()

#App state
Digunakan ketika bagian yang lain suatu aplikasi membutuhkan akses ke data state widget

