import 'dart:ffi';

import 'package:section7_prioritas1a/section7_prioritas1a.dart' as section7_prioritas1a;
// Tugas Percabangan(Branching)
//Terdapat sebuah nilai:
   //1.jika nilai > 70 akan mereturn “Nilai A”
   //2. jika nilai > 40 akan mereturn “Nilai B”
   //3. jika nilai > 0 akan mereturn “Nilai C”
   //4. selain itu return teks kosong

void main() {
var nilai = 0;
if(nilai >70){
  print('A');
}else if(nilai>40){
  print('B');
}else if(nilai>0){
  print('C');
}else{
  print('teks kosong');
}
}


