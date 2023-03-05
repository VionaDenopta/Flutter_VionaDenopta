//1. Buatlah sebuah fungsi dengan spesifikasi berikut:
    //1. Menerima 2 parameter, yaitu list data dan pengali
    //2. Lakukan perulangan pada list data secara asynchronous
    //3. Tiap perulangan, kalikan elemen list data dengan pengali
    //4. Return list baru yang berisi hasil proses diatas

import'dart:async';

Future<List<num>> jumlah (List<num> data, pengali)async{
  List<num> hasil=[];

  await Future.forEach(data,(num listdata) {
    num jumlah = listdata*pengali;
    hasil.add(jumlah);
  });
  return hasil;
}
void main()async{
List<num> data=[];
data.add(10);
data.add(20);
data.add(30);

var pengali=10;
List<num>result=await jumlah (data, pengali);
print(result);

}





