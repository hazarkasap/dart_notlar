/**
 * Fonksiyonlar: Bölüm Sonu Soruları
 */
void main(List<String> args) {
  // Soru 1: Parametre olarak int sayı ve boolean değer alan fonksiyon.
  // Sayıya kadar toplasın, bool true ise çiftleri, false ise tekleri toplasın.
  print("10'a kadar olan çift sayıların toplamı: ${kosulluTopla(sayi: 10, ciftMi: true)}");
  print("10'a kadar olan tek sayıların toplamı: ${kosulluTopla(sayi: 10, ciftMi: false)}");

  // Soru 2: Dairenin alanını hesaplayan fonksiyon (PI opsiyonel).
  print("Daire alanı (varsayılan PI): ${daireAlani(2)}");
  print("Daire alanı (PI=3): ${daireAlani(2, 3)}");
}

// Soru 1 Çözümü: Named (İsimlendirilmiş) parametre kullanımı
int kosulluTopla({int sayi = 0, bool ciftMi = false}) {
  int toplam = 0;
  for (var i = 0; i <= sayi; i++) {
    if (ciftMi) {
      if (i % 2 == 0) toplam += i;
    } else {
      if (i % 2 != 0) toplam += i;
    }
  }
  return toplam;
}

// Soru 2 Çözümü: Optional Positional (İsteğe bağlı pozisyonel) parametre kullanımı
double daireAlani(double yaricap, [double pi = 3.14]) {
  return pi * yaricap * yaricap;
}