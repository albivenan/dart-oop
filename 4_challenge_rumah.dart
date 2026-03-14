/*
  MATERI 4: CHALLENGE - CLASS RUMAH
  
  Penjelasan:
  - Materi ini merupakan tantangan untuk mempraktekkan pembuatan class secara mandiri.
  - Fokus utamanya adalah mendefinisikan atribut spesifik (nama, alamat, jumlah kamar) 
    dan menampilkan datanya menggunakan method.
  
  Langkah kerja:
  1. Definisikan class Rumah beserta properti yang diminta.
  2. Buat method display() untuk mencetak ringkasan informasi rumah.
  3. Inisialisasi objek di fungsi main, tentukan nilainya, dan tampilkan outputnya.
*/

class Rumah {
  // Properti
  String? nama;
  String? alamat;
  int? jumlahKamar;

  // Method untuk menampilkan informasi rumah
  void display() {
    print("--- Informasi Rumah ---");
    print("- Nama Pemilik: $nama");
    print("- Alamat: $alamat");
    print("- Jumlah Kamar: $jumlahKamar");
    print("-----------------------");
  }
}

void main() {
  // 1. Membuat objek rumah
  var rumahBaru = Rumah();
  
  // 2. Mengatur nilai properti
  rumahBaru.nama = "Budi Hartono";
  rumahBaru.alamat = "Jl. Sudirman No. 123, Jakarta";
  rumahBaru.jumlahKamar = 5;
  
  // 3. Menampilkan data
  rumahBaru.display();
}
