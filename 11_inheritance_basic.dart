/*
  MATERI 11: INHERITANCE (PEWARISAN TUNGGAL)
  
  Penjelasan:
  - Inheritance memungkinkan sebuah class (Child Class) mewarisi properti dan 
    method dari class lain (Parent Class).
  - Menggunakan keyword 'extends'.
  - Ini mendukung 'Code Reusability' (penggunaan kembali kode).
  
  Langkah kerja:
  1. Buat Parent Class (contoh: Orang).
  2. Buat Child Class (contoh: Murid) yang meng-extends Orang.
  3. Objek Murid akan secara otomatis memiliki apa yang ada di Orang.
*/

class Orang {
  String? nama;
  int? umur;

  void tampilBasics() {
    print("Nama: $nama, Umur: $umur");
  }
}

// Murid mewarisi Orang
class Murid extends Orang {
  String? sekolah;

  void tampilSekolah() {
    print("Sekolah: $sekolah");
  }
}

void main() {
  var murid = Murid();
  
  // Mengakses properti milik Parent Class (Orang)
  murid.nama = "Joko";
  murid.umur = 16;
  
  // Mengakses properti milik Child Class sendiri
  murid.sekolah = "SMA N 1 Jepara";

  // Memanggil method dari Parent maupun Child
  murid.tampilBasics();
  murid.tampilSekolah();
}
