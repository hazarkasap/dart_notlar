/**
 * Dart Operatörleri
 */
void main(List<String> args) {
  // 1. Aritmetik Operatörler: +, -, *, /, %, ~/ (Tam sayı bölmesi)
  double sayi1 = 10, sayi2 = 3;
  print("Toplam: ${sayi1 + sayi2}");
  print("Fark: ${sayi1 - sayi2}");
  print("Çarpım: ${sayi1 * sayi2}");
  print("Bölme: ${sayi1 / sayi2}");
  print("Tam Sayı Bölmesi: ${sayi1 ~/ sayi2}"); // Sonuç: 3
  print("Mod (Kalan): ${sayi1 % sayi2}"); // Sonuç: 1

  // 2. Atama Operatörleri: =, +=, -=, *=, /=
  double a = 5;
  a += 2; // a = a + 2
  print("Atama sonucu: $a");

  // 3. Karşılaştırma Operatörleri: ==, !=, >, <, >=, <=
  print("Eşit mi? ${10 == 5}"); // false
  print("Farklı mı? ${10 != 5}"); // true

  // 4. Mantıksal Operatörler: && (VE), || (VEYA), ! (DEĞİL)
  bool kosul1 = true;
  bool kosul2 = false;
  print("VE: ${kosul1 && kosul2}"); // false
  print("VEYA: ${kosul1 || kosul2}"); // true
  print("DEĞİL: ${!kosul1}"); // false
}