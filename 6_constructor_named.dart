/*
  MATERI 6: NAMED CONSTRUCTOR
  
  Penjelasan:
  - Named Constructor adalah fitur Dart yang memungkinkan sebuah class memiliki 
    lebih dari satu constructor dengan nama yang berbeda.
  - Ini sangat berguna untuk menciptakan objek dengan skenario inisialisasi yang berbeda.
  
  Langkah kerja:
  1. Buat class Student dengan properti name dan age.
  2. Implementasikan Default Constructor.
  3. Buat Named Constructor dengan sintaks: Student.namaConstructor().
  4. Panggil kedua jenis constructor tersebut di fungsi main.
*/

class Student {
  String? name;
  int? age;

  // Default Constructor
  Student(this.name, this.age);

  // Named Constructor: inisialisasi mahasiswa baru dengan umur default 0
  Student.maba(this.name) {
    age = 18;
    print("Membentuk objek mahasiswa baru...");
  }

  void info() {
    print("Nama: $name, Umur: $age");
  }
}

void main() {
  // Menggunakan Default Constructor
  var s1 = Student("Andi", 20);
  s1.info();

  print("------------------");

  // Menggunakan Named Constructor
  var s2 = Student.maba("Rian");
  s2.info();
}
