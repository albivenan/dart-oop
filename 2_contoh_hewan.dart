/*
  MATERI 2: IMPLEMENTASI CLASS HEWAN
  
  Penjelasan:
  - Materi ini mempraktekkan pembuatan class 'Hewan' dengan tiga properti dasar: 
    nama, jumlah kaki, dan umur.
  - Method display() digunakan untuk mencetak seluruh informasi objek secara terstruktur.
  
  Langkah kerja:
  1. Definisikan class Hewan beserta propertinya.
  2. Buat fungsi display() untuk menampilkan output data.
  3. Inisialisasi objek di dalam fungsi main, isi datanya, dan panggil fungsi display().
*/

class Hewan {
  // Properti
  String? nama;
  int? jumlahKaki;
  int? umur;

  // Method untuk menampilkan detail data hewan
  void display() {
    print("--- Detail Hewan ---");
    print("- Nama: $nama");
    print("- Jumlah Kaki: $jumlahKaki");
    print("- Umur: $umur tahun");
    print("--------------------");
  }
}

void main() {
  // 1. Inisialisasi objek hewan
  var hewan1 = Hewan();
  
  // 2. Mengisi data ke properti objek
  hewan1.nama = "Singa";
  hewan1.jumlahKaki = 4;
  hewan1.umur = 10;
  
  // 3. Menampilkan informasi melalui method
  hewan1.display();
}
