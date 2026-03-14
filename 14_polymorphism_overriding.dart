/*
  MATERI 14: POLYMORPHISM (METHOD OVERRIDING)
  
  Penjelasan:
  - Polymorphism (banyak bentuk) memungkinkan sebuah method yang sama memiliki 
    perilaku yang berbeda di berbagai class.
  - Method Overriding adalah cara anak class menimpa atau memodifikasi fungsi 
    yang diwarisi dari induknya.
  
  Langkah kerja:
  1. Buat class Pegawai dengan method gaji().
  2. Buat class Manager dan Developer yang meng-override method gaji().
  3. Gunakan anotasi @override sebagai best practice.
*/

class Pegawai {
  void tampilGaji() {
    print("Gaji standar pegawai: Rp 5.000.000");
  }
}

class Manager extends Pegawai {
  @override
  void tampilGaji() {
    print("Gaji Manager: Rp 15.000.000 (Gaji Pokok + Tunjangan)");
  }
}

class Developer extends Pegawai {
  @override
  void tampilGaji() {
    print("Gaji Developer: Rp 10.000.000 (Gaji Pokok + Bonus Project)");
  }
}

void main() {
  // Objek yang sama (Pegawai) tapi berperilaku berbeda (Polymorphism)
  Pegawai p1 = Manager();
  Pegawai p2 = Developer();

  print("--- System Penggajian ---");
  p1.tampilGaji(); // Output Manager
  p2.tampilGaji(); // Output Developer
}
