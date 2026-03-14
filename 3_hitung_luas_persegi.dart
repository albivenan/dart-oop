/*
  MATERI 3: PERHITUNGAN MENGGUNAKAN CLASS
  
  Materi ini mempraktekkan cara melakukan operasi matematika di dalam class.
  Kita menggunakan variabel 'panjang' dan 'lebar', lalu membuat method 
  hitungLuas() untuk mengembalikan hasil perhitungan.
*/

class PersegiPanjang {
  double? panjang;
  double? lebar;

  // Method untuk menghitung luas
  // Tanda '!' digunakan untuk memberitahu Dart bahwa variabel tidak akan null
  double hitungLuas() {
    return panjang! * lebar!;
  }
}

void main() {
  var persegi = PersegiPanjang();
  
  // Mengisi nilai dimensi
  persegi.panjang = 10;
  persegi.lebar = 5;
  
  // Menampilkan hasil perhitungan
  print("--- Hitung Luas Persegi Panjang ---");
  print("Panjang: ${persegi.panjang}");
  print("Lebar  : ${persegi.lebar}");
  print("Luas   : ${persegi.hitungLuas()}");
  print("-----------------------------------");
}
