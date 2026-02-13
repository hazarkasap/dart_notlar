/**
 * Veri Tipleri: Sayısal (Number)
 * 
 * int: Tam sayıları tutar (Örn: 1, 5, -10)
 * double: Ondalıklı sayıları tutar (Örn: 10.5, -3.2)
 * num: Hem int hem de double değerleri kapsayan üst tiptir.
 */
void main(List<String> args) {
  int yas = 20;
  print(yas);

  double sicaklik = 50.7;
  print(sicaklik);

  // num tipi, değişkenin hem tam sayı hem ondalıklı sayı alabileceği durumlarda kullanılır.
  num kilo = 70;
  print(kilo);

  kilo = 70.7; // num olduğu için int'ten double'a geçişe izin verir.
  print(kilo);

  // var kullanımı: Dart tipi atanan değere göre belirler (Type Inference).
  var yil = 1995; // int olarak belirlenir.
  var derece = 32.3; // double olarak belirlenir.
  
  // ÖNEMLİ: int olarak belirlenen bir değişkene sonradan double değer atanamaz.
  // Ancak double'a çevirmek gerekirse .toDouble() veya .toInt() metodları kullanılabilir.
  // yil = 55.5; -> Hata verir.
  // yil = 55.5.toInt(); -> Doğru kullanım.
}