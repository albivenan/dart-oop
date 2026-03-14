/*
  MATERI 7: CONSTANT CONSTRUCTOR
  
  Penjelasan:
  - Constant Constructor digunakan untuk menciptakan objek yang nilainya kekal 
    (immutable) dan tidak dapat diubah setelah dibuat.
  - Objek yang dibuat dengan 'const' pada data yang sama akan menempati alamat memori 
    yang sama, sehingga meningkatkan performa.
  
  Syarat:
  1. Semua variabel/properti dalam class harus bersifat 'final'.
  2. Constructor diawali dengan kata kunci 'const'.
*/

class Point {
  final int x;
  final int y;

  // Constant Constructor
  const Point(this.x, this.y);
}

void main() {
  // Membuat objek konstan dengan data yang identik
  const p1 = Point(10, 20);
  const p2 = Point(10, 20);

  // Hasil hash code akan sama karena menunjuk ke objek yang sama di memori
  print("Hash Code P1: ${p1.hashCode}");
  print("Hash Code P2: ${p2.hashCode}");
  print("Apakah P1 dan P2 adalah objek yang sama? ${p1 == p2}");

  // Jika dibuat tanpa 'const', hash code akan berbeda
  var p3 = Point(10, 20);
  print("Hash Code P3 (non-const): ${p3.hashCode}");
}
