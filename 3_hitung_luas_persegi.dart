/*
  MATERI 3: PERHITUNGAN MENGGUNAKAN CLASS
  
  Penjelasan:
  - Materi ini mendemonstrasikan bagaimana class dapat digunakan untuk melakukan 
    operasi logika atau matematika melalui method.
  - Kita menggunakan operator '!' (null assertion) untuk meyakinkan compiler 
    bahwa variabel panjang dan lebar sudah memiliki nilai saat dihitung.
  
  Langkah kerja:
  1. Definisikan class PersegiPanjang dengan properti panjang dan lebar.
  2. Buat method hitungLuas() yang mengembalikan (return) hasil perkalian.
  3. Di fungsi main, buat objek, isi dimensinya, dan tampilkan hasil hitungnya.
*/

class PersegiPanjang {
  // Properti
  double? panjang;
  double? lebar;

  // Method untuk menghitung dan mengembalikan nilai luas
  double hitungLuas() {
    return panjang! * lebar!;
  }
}

void main() {
  // 1. Membuat instance objek
  var persegi = PersegiPanjang();
  
  // 2. Mengisi data dimensi
  persegi.panjang = 10;
  persegi.lebar = 5;
  
  // 3. Menampilkan hasil perhitungan melalui pemanggilan method
  print("--- Hitung Luas Persegi Panjang ---");
  print("- Panjang: ${persegi.panjang}");
  print("- Lebar: ${persegi.lebar}");
  print("- Luas: ${persegi.hitungLuas()}");
  print("-----------------------------------");
}
