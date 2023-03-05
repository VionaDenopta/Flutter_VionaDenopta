//1. Buatlah sebuah program untuk menghilangkan nilai atau data yang sama pada sebuah data sehingga output akhirnya adalah sekumpulan nilai atau data yang unik.
   // **************Sampel Input:************** `[amuse, tommy kaira, spoon, HKS, litchfield, amuse, HKS]`
//******Sampel Output:****** `[amuse, tommy kaira, spoon, HKS, litchfield]`

//***************************Sampel Input:**************************** `[JS Racing, amuse, spoon, spoon, JS Racing, amuse]`

//************Sampel Output:************ `[JS Racing, amuse, spoon]`

void  main(List<String> args) {
  List<String> nama=['viona','viona','nurul','azizah','majid','auqifa','majid',];
  Set<String> uniqnama=nama.toSet();//toSet untuk menghapus nilai yang sama
  //List<String>name=uniqnama.toList();//memasukkan kembali ke list
  print(uniqnama);
}