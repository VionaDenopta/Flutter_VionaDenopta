//1. Buatlah sebuah list dengan spesifikasi berikut:
   // 1. Tiap elemen wajib berupa list juga
    //2. tiap element wajib terdapat 2 data(sub-elemen)
    //3. Buatlah sebuah map dengan menggunakan list tersebut

void main()async{
  var dataSiswa={};
    dataSiswa ['nama']=  'nama :'' Viona Denopta' ;
    dataSiswa ['nim']=  'Nim :' ' 2011081023';
    dataSiswa ['TanggalLahir']=  'tanggallahir: '' 20 mai 2002';

  for(var key in dataSiswa.keys){
    print(dataSiswa[key]);
  }
}