/**
 * Kontrol Yapıları: Ternary If (Üçlü Operatör)
 * 
 * Kısa if-else kullanımıdır.
 * Yazım formatı: (koşul) ? (doğruysa çalışacak kısım) : (yanlışsa çalışacak kısım)
 */
void main(List<String> args) {
  int sayi1 = 5, sayi2 = 8;
  int kucukSayi = 0;
  int kucukSayi2 = 0;

  // Standart if-else kullanımı
  if (sayi1 < sayi2) {
    kucukSayi = sayi1;
  } else {
    kucukSayi = sayi2;
  }
  print("Küçük olan sayı: $kucukSayi");

  // Ternary if ile aynı işlem:
  // "?" işareti "ise", ":" işareti "değilse" anlamına gelir.
  sayi1 < sayi2 ? kucukSayi2 = sayi1 : kucukSayi2 = sayi2;
  print("Küçük olan sayı2: $kucukSayi2");

  // Ternary if'in bir değişkene doğrudan değer ataması şeklinde kullanımı (Daha yaygındır):
  kucukSayi2 = sayi1 < sayi2 ? sayi1 : sayi2;
  print("Küçük olan sayı2: $kucukSayi2");
}
