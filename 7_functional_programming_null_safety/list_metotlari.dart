
/**
 * Functional Programming: İleri Seviye Liste Metotları
 */
void main(List<String> args) {
  List<Ogrenci> ogrenciler = [];

  // add(element)
  // - Listeye yeni bir eleman ekler. Eğer aynı referans/nesne daha önce
  //   eklenmişse yine eklemeye çalışır; duplicate kontrolü yapmaz.
  ogrenciler.add(Ogrenci(1, "Emre", true));
  ogrenciler.add(Ogrenci(2, "Ayşe", false));
  ogrenciler.add(Ogrenci(3, "Hasan", true));
  ogrenciler.add(Ogrenci(4, "Kemal", false));
  ogrenciler.add(Ogrenci(5, "Yılmaz", false));

  // 1. any(predicate)
  // - Predicate fonksiyonunu sağlayan en az bir eleman varsa `true` döner.
  // - Kısa devre (short-circuit) olarak ilk eşleşmede durur.
  var sonucAny = ogrenciler.any((Ogrenci ogr) => ogr.id > 5);
  print("ID'si 5'ten büyük biri var mı? $sonucAny");

  // 2. every(predicate)
  // - Listedeki tüm elemanlar predicate'i sağlıyorsa `true` döner.
  // - İlk başarısız olan elemanda false döner (kısa devre).
  var everySonuc = ogrenciler.every((element) => element.ad.length > 0);
  print("Tüm öğrencilerin ismi var mı? $everySonuc");

  // 3. map(transform)
  // - Her elemanı verilen dönüşüm fonksiyonuna sokar ve lazy (tembel) bir
  //   iterable döner. Gerçek liste gerekiyorsa `toList()` veya `toSet()` ile
  //   sonlandırılmalıdır.
  var isimlerListesi = ogrenciler.map((e) => e.ad).toList();
  print("Öğrenci İsimleri: $isimlerListesi");

  // 4. asMap()
  // - Listenin indeksini anahtar (key) olarak kullanıp bir `Map<int, T>`
  //   döner. Örneğin 0 -> ilk eleman, 1 -> ikinci eleman şeklinde eşleme olur.
  var sonucMap = ogrenciler.asMap();
  print("Map Hali: $sonucMap");

  // 5. contains(element)
  // - Liste içinde `==` ile eşleşen bir eleman varsa true döner.
  // - Nesne kimliği yerine `==` operatörü kullanılır; bu yüzden `==` override
  //   edildiyse onun davranışı geçerlidir.
  print("Listede emre nesnesi var mı? ${ogrenciler.contains(ogrenciler[0])}");
  
  // 6. elementAt(index)
  // - Belirtilen indeksteki elemanı döner. İndeks sınırları dışındaysa hata fırlatır.
  var bulunanOgrenci = ogrenciler.elementAt(2);
  print("2. indeksteki öğrenci: $bulunanOgrenci");

  // 7. sort([compare])
  // - Listeyi yerinde (in-place) sıralar. `compare` fonksiyonu iki eleman
  //   alır ve negatif/pozitif/0 döndürerek sıralama düzenini belirler.
  // - compare yoksa doğal sıralama kullanılır (elemanlar Comparable ise).
  // - Örnek: ada göre alfabetik sıralama
  ogrenciler.sort((a, b) => a.ad.compareTo(b.ad));
  print(ogrenciler);

  // - Örnek: id alanına göre artan şekilde sıralama (manuel comparator)
  ogrenciler.sort((Ogrenci ogr1, Ogrenci ogr2) {
    if (ogr1.id > ogr2.id) {
      return 1;
    } else if (ogr1.id < ogr2.id) {
      return -1;
    } else {
      return 0;
    }
  });

  print(ogrenciler);
}

class Ogrenci {
  int id;
  String ad;
  bool aktifMi;

  Ogrenci(this.id, this.ad, this.aktifMi);

  @override
  String toString() {
    return "id: $id, ad: $ad, aktiflik: $aktifMi";
  }
}