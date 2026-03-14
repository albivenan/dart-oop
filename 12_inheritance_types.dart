/*
  MATERI 12: JENIS-JENIS INHERITANCE
  
  Penjelasan:
  - Multilevel Inheritance: Class A -> Class B -> Class C (Berjenjang).
  - Hierarchical Inheritance: Satu Parent memiliki banyak Child.
  - Catatan: Dart tidak mendukung 'Multiple Inheritance' (satu anak, banyak bapak).
  
  Langkah kerja:
  1. Buat hierarki class Mobil -> Tesla -> Model3 (Multilevel).
  2. Buat hierarki BangunDatar -> Lingkaran & Persegi (Hierarchical).
*/

// Contoh Multilevel
class Mobil {
  String? brand;
}

class Tesla extends Mobil {
  void jenis() => print("Ini mobil listrik dari $brand");
}

class Model3 extends Tesla {
  String? owner;
  void info() => print("Pemilik: $owner, Brand: $brand");
}

// Contoh Hierarchical
class BangunDatar {
  double? dimensi1, dimensi2;
}

class Lingkaran extends BangunDatar {
  void luas() => print("Hitung Luas Lingkaran...");
}

class Persegi extends BangunDatar {
  void luas() => print("Hitung Luas Persegi...");
}

void main() {
  print("--- Multilevel ---");
  var m3 = Model3();
  m3.brand = "Tesla";
  m3.owner = "Elon";
  m3.info();

  print("\n--- Hierarchical ---");
  var l = Lingkaran();
  var p = Persegi();
  l.luas();
  p.luas();
}
