/*
  MATERI 6: NAMED CONSTRUCTOR
  
  Penjelasan:
  - Di Dart, kita nggak bisa bikin banyak constructor dengan nama yang sama.
  - Solusinya pakai 'Named Constructor', yaitu constructor yang punya nama unik.
  - Ini berguna kalau kita mau bikin objek dengan cara yang beda-beda.
  
  Langkah kerja:
  1. Buat class Student dengan properti dasar.
  2. Buat Default Constructor dan Named Constructor (misal: Student.umum).
  3. Panggil masing-masing constructor di fungsi main.
*/

class Student {
  String? name;
  int? age;

  // Constructor Utama
  Student(this.name, this.age);

  // Named Constructor
  Student.tanpaUmur(this.name) {
    age = 0; // nilai default
  }

  void info() {
    print("Nama: $name, Umur: $age");
  }
}

void main() {
  // Pakai constructor utama
  var mhs1 = Student("Andi", 20);
  mhs1.info();

  // Pakai named constructor
  var mhs2 = Student.tanpaUmur("Joko");
  mhs2.info();
}
