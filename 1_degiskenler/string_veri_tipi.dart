void main(List<String> args) {
  String ad ="Hazar";
  String soyAd= "Kasap";
  int yas =20;
  bool mutluMu = false;
  print(ad);
  print(soyAd);
  print(ad + " " +soyAd); // interpolation

  print("$ad $soyAd gururla sunar. Yaş $yas, Mutluluk: $mutluMu.");
  print(ad.length);

  var tamAd = ad + " " + soyAd;
  print(tamAd.length);
  print("Adınız: $ad ve soyadınız: $soyAd. Ad ve soyadınızın uzunluğu: ${(ad + " " + soyAd).length}");

}