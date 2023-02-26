

void main(){
  double r = 20;
  double pi = 3.14;
  double luas = (pi*(r*r));


  final luas1=introduce(luas : "$luas");

  print(luas1);

}
String introduce({required String luas}){
  return "luaslingkaran : $luas";
}


