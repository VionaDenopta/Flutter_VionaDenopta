class Calculator{
  double penjumlahan( x, y){
    return x+y;
  }
  double kurang( x,y){
    return x-y;
  }
  double bagi(x,y){
    return x/y;
  }
  double kali( x, y){
    return x*y;
  }

}

void main(){
  double x=20;
  double y=10;
  var hasil=Calculator();
  print('hasil tambah ${hasil.penjumlahan(x,y)}');
    print('hasil tambah ${hasil.kurang(x,y)}');
      print('hasil tambah ${hasil.bagi(x,y)}');
        print('hasil tambah ${hasil.kali(x,y)}');
}

