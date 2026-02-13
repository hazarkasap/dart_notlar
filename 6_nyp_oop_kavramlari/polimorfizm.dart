/**
 * Nesne Yönelimli Programlama: Polimorfizm (Çok Biçimlilik)
 * 
 * Bir nesnenin, üst sınıfı veya uyguladığı arayüz (interface) gibi 
 * farklı tiplerde referans alabilme yeteneğidir.
 */
import 'kalitim_metot_overriding.dart';

void main(List<String> args) {
  // Upcasting: Alt sınıf nesnesini, üst sınıf referansıyla tutma.
  User user5 = AdminUser();
  User user6 = NormalUser();
  User user8 = ReadOnly();

  // Polimorfizm Avantajı: 
  // Farklı tipteki nesneleri ortak bir çatı altında (List<User>) toplayabiliriz.
  List<User> tumUserlar = [
    AdminUser(),
    NormalUser(),
    ReadOnly(),
  ];

  // Her nesne kendi 'girisYap' metodunu çalıştıracaktır.
  for (var user in tumUserlar) {
    userLogin(user);
  }
}

// Tek bir fonksiyon, User tipinden türeyen tüm sınıfları kabul eder.
void userLogin(User user) { 
  user.girisYap(); // Hangi nesne gelirse onun override edilmiş metodu çalışır.

  // 'is' anahtar kelimesi ile nesnenin gerçek tipi kontrol edilebilir.
  if (user is NormalUser) {
    user.davetEt();
  }
  if (user is AdminUser) {
    user.kullaniciEkle();
  }
}