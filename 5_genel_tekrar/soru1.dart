/**
 * Soru 1: 0-100 arasında rastgele sayılar oluşturup 100 elemanlı bir listeye atama.
 */
import 'dart:math';

void main(List<String> args) {
  // Büyüyen bir liste oluşturuyoruz.
  var sayilar = List<int>.empty(growable: true);
  
  // Random sınıfı rastgele değerler üretmek için kullanılır.
  for (var i = 0; i < 100; i++) {
    // nextInt(101) -> 0 dahil, 101 hariç (0-100 arası) tam sayı üretir.
    sayilar.add(Random().nextInt(101));
  }
  
  print("Üretilen Sayılar: $sayilar");
  print("Liste Uzunluğu: ${sayilar.length}");
}