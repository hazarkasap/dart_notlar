void main(List<String> args) {
  // Örnek listeler
  var sayilar = [1, 2, 3, 4];
  var isimler = ["emre", "hasan", "ali", "ayse"];

  // Map.fromIterable(iterable, key:..., value:...)
  // - Verilen iterable üzerinden anahtar ve değer üretmek için kullanılır.
  // - Burada anahtar olarak elemanın kendisini, değer olarak elemanın karesinin
  //   string hâlini atıyoruz.
  var myMap = Map<int, String>.fromIterable(
    sayilar,
    key: (element) => element,
    value: (element) => (element * element).toString(),
  );
  print(myMap); // {1: "1", 2: "4", 3: "9", 4: "16"}

  // Map.fromIterables(keys, values)
  // - İki farklı iterable'ı (anahtarlar ve değerler) alıp bir Map oluşturur.
  // - keys ve values aynı uzunlukta olmalıdır.
  var myMap2 = Map.fromIterables(sayilar, isimler);
  print(myMap2); // {1: "emre", 2: "hasan", 3: "ali", 4: "ayse"}

  // putIfAbsent(key, ifAbsent)
  // - Eğer belirtilen anahtar yoksa, verilen fonksiyon çalıştırılıp değer eklenir.
  // - Anahtar zaten varsa mevcut değer korunur.
  myMap.putIfAbsent(5, () => "70");
  print(myMap); // 5 anahtarı eklenir

  // update(key, updateFunction)
  // - Verilen anahtarın değerini günceller. Anahtar yoksa hata verir.
  // - update fonksiyonuna eski değer geçer; burada string sayıyı parse edip karesini alıyoruz.
  myMap.update(5, (value) => (int.parse(value) * int.parse(value)).toString());
  print(myMap); // 5'in değeri güncellenir

  // updateAll(updateFunction)
  // - Map içindeki her bir anahtar-değer çifti için verilen fonksiyonu uygular
  //   ve tüm değerleri dönen sonuçla değiştirir.
  myMap.updateAll((key, value) => "emre");
  print(myMap); // Tüm değerler "emre" olur
}
