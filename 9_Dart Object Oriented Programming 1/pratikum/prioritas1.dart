class hewan{
  String nama ="Hewan";
  int beratBadanHewan=0;
}

class kucing extends hewan{ kucing(){
  nama ="kucing";
  beratBadanHewan=20;
}
}

class burung extends hewan{ burung(){
  nama ="burung";
  beratBadanHewan=10;
}
}
class sapi extends hewan{ sapi(){
  nama ="sapi";
  beratBadanHewan=10;
}
}
class Mobil{
  int Kapasitas=100;
  var muatan=['kucing','burung','sapi'];
  void tambahmuatan(){
    print("silahkan tambah muatan");
  }

}
void main(){
  var h1=burung();
  var h2=kucing();
  var h3=sapi();
  var m=Mobil();

  if ((h1.beratBadanHewan+ h2.beratBadanHewan + h3.beratBadanHewan) < m.Kapasitas) {
    m.tambahmuatan();
    print("List Hewan : ${m.muatan}");
  } else {
    print("Sudah penuh");
  }
}
