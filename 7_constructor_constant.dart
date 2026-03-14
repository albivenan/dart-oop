/*
  MATERI 7: CONSTANT CONSTRUCTOR
  
  Penjelasan:
  - Constant Constructor dipakai buat bikin objek yang sifatnya 'nge-lock' (immutable).
  - Sekali dibuat pakai 'const', isinya nggak bisa diganti sama sekali.
  - Efeknya hemat memori karena objek yang isinya sama bakal dianggap satu data.
  
  Langkah kerja:
  1. Semua properti class HARUS pakai kata kunci 'final'.
  2. Constructor diawali kata kunci 'const'.
  3. Pas bikin objek di main, pakai kata kunci 'const' juga.
*/

class Point {
  final int x;
  final int y;

  // Constant Constructor
  const Point(this.x, this.y);
}

void main() {
  // Objek konstan
  const p1 = Point(5, 10);
  const p2 = Point(5, 10);

  // Di Dart, p1 dan p2 punya hash code sama karena datanya identik dan konstan
  print("HashCode P1: ${p1.hashCode}");
  print("HashCode P2: ${p2.hashCode}");
  print("Apakah sama? ${p1 == p2}"); 
}
