// istisna_sinifimiz.dart
// Bu dosya Dart'ta ÖZEL İSTİSNA SINIFI (Custom Exception Class) tanımlamasını gösterir.
// AgeException: Yaş doğrulama hatası için özel istisnayı implement eden sınıf.

void main(List<String> args) {
  // main fonksiyonu: Özel istisnayı yakalayan yer.
  try {
    // Ogrenci sınıfının constructor'ına -20 (negatif) değeri gönder.
    // Bu değer yapıcı içinde kontrol edilecek ve hatayı tetikleyecek.
    Ogrenci hazar = Ogrenci(-20);
    print(hazar.yas);
    
  } on AgeException catch (e) {
    // AgeException (bizim tanımladığımız özel istisna) burada yakalanır.
    // 'e' değişkeni AgeException nesnesini temsil eder.
    // e.mesaj ile özel mesaja ulaşılabilir (şu anda yorum satırında).
    //print(e.mesaj);
    
    // print(e) farklı davranış: toString() metodunu çağırarak "Age Exception to string çalıştı" yazdırır.
    print(e);
    
  } catch (e) {
    // Diğer istisnalar (AgeException dışında) burada yakalanır.
    print(e);
  }
}

// ============================================================================
// AgeException: ÖZEL İSTİSNA SINIFI (Custom Exception Class)
// ============================================================================
// Exception arayüzünü implement ederek kendi istisna türümüzü oluşturduk.
// Bu sayede belirli hataları specific olarak yakalayabiliriz.
class AgeException implements Exception {
  // mesaj: İstisna hakkında açıklayıcı metin tutan property.
  // Varsayılan değeri "Age Exception Oldu." olarak ayarlanmıştır.
  String mesaj;
  
  // Constructor: Named parameter 'mesaj' ile özel mesaj gönderilebilir.
  // Örnek: AgeException(mesaj: "Yaş negatif olmaz")
  AgeException({this.mesaj = "Age Exception Oldu."});

  // toString(): İstisnanın metin temsilini sağlar.
  // Bu metodu override etmek, print() çağrıldığında varsayılan "Instance of..." yerine
  // kendi hazırladığımız mesajı görüntülememizi sağlar.
  @override
  String toString() {
    // Bu return değeri "print(e)" çalıştırıldığında ekrana yazılır.
    return "Age Exception to string çalıştı"; // Custom mesaj döner.
  }
}

// ============================================================================
// Ogrenci: Özel İstisna Fırlatan Sınıf
// ============================================================================
class Ogrenci {
  int yas = 0; // Öğrencinin yaşını tutan property.
  
  // Constructor: Parametreden gelen yas değerini doğrular.
  Ogrenci(int yas) {
    // Yaş kontrolü: Negatif ise özel istisna fırlat.
    if (yas < 0) {
      // throw: AgeException istisnasını fırlat ve detaylı mesaj gönder.
      // Bu istisna main'deki try/catch tarafından yakalanacak.
      throw AgeException(mesaj: "Yaş negatif olmaz (Age Exception)");
    } else {
      // Geçerli yaş: Member variable'a ata.
      this.yas = yas;
    }
  }
}