//Buatlah sebuah program untuk mengecek apakah sebuah kata merupakan sebuah palindrom atau buka


void  main(List<String> args) {
  List<String> listKalimat =['mobil balap','kasur ini rusak','ibu ubi'];
  for(var kalimat in listKalimat) {
    var s = ini_palindrom (kalimat) ? '$kalimat adalah palindrom':'$kalimat bukan palindrom';
    print(s);
  }

}
bool ini_palindrom (String kalimat){
  int length= kalimat.length;
  for(var i=0;i<length;i++){
    if(kalimat[i] !=kalimat[length-i-1]) return false;
  }
  return true;
}
