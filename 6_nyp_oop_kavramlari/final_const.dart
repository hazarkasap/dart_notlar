/**
 * Sabitler: Final ve Const
 * 
 * Her iki anahtar kelime de bir değişkenin değerinin sonradan 
 * değiştirilemeyeceğini belirtir.
 */
void main(List<String> args) {
  // 1. FINAL: Değeri program çalışırken (Runtime) belirlenir. 
  // Belirlendikten sonra asla değiştirilemez.
  final DateTime simdi = DateTime.now(); // Çalıştığı andaki zamanı alır.
  print("Final Zaman: $simdi");

  // 2. CONST: Değeri kod derlenirken (Compile-time) belli olmalıdır.
  // Daha performanslıdır ve bellekte aynı değerler için tek bir alan kullanılır (Canonicalization).
  const double pi = 3.14; 
  print("Const PI: $pi");

  // Örnek: Liste kıyaslaması
  const liste1 = [1, 2, 3];
  const liste2 = [1, 2, 3]; 
  
  if (liste1 == liste2) {
    // Çıktı: Eşitler. Çünkü const listeler bellekte aynı adresi tutar.
    print("Const Listeler Eşitler");
  }

  final fListe1 = [1, 2, 3];
  final fListe2 = [1, 2, 3];
  if (fListe1 == fListe2) {
    print("Final Listeler Eşitler");
  } else {
    // Çıktı: Eşit Değiller. Çünkü final listeler bellekte farklı adreslerde oluşur.
    print("Final Listeler Eşit Değiller");
  }

  // Const Nesneler
  final Ogrenci hazar = const Ogrenci(1, 'Hazar');
  final Ogrenci hazar2 = const Ogrenci(1, 'Hazar');
  
  if (hazar == hazar2) {
    print("Const Ogrenci nesneleri eşittir.");
  }
}

class Ogrenci {
  final int id;
  final String isim;

  // Sabit nesne üretmek için kurucu 'const' olmalıdır.
  const Ogrenci(this.id, this.isim);
}