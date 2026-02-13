/**
 * Kontrol Yapıları ve Döngüler: Bölüm Sonu Soruları
 */
import 'dart:io';

void main(List<String> args) {
  // Soru 1: Kullanıcıdan aldığınız 3 sayının ortalamasını bulan uygulama.
  print("--- Soru 1: Ortalama Hesaplama ---");
  int toplam = 0;
  for (var i = 0; i < 3; i++) {
    print("${i + 1}. sayıyı giriniz:");
    // stdin.readLineSync()! -> Kullanıcıdan gelen değerin null olmayacağından eminiz.
    int sayi = int.parse(stdin.readLineSync()!);
    toplam += sayi;
  }
  var ortalama = toplam / 3;
  print("Sayıların ortalaması = $ortalama");
  
  // Soru 2: Vize %40, Final %60 etkili not ortalaması. Geçme notu: 50.
  print("\n--- Soru 2: Vize/Final Hesaplama ---");
  print("Vize notunuzu giriniz:");
  var vize = double.parse(stdin.readLineSync()!);
  print("Final notunuzu giriniz:");
  var finalNotu = double.parse(stdin.readLineSync()!);
  
  var notOrtalamasi = (vize * 0.4) + (finalNotu * 0.6);
  if (notOrtalamasi >= 50) {
    print("Tebrikler! Ortalamanız $notOrtalamasi ile geçtiniz.");
  } else {
    print("Ortalamanız $notOrtalamasi. Maalesef dersten kaldınız.");
  }

  // Soru 3: Faktöriyel hesaplama (While döngüsü ile).
  print("\n--- Soru 3: Faktöriyel Hesaplama ---");
  print("Faktöriyeli hesaplanacak sayıyı giriniz:");
  var girenSayi = int.parse(stdin.readLineSync()!);
  int fkt = 1;
  int yedekSayi = girenSayi;
  
  while (yedekSayi > 0) {
    fkt *= yedekSayi;
    yedekSayi--;
  }
  print("$girenSayi! = $fkt");
}