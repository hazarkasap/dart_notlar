/**
 * Koleksiyon Yapıları: Map (Sözlük)
 * 
 * Anahtar-Değer (Key-Value) çiftlerinden oluşur.
 * Her anahtar eşsiz olmalıdır, ancak değerler tekrar edebilir.
 */
void main(List<String> args) {
  // Map<Key_Tipi, Value_Tipi>
  Map<String, int> myMap = {
    'bir': 1,
    'iki': 2,
    'üç': 3,
  };
  print(myMap);

  Map<String, int> alanKodlari = {"Ankara": 312, "Bursa": 224, "İstanbul": 212};
  
  // Flutter'da çok yaygın kullanılan Map<String, dynamic> yapısı:
  // Anahtarlar String, değerler ise herhangi bir tipte olabilir.
  var bilgiler = <String, dynamic>{
    "ad": "Hazar",
    "yas": 20,
    "mezunMu": false
  };

  // Veriye erişim anahtar üzerinden yapılır.
  print("Ankara'nın kodu: ${alanKodlari["Ankara"]}");
  print("Yanlış anahtar sonucu: ${alanKodlari["İzmir"]}"); // Null döner.

  // Map Üzerinde Gezinme:
  print("\n--- Map Keys ---");
  for (var key in alanKodlari.keys) {
    print("Key: $key");
  }

  print("\n--- Map Values ---");
  for (var value in alanKodlari.values) {
    print("Value: $value");
  }

  print("\n--- Map Entries (Key-Value) ---");
  for (var entry in alanKodlari.entries) {
    print("${entry.key} -> ${entry.value}");
  }

  // Map Birleştirme (Spread Operatörü)
  var map1 = {"isim": "Hazar"};
  var map2 = {"soyisim": "Kasap"};
  var sonMap = {...map1, ...map2};
  print("\nBirleştirilmiş Map: $sonMap");

  // containsKey: Belirtilen anahtarın varlığını kontrol eder.
  print("Bursa var mı? ${alanKodlari.containsKey('Bursa')}");
}