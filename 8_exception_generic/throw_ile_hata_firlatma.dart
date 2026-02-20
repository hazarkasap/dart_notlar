import 'dart:math';

// throw_ile_hata_firlatma.dart
// Bu dosya Dart'ta throw ve rethrow kullanımını gösterir.
// Hata fırlatma (throw) ve onu üst seviyeye iletme (rethrow) örneği.

void main(List<String> args) {
  // main fonksiyonu: İstisnaları yakalamak ve işlemek için try/catch kullanır.
  try {
    // karekKokunuHesapla(-12) fonksiyonunu çağır.
    // Eğer negatif sayı gönderilirse, fonksiyon içinde throw ile hata fırlatılacak.
    var sonuc = karekKokunuHesapla(-12);
    print(sonuc);
    
  } on FormatException catch (e) {
    // FormatException yakalanır: karekKokunuHesapla içinde throw edilen istisna burada yakalanır.
    // rethrow sayesinde hata main'in try bloğuna yükselir ve burada işlenir.
    print(e.message);
    print(e);
    
  } catch (e) {
    // Diğer türdeki hatalar (FormatException dışında) buraya düşer.
    print("Bilinmeyen hata");
  }
}

// karekKokunuHesapla fonksiyonu: Hata fırlatma (throw) yapılan yerdir.
double karekKokunuHesapla(int sayi) {
  try {
    // Parametre kontrolü: sayi negatif değerse...
    if (sayi < 0) {
      // throw: Buradan istisnayı fırlatır. Bu hata düzeyi yukarıya çıkar.
      // FormatException("mesaj") türünde bir istisna oluşturur.
      throw FormatException("Parametre negatif olamaz");
    } else {
      // Pozitif ise karekök hesapla ve döndür.
      return sqrt(sayi);
    }
    
  } catch (e) {
    // Bu catch bloğu throw edilen hatayı yakalar.
    // Ancak burada rethrow kullanarak hatayı işlemeden üst seviyeye (main) gönderir.
    // Böylece main içindeki try/catch devreye girer.
    rethrow;
  }
}
