/*
  MATERI 15: ABSTRACTION (ABSTRACT CLASS)
  
  Penjelasan:
  - Abstract Class adalah class 'bayangan' yang tidak bisa dibuat objeknya langsung.
  - Fungsinya sebagai kerangka (template) wajib bagi class-class turunannya.
  - Method abstract adalah method yang tidak punya isi (body), tapi wajib 
    diimplementasikan oleh class anak.
  
  Langkah kerja:
  1. Buat abstract class Kendaraan dengan method abstract jalankan().
  2. Buat class Mobil yang meng-extends Kendaraan dan mengisi logika jalankan().
*/

abstract class Kendaraan {
  // Method abstract (tanpa body)
  void jalankan();
  void berhenti();

  // Method biasa dalam abstract class
  void klakson() {
    print("Beep!");
  }
}

class Mobil extends Kendaraan {
  @override
  void jalankan() {
    print("Mobil dinyalakan dan mulai berjalan...");
  }

  @override
  void berhenti() {
    print("Rem ditekan, mobil berhenti.");
  }
}

void main() {
  // var k = Kendaraan(); // Error: Abstract class cannot be instantiated
  
  var myCar = Mobil();
  myCar.jalankan();
  myCar.klakson();
  myCar.berhenti();
}
