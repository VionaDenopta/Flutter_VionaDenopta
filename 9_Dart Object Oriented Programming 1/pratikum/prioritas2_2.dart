void main(){
  var nama1=murid('viona','3b');
  var nama2=murid('nurul','3a');
  var nama3=murid('putri','3c');
  

  var a=Course('Basisdata','mata kuliah');
  var b=Course('Animasi','mata kuliah');
  var c=Course('algoritma','mata kuliah');
  var d=Course('mobile','mata kuliah');
  var e=Course('uiux','mata kuliah');

  nama1.tambahCourse(a);
  nama1.tambahCourse(b);
  nama1.tambahCourse(c);
  nama1.tambahCourse(e);
  nama1.lihatCourse();
    nama1.hapusCourse(a);
  nama1.lihatCourse();
  print(' ');

  nama2.tambahCourse(a);
  nama2.tambahCourse(b);
  nama2.tambahCourse(c);
  nama2.tambahCourse(d);
  nama2.lihatCourse();
  nama2.hapusCourse(d);
  nama2.lihatCourse();
  print(' ');

  nama3.tambahCourse(a);
  nama3.tambahCourse(b);
  nama3.tambahCourse(c);
  nama3.tambahCourse(e);
  nama3.lihatCourse();
  nama3.hapusCourse(a);
  nama3.lihatCourse();
  print(' ');

}
class Course{
  String judul;
  String deskripsi;

  Course(this.judul,this.deskripsi);
}
class murid{
  String nama;
  String kelas;
  List<Course>coursee=[];

  murid(this.nama,this.kelas);

  void tambahCourse(Course course){
    coursee.add(course);
    print('$nama kelas $kelas menambahkan ${course.judul}');
  }
  void hapusCourse(Course course){
    if(coursee.contains(course)){
      coursee.remove(Course);
      print('$nama kelas $kelas menambahkan ${course.judul}');
    }else{
      print('$nama kelas $kelas tidak terdaftar ${course.judul}');
    }
  }
  void lihatCourse(){
    if(coursee.isEmpty){
      print('$nama kelas $kelas TIDAK TERDAFTAR}');
    }else{
      print('$nama kelas $kelas terdaftar pada course');
      for(var Course in coursee){
        print('${Course.judul} adalah ${Course.deskripsi}');
      }
    }
  }
}