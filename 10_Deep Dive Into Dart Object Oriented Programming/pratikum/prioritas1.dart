class BangunRuang{
  var panjang;
  var lebar;
  var tinggi;
  var sisi;
  var volume;


  void balok() {}

  void kubus() {}
}

class Balok extends BangunRuang{
  @override
  balok(){
  panjang=29;
    lebar=20;
    tinggi=10;
    volume=(panjang*lebar*tinggi);
    print(volume);
  }


}
class Kubus extends BangunRuang{
  @override
  kubus(){
    sisi=20;
    volume=(sisi*sisi*sisi);
    print(volume);
  }


}
void main(){
  BangunRuang b1=BangunRuang();
  print(b1);

  b1=Balok();
  print(b1);
  b1.balok();

  b1=Kubus();
  print(b1);
  b1.kubus();

}
