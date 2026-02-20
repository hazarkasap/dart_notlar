// generic_fonksiyonlar.dart
// Dart'ta GENERIC FONKSIYONLAR (Generic Functions) kullanımını gösterir.
//
// GENERIC FONKSIYON NEDİR?
// - Fonksiyonlar da sınıflar gibi generic olabilir.
// - <T> type parameter ile farklı türleri kabul edebilir.
// - T extends num : Type constraint (T, num türü veya alt türlerinden biri olmalı).
//
// TYPE CONSTRAINT (T extends num) NE ANLAMA GELİR?
// - T : Herhangi bir type parameter.
// - extends num : T sadece num ve alt türleri olabilir (int, double, BigInt, vb.).
// - Böylece aritmetik işlemleri (+ / 2) güvenli şekilde yapabiliriz.
// - String gibi num olmayan türler olamaz (compile error alırız).

void main(List<String> args) {
  // ========================================================================
  // ÖRNEK 1: ortalamaHesapla<int> ile çağrı
  // ========================================================================
  // ortalamaHesapla<int>(3, 5) : T yerine int türü konur.
  // Parametreler: 3 (int) ve 5 (int), ortalama: (3 + 5) / 2 = 4.0 (double).
  double ortalama = ortalamaHesapla<int>(3, 5);
  print(ortalama); // Çıktı: 4.0

  // ========================================================================
  // ÖRNEK 2: ortalamaHesapla<double> ile çağrı
  // ========================================================================
  // ortalamaHesapla<double>(1.5, 3.5) : T yerine double türü konur.
  // Parametreler: 1.5 (double) ve 3.5 (double), ortalama: (1.5 + 3.5) / 2 = 2.5 (double).
  double ortalamaDouble = ortalamaHesapla<double>(1.5, 3.5);
  print(ortalamaDouble); // Çıktı: 2.5
  
  // ========================================================================
  // GÖZLEMLER:
  // 1. Fonksiyon aynı, ama T'ye atanan tür değişiyor.
  // 2. T extends num sayesinde sadece sayısal türler kabul edilir.
  // 3. Hem int hem double ile çalışır (ikisi de num'un alt türüdür).
  // 4. Return type her zaman double (hesaplamanın sonucu double olur).
  // ========================================================================
}

// GENERIC FONKSIYON TANIMLAMASI
// double ortalamaHesapla<T extends num>(s1, s2)
//
// Parametreler:
// - <T extends num> : Generic type parameter, num veya alt türleriyle kısıtlanmış.
// - s1, s2 : Tip belirtilmemiş parametreler (runtime'da T türü ile çalışır).
//            s1 ve s2 gerçekte T türündedir (int ya da double).
//
// İşlem: (s1 + s2) / 2
// - s1 + s2 : İki sayının toplamı.
// - / 2 : Toplamı 2'ye böl (ortalama).
// - int + int = int, int / 2 = double (tamsayı bölme ~/ değil, ondalık bölme /).
// 
// Return: double (her zaman ondalık sayı döner).

double ortalamaHesapla<T extends num>(s1, s2) {
  return (s1 + s2) / 2; // İki sayının aritmetik ortalamasını hesapla
}