import 'dart:io';

void main(List<String> args) {
  print("Adınızı giriniz:");
  var ad = stdin.readLineSync();// kullanıcıdan değer alma 
  print("Sayın $ad, hoşgeldiniz");
  
  print("Yaşınızı giriniz:");
  var yas = int.parse(stdin.readLineSync()!);// ! işaretini sistemin burası NULL bir değer olabilir uyarısını kabul etmek için kullanıyoruz
  print("Girdiğiniz yas değeri:$yas");
  
}