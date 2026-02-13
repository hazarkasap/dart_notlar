import 'dart:math';

class UyelikIslemleri {
  // Başına "_" konulan değişkenler 'private' olur ve sadece bu dosyadan erişilebilir.
  String _kullaniciAdi = "";

  // SET: Dışarıdan private değişkene değer atamak için kullanılır.
  // Mantıksal kontroller (doğrulama vb.) burada yapılabilir.
  void set kullaniciAdiniGuncelle(String ad) {
    if (ad.length > 3) {
      _kullaniciAdi = ad;
    } else {
      print("Kullanıcı adı çok kısa!");
    }
  }

  // GET: Private değişkenin değerini kontrollü bir şekilde dışarıya sunar.
  String get kullaniciAdiniGoster {
    return "Mevcut Kullanıcı: $_kullaniciAdi";
  }

  bool uyeSil() {
    if (_uyeVarMi()) {
      print("Üye bulundu ve sistemden silindi.");
      return true;
    } else {
      print("Silinecek üye bulunamadı.");
      return false;
    }
  }

  // Private Metot: Sadece sınıf içinden yardımcı fonksiyon olarak kullanılır.
  bool _uyeVarMi() {
    return Random().nextBool();
  }
}