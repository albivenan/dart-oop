/*
  MATERI 9: ENCAPSULATION (PRIVATE LIBRARY)
  
  Penjelasan:
  - Encapsulation adalah proses penyembunyian data sensisitif agar tidak bisa 
    diakses langsung dari luar class secara sembarangan.
  - Di Dart, private property ditandai dengan awalan underscore (_).
  - Penting: Underscore di Dart berarti 'Private to Library' (satu file), 
    bukan 'Private to Class'.
  
  Langkah kerja:
  1. Buat class Employee dengan properti _id dan _name (private).
  2. Implementasikan method setId/setName dan getId/getName.
  3. Coba akses langsung di main dan perhatikan perilakunya.
*/

class Employee {
  // Properti private (hanya bisa diakses di library/file ini)
  int? _id;
  String? _name;

  // Getter untuk mengambil nilai
  int getId() => _id!;
  String getName() => _name!;

  // Setter untuk mengisi nilai
  void setId(int id) => _id = id;
  void setName(String name) => _name = name;
}

void main() {
  var emp = Employee();
  
  // Mengisi data lewat setter
  emp.setId(101);
  emp.setName("Rian");

  // Mengambil data lewat getter
  print("ID Pegawai: ${emp.getId()}");
  print("Nama Pegawai: ${emp.getName()}");

  // Catatan: Karena masih dalam satu file, emp._name masih bisa dipanggil.
  // Untuk benar-benar private, class Employee harus dipisah filenya.
}
