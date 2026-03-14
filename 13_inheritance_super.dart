/*
  MATERI 13: KEYWORD SUPER
  
  Penjelasan:
  - Keyword 'super' digunakan untuk mengakses member (properti/method) milik Parent Class 
    langsung dari Child Class.
  - Sering digunakan dalam constructor untuk meneruskan parameter ke constructor induk.
  
  Langkah kerja:
  1. Buat Parent Class dengan constructor parameter.
  2. Di Child Class, gunakan ': super(parameter)' pada constructor.
*/

class Binatang {
  String jenis;

  Binatang(this.jenis);

  void suara() {
    print("Binatang jenis $jenis bersuara.");
  }
}

class Kucing extends Binatang {
  String ras;

  // Memanggil constructor Parent menggunakan super
  Kucing(String jenis, this.ras) : super(jenis);

  @override
  void suara() {
    super.suara(); // Memanggil method suara() milik Binatang
    print("Kucing ras $ras mengeong: Meong!");
  }
}

void main() {
  var kucing1 = Kucing("Mamalia", "Persia");
  kucing1.suara();
}
