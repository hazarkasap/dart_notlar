void main(List<String> args) {
  Set<int> tekSayilar= Set(); // bu yapı listeden farklı olarak bir elemanı yalnız bir kere tutar.
  tekSayilar.add(1);
  tekSayilar.add(3);
  tekSayilar.add(5);
  tekSayilar.add(3);

  //var ciftSayilar = {}; şeklinde tanım, map olarak ele alınır
  var ciftSayilar = <int>{}; // şeklindeki kullanım sete daha uygundur 
  ciftSayilar.add(2);
  ciftSayilar.add(4);
  ciftSayilar.add(2);

  print(ciftSayilar);
  print(tekSayilar);

  var sayilar = <int>{};
  sayilar.addAll(tekSayilar);
  sayilar.addAll(ciftSayilar);// verilen sayıların sırası önemli değildir. tekrarı olmayacak şekilde tutar.
  sayilar.addAll([5,5,5,5,5,92,92,7,7]);
  print(sayilar);
  // peki daha pratik bir yol var mı

  sayilar.clear();
  sayilar = <int>{...tekSayilar,...ciftSayilar,...[5,55,5,55,73,73,0]};
  print(sayilar);

  //hali hazırda elimizde bulunan bir listeyi veya set yapısını nasıl bir set değişkenine atarız(tekrar eden elemenlardan kurtulmak)
  var numaralar = Set.from([5,5,5,5,2,3,5,8,9,0]);
  var numaralar2 = Set.from({5,5,5,5,2,3,5,8,9,0});// burda set yapısında tekrar eden eleman bulunmaz tarzında bir uyarı veriyor ama sorunsuz çalışacaktır.


  print(numaralar);
  print(numaralar2);
  print(numaralar.contains(5));// 5 değerini içeriyor mu
  print(numaralar.remove(4565));// belirtilen değeri kaldır.


}