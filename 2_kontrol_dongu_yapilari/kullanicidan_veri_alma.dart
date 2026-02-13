/**
 * Kullanıcıdan Veri Alma
 * 
 * 'dart:io' kütüphanesi giriş/çıkış (input/output) işlemleri için kullanılır.
 */
import 'dart:io';

void main(List<String> args) {
  print("Adınızı giriniz:");
  // stdin.readLineSync() kullanıcıdan string bir değer okur.
  var ad = stdin.readLineSync(); 
  print("Sayın $ad, hoşgeldiniz");
  
  print("Yaşınızı giriniz:");
  // Okunan değer string olduğu için sayısal işlemler yapacaksa parse edilmelidir.
  // "!" işareti (Null Assertion): readLineSync null dönebilir ama ben null olmayacağına dair güvence veriyorum demektir.
  var yasInput = stdin.readLineSync();
  if (yasInput != null) {
    var yas = int.parse(yasInput);
    print("Girdiğiniz yaş değeri: $yas");
  }
}