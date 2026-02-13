/**
 * Koleksiyon Yapıları: Büyüyen (Growable) Listeler
 * 
 * Dinamik olarak eleman eklenebilen veya çıkarılabilen listelerdir.
 */
void main(List<String> args) {
  // 1. List.filled ile growable:true yaparak oluşturma
  List<int> sayilar = List.filled(4, 0, growable: true);
  
  // 2. List.empty ile oluşturma
  List<int> sayilar2 = List.empty(growable: true);
  
  // 3. En yaygın kullanım: [] operatörü ile oluşturma
  List<int> sayilar3 = [];

  // Büyüyen listelere .add() ile eleman eklenir.
  sayilar3.add(4); // Listeye yeni bir alan açar ve değeri yazar.
  sayilar.add(5);
  sayilar2.add(2);

  print("Sayılar 1: $sayilar");
  print("Sayılar 2: $sayilar2");
  print("Sayılar 3: $sayilar3");

  // var ile tanımlama örneği
  var sehirler = List<String>.empty(growable: true);
  sehirler.add("Ankara");
}