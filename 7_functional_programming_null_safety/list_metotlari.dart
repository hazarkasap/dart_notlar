/**
 * Functional Programming: İleri Seviye Liste Metotları
 */
void main(List<String> args) {
  List<Ogrenci> ogrenciler = [];

  ogrenciler.add(Ogrenci(1, "Emre", true));
  ogrenciler.add(Ogrenci(2, "Ayşe", false));
  ogrenciler.add(Ogrenci(3, "Hasan", true));
  ogrenciler.add(Ogrenci(4, "Kemal", false));
  ogrenciler.add(Ogrenci(5, "Yılmaz", false));

  // 1. any: Koşulu sağlayan EN AZ BİR eleman varsa true döner.
  var sonucAny = ogrenciler.any((Ogrenci ogr) => ogr.id > 5);
  print("ID'si 5'ten büyük biri var mı? $sonucAny");

  // 2. every: TÜM elemanlar koşulu sağlıyorsa true döner.
  var everySonuc = ogrenciler.every((element) => element.ad.length > 0);
  print("Tüm öğrencilerin ismi var mı? $everySonuc");

  // 3. map: Listeyi başka bir yapıya dönüştürür (Örn: Sadece isimlerden oluşan liste).
  // toList() veya toSet() ile tekrar listeye çevrilmelidir.
  var isimlerListesi = ogrenciler.map((e) => e.ad).toList();
  print("Öğrenci İsimleri: $isimlerListesi");

  // 4. asMap: Listeyi indeksi anahtar (key) olan bir Map'e dönüştürür.
  var sonucMap = ogrenciler.asMap();
  print("Map Hali: $sonucMap");

  // 5. contains: Belirli bir nesnenin listede olup olmadığını kontrol eder.
  print("Listede emre nesnesi var mı? ${ogrenciler.contains(ogrenciler[0])}");
  
  // 6. elementAt: Belirli bir indeksteki elemanı getirir.
  var bulunanOgrenci = ogrenciler.elementAt(2);
  print("2. indeksteki öğrenci: $bulunanOgrenci");
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