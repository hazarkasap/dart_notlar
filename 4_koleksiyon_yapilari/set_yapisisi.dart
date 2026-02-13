/**
 * Koleksiyon Yapıları: Set (Küme)
 * 
 * Listelerden farkı, her bir elemanı yalnızca BİR kere tutmasıdır.
 * Elemanlar arasında sıralama garantisi yoktur (index yapısı yoktur).
 */
void main(List<String> args) {
  Set<int> tekSayilar = Set();
  tekSayilar.add(1);
  tekSayilar.add(3);
  tekSayilar.add(5);
  tekSayilar.add(3); // 3 zaten var olduğu için tekrar eklenmez.

  // {} kullanımı: Eğer içini boş bırakırsanız Map olarak algılanır.
  // Set için tip belirtmek (<int>{}) gerekir.
  var ciftSayilar = <int>{}; 
  ciftSayilar.add(2);
  ciftSayilar.add(4);
  ciftSayilar.add(2);

  print("Çift Sayılar Set: $ciftSayilar");
  print("Tek Sayılar Set: $tekSayilar");

  var sayilar = <int>{};
  sayilar.addAll(tekSayilar);
  sayilar.addAll(ciftSayilar);
  sayilar.addAll([5, 5, 5, 92, 7]); // Tekrar eden 5'ler elenir.
  print("Birleştirilmiş Set: $sayilar");

  // Spread Operatörü (...) : Koleksiyonları birleştirmek için pratik bir yol.
  sayilar.clear();
  sayilar = <int>{...tekSayilar, ...ciftSayilar, ...[5, 55, 0]};
  print("Spread ile Birleştirilmiş: $sayilar");

  // Listeden Set'e Dönüşüm: Tekrar eden elemanlardan kurtulmak için kullanılır.
  var numaralar = Set.from([5, 5, 2, 3, 5, 8, 9, 0]);
  print("Listeden oluşturulan Set: $numaralar");

  print("5 değeri var mı? ${numaralar.contains(5)}");
  numaralar.remove(0); // Belirtilen değeri kaldırır.
}