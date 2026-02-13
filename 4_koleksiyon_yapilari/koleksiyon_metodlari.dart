/**
 * Koleksiyonlarda Sık Kullanılan Metodlar
 */
void main(List<String> args) {
  var sayilar = <int>[10, 120, 50, 75, 9];
  
  // 1. Durum Kontrolleri
  if (sayilar.isNotEmpty) {
    print("Listenin ilk elemanı: ${sayilar.first}");
    print("Listenin son elemanı: ${sayilar.last}");
  }
  
  // 2. Eleman Ekleme
  sayilar.add(50);
  var yeniListe = <int>[100, 60, 90];
  sayilar.addAll(yeniListe); // Başka bir listeyi sonuna ekler.
  
  // 3. Eleman Silme
  sayilar.remove(50); // Bulduğu İLK 50 değerini siler.
  sayilar.removeLast(); // Son elemanı siler.
  sayilar.removeAt(0); // Belirli bir indeksteki elemanı siler.
  
  // 4. Bilgi ve Düzenleme
  print("İndeks 0'daki eleman: ${sayilar.elementAt(0)}");
  print("120 sayısının indeksi: ${sayilar.indexOf(120)}");
  
  print("Karıştırma öncesi: $sayilar");
  sayilar.shuffle(); // Elemanların yerini rastgele değiştirir.
  print("Karıştırma sonrası: $sayilar");

  print("Listede 85 var mı? ${sayilar.contains(85)}");
}
