class Matematika{
    Hasil1 (){

    print('tidak diketahui');
  }
}
class Kpk implements Matematika {
  @override
  Hasil1() {
      late int hasil ;
      int x = 42;
  int y = 66;

  int kpk(int x, int y) {
    int max = x > y ? x : y;
    while (true) {
      if (max % x == 0 && max % y == 0) {
        hasil = max;
          print(hasil);
          return hasil;
      }
      max++;
  }

  }
  @override
  Hasil2() {
    int fpb(int x, int y) {
      x=10;
      y=20;
    int min = x < y ? x : y;
    for (int i = min; i >= 1; i--) {
      if (x % i == 0 && y % i == 0) {
        hasil = i;
        print(hasil);
      }

    }

    return hasil;
  }
}
  }

  void Hasil2() {}
}

void main() {



  var h2=Matematika();
  h2.Hasil1();
var h1=Kpk();
h1.Hasil1();
h1.Hasil2();


}






