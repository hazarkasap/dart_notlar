// asenkron_programlama.dart
//
// ASENKRON PROGRAMLAMA (Asynchronous Programming) NEDİR?
// ============================================================================
// Senkron (Synchronous) : Kod satır satır, sırayla çalışır. Bir işlem bitene
//                         kadar sonraki satır bekler.
// Asenkron (Asynchronous) : Uzun süren işlemler arka planda çalışırken, 
//                           diğer kodlar bloke olmadan çalışmaya devam eder.
//
// NEDEN GEREKLİ?
// - Ağ isteği, dosya okuma, veritabanı sorgusu gibi işlem ağır görevler
//   senkron yapılsa uygulamayı dondurur.
// - Asenkron ile bu işlemler arka planda çalışırken, ana thread'in diğer
//   işlemleri yapmasına izin verir.
// - Mobil ve web uygulamalarında UI donması engellenir.
//
// FUTURE NEDİR?
// - Future<T> : Gelecekte tamamlanacak bir işlemi temsil eder.
// - Future.delayed() : Belirli bir süre sonra bir işlemi çalıştırır.
// - Bu örnekte Future.delayed() arka planda 10 saniye bekler, sonra mesaj
//   yazdırır.
//
// CALLBACK NEDİR?
// - () => print(...) : Lambda fonksiyonu (anonim fonksiyon), future tamamlandığında
//   çalıştırılacak işlemi tanımlar.
//
// KOD AKIŞı:
// 1. main() başlar.
// 2. "Fonksiyon çağırıldı" yazdırılır.
// 3. fonksiyon() çağrılır (Future.delayed() başlatılır, arka planda).
// 4. fonksiyon() hemen geri döner (işlemi bitirmeyi beklemez).
// 5. "Fonksiyon sonrası işlem 1,2,3" hemen yazdırılır (beklemez).
// 6. 10 saniye sonra "Fonksiyon: İşlem bitti(10s)" yazdırılır.
// ============================================================================

void main(List<String> args) {
  // Program başlamada mesaj
  print("Fonksiyon çağırıldı.");
  
  // fonksiyon() çağrılır - Future.delayed() başlatılır ama bitmesini beklemez
  fonksiyon();
  
  // Bu satırlar HEMEN sırayla yazdırılır (fonksiyon bitmeyi beklemez)
  print("Fonksiyon sonrası işlem 1 tamamlandı.");
  print("Fonksiyon sonrası işlem 2 tamamlandı.");
  print("Fonksiyon sonrası işlem 3 tamamlandı.");
  
  // Programın sonlanması: Future tamamlansa da tamamlanmasa da
  // main() burada bitiyor. Fakat Dart runtime, Future bitene kadar
  // uygulamayı canlı tutar ve callback'i çalıştırır (10s sonra).
}

// fonksiyon() : Asenkron işlem başlatan fonksiyon
void fonksiyon() {
  // Fonksiyon başladığında mesaj
  print("Fonksiyon: İşlem başladı.");
  
  // Future.delayed() : Belirli bir süre sonra callback fonksiyonunu çalıştır
  // Parametreler:
  // - Duration(seconds: 10) : 10 saniye bekle
  // - () => print(...) : Bittikten sonra bu callback'i çalıştır (arrow syntax)
  // 
  // ÖNEMLI: Future.delayed() hemen geri döner. Gerçek işlem arka planda 
  // yapılır, fonksiyon bitmeyi beklemez.
  Future.delayed(
    Duration(seconds: 10), // 10 saniye süre
    () => print("Fonksiyon: İşlem bitti(10s)"), // Callback: 10s sonra çalış
  );
  
  // Bu satıra varır, arka plandaki işlemi beklemeden fonksiyon biter
}