/**
 * Nesne Yönelimli Programlama: Statik Kavramı (Static)
 * 
 * Static: Bir değişkenin veya metodun nesneye değil, sınıfa özgü olmasıdır.
 * Nesne oluşturmadan sınıf ismi üzerinden erişilebilir.
 */
void main(List<String> args) {
  Matematik m1 = Matematik(20, 10);
  m1.topla();
  m1.cikar();

  Matematik m2 = Matematik(30, 5);
  m2.topla();
  
  // static olmayan değişkenlere nesne (m1, m2) üzerinden erişilir.
  // static olanlara ise doğrudan sınıf ismi (Matematik) üzerinden erişilir.
  print("Yapılan toplam işlem sayısı: ${Matematik.toplamIslemSayisi}");
  
  // Örnek: Matematik kütüphanesindeki PI sayısı statiktir.
  print("PI Değeri: ${Matematik.PI}");
}

class Matematik {
  // Instance Variables (Nesneye özgü - her nesne için ayrı ayrı tutulur)
  int birinciSayi = 0;
  int ikinciSayi = 0;

  // Static Variables (Sınıfa özgü - tüm nesneler ortak bu değişkeni kullanır)
  static int toplamIslemSayisi = 0;
  static double PI = 3.14;

  Matematik(this.birinciSayi, this.ikinciSayi);

  void topla() {
    print("Toplam: ${birinciSayi + ikinciSayi}");
    toplamIslemSayisi++;
  }

  void cikar() {
    print("Fark: ${birinciSayi - ikinciSayi}");
    toplamIslemSayisi++;
  }
}