/*
  MATERI 8: TUGAS LATIHAN 1 (CLASS & CONSTRUCTOR)
  
  Materi ini berisi penyelesaian untuk 5 latihan dasar:
  1. Class Mobil dengan properti merk, model, tahun.
  2. Class Mahasiswa dengan nilai default.
  3. Class Buku dengan Parameterized Constructor.
  4. Class Segitiga dengan Named Constructor.
  5. Class Warna dengan Constant Constructor.
*/

// 1. Class Mobil
class Mobil {
  String? merk;
  String? model;
  int? tahun;
  Mobil(this.merk, this.model, this.tahun);
  void cetak() => print("Mobil: $merk $model ($tahun)");
}

// 2. Class Mahasiswa
class Mahasiswa {
  String nama = "Anonim";
  String nim = "00000000";
  void cetak() => print("Mahasiswa: $nama, NIM: $nim");
}

// 3. Class Buku
class Buku {
  String judul;
  String pengarang;
  Buku(this.judul, this.pengarang);
  void cetak() => print("Buku: $judul oleh $pengarang");
}

// 4. Class Segitiga
class Segitiga {
  double alas, tinggi;
  String jenis;
  Segitiga.sikuSiku(this.alas, this.tinggi) : jenis = "Siku-siku";
  void cetak() => print("Segitiga $jenis, Luas: ${0.5 * alas * tinggi}");
}

// 5. Class Warna
class Warna {
  final int red, green, blue;
  const Warna(this.red, this.green, this.blue);
  void cetak() => print("RGB($red, $green, $blue)");
}

void main() {
  print("--- Latihan 1 ---");
  Mobil("Toyota", "Avanza", 2021).cetak();

  print("\n--- Latihan 2 ---");
  Mahasiswa().cetak();

  print("\n--- Latihan 3 ---");
  Buku("Dart OOP", "Akhmad Khanif").cetak();

  print("\n--- Latihan 4 ---");
  Segitiga.sikuSiku(10, 5).cetak();

  print("\n--- Latihan 5 ---");
  const Warna(255, 0, 0).cetak();
}
