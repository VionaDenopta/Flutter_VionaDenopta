import 'package:dart_6_prioritas1_vionadenopta/dart_6_prioritas1_vionadenopta.dart' as dart_6_prioritas1_vionadenopta;

//soal
//Buatlah rumus keliling dan luas persegi dan
 //persegi panjang dengan menggunakan bahasa pemrograman Dart
void main() {
  int sisi1 = 7;
  int sisi2 =7;
  int LuasPersegi = sisi1*sisi2;
  int Keliling = 4*sisi1;
  int Panjang = 6;
  int lebar =4;
  int LuasPersegiPanjang= Panjang*lebar;
  int KelilingPersegiPanjang= 2*(Panjang+lebar);

  //Luas Persegi	L = s x s
  print(LuasPersegi);
  //Keliling Persegi	K = 4 x s
  print(Keliling);
  //Luas Persegi Panjang	L = p × l
  print(LuasPersegiPanjang);
  //Keliling Persegi Panjang	K = 2 × (p + l)
  print(KelilingPersegiPanjang);

}



