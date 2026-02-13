/**
 * Soru 3: Kullanıcıdan alınan pozitif sayıları listeye ekleyin.
 * -1 girildiğinde sayıların ortalamasını yazdırın.
 */
import 'dart:io';

void main(List<String> args) {
  int toplam = 0;
  var sayilar = List<int>.empty(growable: true);

  // Sonsuz döngü başlatıyoruz, break ile çıkacağız.
  while (true) {
    print("Sayı giriniz (Çıkış için -1):");
    var girdi = stdin.readLineSync();
    
    // int.tryParse: Giriş sayıya çevrilemiyorsa hata vermek yerine null döner.
    var sayi = int.tryParse(girdi ?? ""); 

    if (sayi == -1) {
      if (sayilar.isNotEmpty) {
        double ortalama = toplam / sayilar.length;
        print("\nGirilen Sayılar: $sayilar");
        print("Sayıların Ortalaması: $ortalama");
      } else {
        print("Hiç sayı girilmedi.");
      }
      break;
    } else if (sayi == null || sayi < 0) {
      print("Geçersiz giriş! Lütfen pozitif bir tam sayı giriniz.");
    } else {
      sayilar.add(sayi);
      toplam += sayi;
    }
  }
}