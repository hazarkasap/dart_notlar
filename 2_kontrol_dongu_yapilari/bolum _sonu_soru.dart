// 1 kullanıcıdan aldığınız 3 sayının ortalamasını bulan uygulama yazınız
// 2 kullanıcıdan aldığınız vize final puanlarıyla not ortalamaısı bulunuz. vize %40 final %60 gecme notu 50
// 3Tanımlanan int bir sayının faktöriyelini bulan uygulamayı yazınız.(while döngüsü ile)

import 'dart:io';

void main(List<String> args) {
  // 1. soru
  /* int toplam =0;
  for (var i = 0; i < 3; i++) {
    print("${i+1}. sayıyı giriniz:");
    int sayi = int.parse(stdin.readLineSync()!);
    toplam += sayi;
  }
  var ortalama = toplam/3;
  print("Sayıların ortalaması = $ortalama"); */
  
  // 2. soru 
  /* print("Vize notunuzu giriniz:");
  var vize = double.parse(stdin.readLineSync()!);
  print("Final notunuzu giriniz:");
  var finalNotu = double.parse(stdin.readLineSync()!);
  var ortalama = (vize*0.4) + (finalNotu*0.6);
  if (ortalama >= 50) {
    print("Tebrikler! Ortalamanız $ortalama.");
  }else{
    print("Ortalamanız $ortalama. Malesef bu dersten geçemediniz.");
  }  */

  // 3. soru
  print("Faktöriyeli hesaplanacak sayıyı giriniz:");
  var sayi = int.parse(stdin.readLineSync()!);
  int fk = 1;
  while (sayi>0) {
    fk *= sayi;
    sayi--;
  }
  print("faktöriyeli = $fk");
}