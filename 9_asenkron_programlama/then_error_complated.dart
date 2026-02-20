// then_error_complated.dart
//
// FUTURE ZİNCİRLEME (.then, .catchError, .whenComplete)
// ============================================================================
// Asenkron işlemler sırasında:
// 1. .then() : Future başarılı tamamlanırsa çalışır (başarılı sonuç döner)
// 2. .catchError() : Future hataya neden olursa çalışır (hata yakalanır)
// 3. .whenComplete() : Future nasıl tamamlanırsa tamamlansın her zaman çalışır
//
// FUTURE NEDİR?
// - Future<T> : Gelecekte bir T türü değer döneceği vaat eden nesne
// - Future<String> : Gelecekte String döneceği vaat eder
//
// CHAINING (ZİNCİRLEME) NEDİR?
// - .then().catchError().whenComplete() : İşlemler sırayla bağlanır
// - Bir önceki işlem bitince sonraki başlar (pipeline benzeri)
// - Hata olursa .then() atlanır, .catchError() başlatılır
// - .whenComplete() her iki durumda da (başarı/hata) çalışır
// ============================================================================

void main(List<String> args) {
  // Program başlangıcı
  print("Fonksiyon çağırıldı.");
  
  // Asenkron fonksiyon çağrılır, Future<String> döner
  Future<String> sonuc = fonksiyon();
  
  // ========================================================================
  // FUTURE ZİNCİRİ: .then() → .catchError() → .whenComplete()
  // ========================================================================
  sonuc
    // .then() : Future başarılı tamamlanırsa (başarı durumunda) çalışır
    // (value) : Future'den dönen başarılı değeri yakalar (String)
    // Bu örnekte value = "Fonksiyon: İşlem tamamlandı." (veya throw)
    .then((value) {
      print(value);
    })
    
    // .catchError() : Future hata fırlatırsa (throw) çalışır
    // (hata) : Fırlatılan hatayı yakalar (String veya Exception)
    // Bu örnekte hata = "İşlem başarısız."
    .catchError((hata) {
      print(hata);
    })
    
    // .whenComplete() : Future'nin başarısı olsun hatası olsun çalışır
    // Temizme işleri (dosya kapatma, state sıfırlama vb.) buraya konur
    // Bu örnekte her zaman "Fonksiyon tamamlandı." yazdırılır
    .whenComplete(() {
      print("Fonksiyon tamamlandı.");
    });
  
  // Bu satırlar HEMEN yazdırılır (Future bitmeyi beklemez)
  // Future'ın zinciri arka planda çalışmaya devam eder
  print("Fonksiyon sonrası işlem 1 tamamlandı.");
  print("Fonksiyon sonrası işlem 2 tamamlandı.");
  print("Fonksiyon sonrası işlem 3 tamamlandı.");
}

// Future<String> dönen asenkron fonksiyon
Future<String> fonksiyon() {
  // Fonksiyon başlangıcı mesajı
  print("Fonksiyon: İşlem başladı.");
  
  // 5 saniye sonra işlem yapacak Future oluştur
  // Future.delayed() : Belirtilen süre sonra callback'i çalıştırır
  var myFuture = Future.delayed(Duration(seconds: 5), () {
    // Bu callback'in içinde iki seçenek var:
    
    // SEÇENEK 1: Başarılı sonuç döndür (aktif değil (//) ile kapatılı)
    // return "Fonksiyon: İşlem tamamlandı.";
    // → Future başarıyla tamamlanır, .then() çalışır
    
    // SEÇENEK 2: Hata fırlat (şu anda aktif)
    throw "İşlem başarısız.";
    // → Future hataya neden olur, .then() ATLANIR, .catchError() çalışır
  });

  // Future'i döndür (çık işin başında)
  return myFuture;
}

// ============================================================================
// KÖD AKIŞı (throw aktif olduğunda):
// ============================================================================
// 1. "Fonksiyon çağırıldı." yazdırılır
// 2. fonksiyon() çağrılır
// 3. "Fonksiyon: İşlem başladı." yazdırılır
// 4. Future 5 saniye için planlanır (arka planda)
// 5. "Fonksiyon sonrası işlem 1,2,3" HEMEN yazdırılır (beklemez)
// 6. 5 saniye geçer...
// 7. Future'un callback'i çalışır, throw "İşlem başarısız."
// 8. .then() ATLANIR (çünkü hata var)
// 9. .catchError() çalışır, hata yakalanır: print("İşlem başarısız.")
// 10. .whenComplete() çalışır: print("Fonksiyon tamamlandı.")
// ============================================================================