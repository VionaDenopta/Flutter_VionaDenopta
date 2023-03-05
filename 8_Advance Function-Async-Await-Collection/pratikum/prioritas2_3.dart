//Buatlah sebuah program untuk melakukan
 //perhitungan bilangan faktorial secara asinkron.

void main()async{
  var faktor = await Nilaifaktorial(5);
  print('5! = $faktor');
}
Future<int>Nilaifaktorial(int nilai)async{
  var faktorial =1;
  for(var i=1;i<=nilai;i++){
    faktorial *=i;
    await Future.delayed(Duration(milliseconds: 100));
    print('hasilnya: $faktorial');
  }
  return faktorial;
}