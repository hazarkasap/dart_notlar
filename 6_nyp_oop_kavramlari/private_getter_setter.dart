/**
 * Nesne Yönelimli Programlama: Kapsülleme (Encapsulation)
 * 
 * Dart'ta 'private' kavramı kütüphane/dosya bazlıdır. 
 * Bir değişkenin veya metodun başına "_" eklenirse, o dosya dışından erişilemez.
 */
import 'uyelik_islemleri.dart';

void main(List<String> args) {
  UyelikIslemleri islemler = UyelikIslemleri();
  
  // Private metot olan _uyeVarMi() burada doğrudan çağrılamaz.
  // Ancak public olan uyeSil() metodu içinden çağrılabilir.
  islemler.uyeSil();

  // Değişkenlere doğrudan erişmek yerine Getter ve Setter kullanılır.
  // Setter kullanımı: Bir atama yapıyormuş gibi kullanılır.
  islemler.kullaniciAdiniGuncelle = "Hazar"; 
  
  // Getter kullanımı: Bir özelliği okuyormuş gibi kullanılır.
  print(islemler.kullaniciAdiniGoster);
}
