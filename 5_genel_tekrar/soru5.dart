/**
 * Soru 5: 0-100 arası rastgele 1000 elemanlı liste oluşturun.
 * Hangi sayının kaç kere tekrar ettiğini bir Map yapısında saklayın.
 */
import 'dart:math';

void main(List<String> args) {
  // 1000 elemanlı liste oluşturup rastgele sayılarla dolduruyoruz.
  List<int> sayilar = List.filled(1000, 0);
  for(int i = 0; i < sayilar.length; i++){
    sayilar[i] = Random().nextInt(101);
  }

  // Key: Sayı, Value: Tekrar Sayısı
  Map<int, int> tekrarSayilari = {};

  for (var sayi in sayilar) {
    if (tekrarSayilari.containsKey(sayi)) {
      // Eğer sayı map'te varsa, mevcut değerini 1 artır.
      tekrarSayilari[sayi] = tekrarSayilari[sayi]! + 1;
    } else {
      // Eğer sayı map'te yoksa, ilk kez eklendiği için değeri 1 yap.
      tekrarSayilari[sayi] = 1;
    }
  }

  // Sonuçları yazdıralım
  print("Sayıların Tekrar Sayıları:");
  tekrarSayilari.forEach((sayi, tekrar) {
    if (tekrar > 1) {
      print("$sayi sayısı $tekrar kere üretilmiştir.");
    }
  });
}
