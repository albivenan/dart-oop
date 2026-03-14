/*
  MATERI 1: CLASS DAN OBJECT
  
  Penjelasan:
  - Class: Merupakan cetak biru (blueprint) untuk menciptakan objek. 
    Di dalamnya kita mendefinisikan variabel (properti) dan fungsi (method).
  - Object: Hasil nyata atau instansi yang dibuat berdasarkan class tersebut.
  
  Langkah kerja:
  1. Definisikan class dengan keyword 'class'.
  2. Buat objek di dalam fungsi main.
  3. Gunakan tanda titik (.) untuk mengisi data atau memanggil fungsi.
*/

class Mobil {
  // Properti
  String? merk;
  String? model;
  int? tahun;

  // Method
  void klakson() {
    print("Suara Klakson: Beep! Beep!");
  }

  void tampilkanInfo() {
    print("Mobil ini bermerk $merk, model $model, tahun $tahun.");
  }
}

void main() {
  // Membuat objek pertama
  var mobilA = Mobil();
  mobilA.merk = "Toyota";
  mobilA.model = "Corolla";
  mobilA.tahun = 2020;

  // Menjalankan method dan menampilkan properti
  print("Detail Mobil A:");
  mobilA.klakson();
  mobilA.tampilkanInfo();

  print("--------------------------");

  // Membuat objek kedua (data berbeda)
  var mobilB = Mobil();
  mobilB.merk = "Honda";
  mobilB.model = "Civic";
  mobilB.tahun = 2022;
  
  print("Detail Mobil B:");
  mobilB.tampilkanInfo();
}
