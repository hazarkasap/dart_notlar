/**
 * Break, Continue ve Etiketli (Labeled) Döngüler
 */
void main(List<String> args) {
  // 1. Break: İçinde bulunduğu döngüyü tamamen sonlandırır.
  print("--- Break Örneği ---");
  for (var i = 0; i < 10; i++) {
    if (i >= 5) {
      break; // i 5 olduğunda döngü biter.
    }
    print("i değeri: $i");
  }

  // 2. Continue: Döngünün o anki turunu atlar ve bir sonraki tura geçer.
  print("\n--- Continue Örneği ---");
  for (var i = 0; i < 10; i++) {
    if (i % 2 != 0) {
      continue; // Sayı tek ise print'i çalıştırmadan sonraki i değerine geçer.
    }
    print("Çift sayı: $i");
  }

  // 3. Labellar (Etiketler): İç içe döngülerde hangi döngünün kırılacağını belirtmek için kullanılır.
  print("\n--- Etiketli Döngü Örneği ---");
  distakiDongu: for (var i = 1; i <= 3; i++) {
    ictekiDongu: for (var j = 1; j <= 3; j++) {
      if (i == 2 && j == 2) {
        break distakiDongu; // Sadece içtekini değil, en dıştakini kırar.
      }
      print("$i * $j = ${i * j}");
    }
  }
}
