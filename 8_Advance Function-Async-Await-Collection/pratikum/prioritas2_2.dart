//Buatlah sebuah program untuk menghitung
//rata-rata dari sekumpulan nilai.
 //Lakukan pembulatan keatas untuk
 //nilai hasil perhitungan rata-rata.

void main(){
  List<double> nilai=[7,5,3,5,2,1];
  final rata_rata=nilai.reduce((x,y)=>x+y)/nilai.length;
  final hasil=rata_rata.ceil();//pembulatan keatas
  print('nilai rata-rata: $rata_rata');
  print('hasil pembulatan keatas : $hasil');
}