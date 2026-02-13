/**
 * Değişkenler ve Interpolation: Pratik Sorular
 */
void main(List<String> args) {
  // Soru 1: Üçgenin çevresini hesaplayıp yazdırınız.
  int k1=5, k2=6, k3=2;
  // İşlemleri doğrudan ${} bloğu içinde yapabiliriz.
  print("Üçgenin çevresi: ${k1 + k2 + k3}");

  // Soru 2: Ad, doğum yılı ve güncel yılı tutarak yaş bilgisini formatlı yazdırınız.
  var isim = "Hazar";
  var guncelYil = 2026;
  var dogumYili = 2005;
  
  // \n ifadesi bir alt satıra geçmek için kullanılır.
  print("Adınız: $isim,\nDoğum yılı: $dogumYili,\nYaş: ${guncelYil - dogumYili}");
}