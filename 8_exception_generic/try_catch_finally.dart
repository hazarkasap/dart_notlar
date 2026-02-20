// try_catch_finally.dart
// Bu dosya Dart'ta try / on / catch / finally kullanımını gösterir.
// Açıklamalar Türkçe yorum satırları şeklinde eklendi.

// Kısa özet:
// - try { ... } : Hata riski olan kod buraya yazılır.
// - on ExceptionType catch (e) : Belirli bir istisna türünü yakalar.
// - catch (e, stackTrace) : Tür belirtmeden tüm istisnaları yakalar. stackTrace hata izi içerir.
// - finally { ... } : Hata olsun veya olmasın her zaman çalıştırılır; kaynak temizleme için kullanılır.
// - throw : Kendi istisnanızı fırlatmak için.
// - rethrow : Yakalanan istisnayı tekrar fırlatmak için (üst katmanlarda yakalanması için).

void main(List<String> args) {
  print("Program başladı.");

  // try bloğu: Bu blok içinde hata çıkabilecek kod çalıştırılır.
  try {
    // Burada int.parse("hazar") ifadesi FormatException oluşturur.
    // Integer bölme işlemi sıfıra bölünme gibi başka istisnalar da üretebilir.
    int sayi = 100 ~/ int.parse("hazar"); 
    print(sayi);

  // 'on <Type> catch (e)' : Belirli bir istisna türünü yakalamak için kullanılır.
  } on UnsupportedError catch (e) {
    // UnsupportedError için özel işlem yapılabilir.
    print(e.message);

  } on FormatException catch (e) {
    // FormatException (örn. int.parse başarısız olduğunda) burada yakalanır.
    print(e.message);
    print("Sayılardan biri tam sayı değil {$e}");

  // Tür belirtilmemiş genel catch bloğu: yukarıdaki 'on' bloklarına uymayan tüm hatalar buraya düşer.
  } catch (e) {
    print("Hata Çıktı");
    print(e);

  // finally bloğu: try/catch içinde hata olsa da olmasa da her zaman çalışır.
  // Genelde dosya/bağlantı kapatma veya diğer temizlik işleri buraya konur.
  } finally {
    print("İşlem sonlandı");
  }

  print("Program bitti");
}