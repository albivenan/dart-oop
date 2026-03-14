/*
  MATERI 5: CONSTRUCTOR DASAR (PARAMETERIZED CONSTRUCTOR)
  
  Penjelasan:
  - Constructor adalah method khusus yang otomatis dijalankan saat sebuah objek dibuat.
  - Parameterized Constructor memungkinkan kita untuk langsung menginisialisasi 
    nilai properti objek tepat saat proses instansiasi.
  - Ini membuat kode lebih efisien dibandingkan mengisi nilai properti satu per satu.
  
  Langkah kerja:
  1. Buat class Siswa dengan properti nama, umur, dan nomorInduk.
  2. Implementasikan constructor: Siswa(this.nama, this.umur, this.nomorInduk).
  3. Di fungsi main, buat beberapa objek Siswa dengan mengisi argumen di dalam kurung.
*/

class Siswa {
  String? nama;
  int? umur;
  int? nomorInduk;

  // Constructor menggunakan shortcut 'this' untuk inisialisasi langsung
  Siswa(this.nama, this.umur, this.nomorInduk);

  void tampilkan() {
    print("Siswa: $nama, Umur: $umur, NI: $nomorInduk");
  }
}

void main() {
  // Memberikan nilai awal langsung melalui constructor
  var siswa1 = Siswa("Budi", 17, 101);
  var siswa2 = Siswa("Siti", 16, 102);

  print("--- Data Siswa ---");
  siswa1.tampilkan();
  siswa2.tampilkan();
  print("------------------");
}
