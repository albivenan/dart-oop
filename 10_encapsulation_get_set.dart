/*
  MATERI 10: ENCAPSULATION (KEYWORD GET & SET)
  
  Penjelasan:
  - Selain menggunakan method manual (getId/setId), Dart menyediakan fitur 
    keyword 'get' dan 'set' yang lebih elegan.
  - Penggunaannya membuat pemanggilan property private terlihat seperti property biasa 
    namun tetap terlindungi oleh logika di dalamnya.
  
  Langkah kerja:
  1. Gunakan keyword 'get' untuk mendefinisikan getter.
  2. Gunakan keyword 'set' untuk mendefinisikan setter.
*/

class Vehicle {
  String _model = "";
  int _year = 0;

  // Getter method menggunakan keyword get
  String get model => _model;

  // Setter method menggunakan keyword set
  set model(String value) => _model = value;

  // Getter dan Setter dengan logika tambahan
  int get year => _year;
  set year(int value) {
    if (value >= 1900) {
      _year = value;
    } else {
      print("Tahun tidak valid!");
    }
  }
}

void main() {
  var v = Vehicle();
  
  // Pemanggilan setter (terlihat seperti akses properti biasa)
  v.model = "Toyota Supra";
  v.year = 2024;

  // Pemanggilan getter
  print("Model Kendaraan: ${v.model}");
  print("Tahun: ${v.year}");
}
