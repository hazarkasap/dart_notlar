void main(List<String> args) {
  var sayilar = <int>[10, 120, 50, 75, 9];
  if (sayilar.isNotEmpty) {
    print(sayilar.first);
    print(sayilar.last);
  }
  sayilar.add(50);
  var yeniListe = <int>[100,60,90,50];
  sayilar.addAll(yeniListe);
  sayilar.addAll([12,13,14]);
  print(sayilar);


  sayilar.remove(50);// ilk gördüğü yerden siler
  print(sayilar);

  sayilar.removeLast();// son elemanı yerden siler
  sayilar.removeAt(0);// 0 indeksli elemanı siler
  print(sayilar.elementAt(0));// 0 indeksli elemanı getir
  print(sayilar.indexOf(50));// saysının indexini veriri

  print(sayilar);
  sayilar.shuffle();// listeyi karıştırır
  print(sayilar);

  print(sayilar.contains(85));// sayıların içerisinde 85 varmı
  
}
