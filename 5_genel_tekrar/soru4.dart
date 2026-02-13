/**
 * Soru 4: Kişi bilgilerini (ad, soyad, renkler) tutan Map yapısı oluşturun.
 * Renkleri liste olarak tutun. İki kişiyi tek bir listede birleştirin.
 */
void main(List<String> args) {
  // Map içinde Liste kullanımı (Nested Collection)
  var myMap = {
    "ad": "Hazar",
    "soyad": "Kasap",
    "renkler": ["mavi", "yeşil", "kırmızı"]
  };

  var friendMap = {
    "ad": "Melih",
    "soyad": "Armanç",
    "renkler": ["sarı", "kırmızı"]
  };

  // Map'leri tutan bir liste oluşturuyoruz.
  List<Map<String, dynamic>> kisiler = [];
  kisiler.add(myMap);
  kisiler.add(friendMap);
  
  print("Kişiler Listesi: $kisiler");  
  
  // Karmaşık yapıdan veri çekme:
  // 0. indeksteki kişinin (Hazar), renkler listesindeki 1. eleman (yeşil)
  print("Hazar'ın ikinci sevdiği renk: ${kisiler[0]['renkler'][1]}");
}
