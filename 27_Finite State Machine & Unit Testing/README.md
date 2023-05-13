STATE MACHINE
-MESIN YANG MEMILIKI SEJUMLAH STATE
-tiap state menunjukkan apa yang terjadi sebelumnya

contoh
terdapat 3 state yang menunjukkan kejadian dalam suatu proses
IDDLE saat tidak terjadi proses
RUNNING daat proses sedang berjalan
ERROR saat proses gagal diselesaikan

Implementasi pada View-Model
Membuat enum untuk masing masing state:
none saat IDDLE
loading saat RUNNING
error saat ERROR