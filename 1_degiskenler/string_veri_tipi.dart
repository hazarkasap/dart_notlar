/**
 * Veri Tipleri: String
 * 
 * Metinsel ifadeleri tutmak için kullanılır.
 * Tek tırnak ('') veya çift tırnak ("") kullanılabilir.
 */
void main(List<String> args) {
  String ad ="Hazar";
  String soyAd= "Kasap";
  int yas =20;
  bool mutluMu = false;

  print(ad);
  print(soyAd);
  
  // String birleştirme (Concatenation)
  print(ad + " " +soyAd); 

  // String Interpolation: Değişkenleri string içinde doğrudan kullanma
  // Tek bir değişken için $değişken_adı, ifade çalıştırmak için ${ifade} kullanılır.
  print("$ad $soyAd gururla sunar. Yaş $yas, Mutluluk: $mutluMu.");
  
  // Bir string'in karakter sayısını bulma
  print(ad.length);

  var tamAd = ad + " " + soyAd;
  print(tamAd.length);
  
  // Interpolation içinde işlem yapma örneği
  print("Adınız: $ad ve soyadınız: $soyAd. Ad ve soyadınızın uzunluğu: ${(ad + " " + soyAd).length}");

}