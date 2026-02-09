void main(List<String> args) {
  List<int> sayilar = List.filled(4, 0,growable: true);
  List<int> sayilar2 = List.empty(growable: true);
  List<int> sayilar3 = [];

  // sayilar3[0] = 3; gibi bir indeksle beraber kullanımı yanlıştır
  sayilar3.add(4);// yeni bir yer açar ve yazar
  sayilar.add(5);// sonuna eklediği yere yazar
  sayilar2.add(2);// yeni bir yer açar ve yazar

  print(sayilar);
  print(sayilar2);
  print(sayilar3);

  var sehirler = List<String>.empty(growable: true); // böylede bir tanım yapılabilir var kullanımınında
  sehirler.add("ankara");
}