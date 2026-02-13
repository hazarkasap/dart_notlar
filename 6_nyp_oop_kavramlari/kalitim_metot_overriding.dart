/**
 * Nesne Yönelimli Programlama: Kalıtım (Inheritance)
 * 
 * Bir sınıfın başka bir sınıftan özellik ve metotlarını devralmasıdır.
 * 'extends' anahtar kelimesi ile sağlanır.
 */
void main(List<String> args) {
  User user = User();
  user.girisYap();

  NormalUser normal = NormalUser();
  normal.girisYap(); // Overridden metot çalışır.
  normal.davetEt();
}

class User {
  String mail = "";
  String password = "";

  void girisYap() {
    print("Sisteme giriş yapıldı (Genel User).");
  }
}

// Kalıtım: NormalUser bir User'dır.
class NormalUser extends User { 
  void davetEt() {
    print("Arkadaş davet edildi.");
  }

  // Overriding: Üst sınıftan gelen metodu alt sınıfa özgü hale getirme.
  @override
  void girisYap() { 
    // super.girisYap(); -> İstenirse üst sınıftaki metot da çağrılabilir.
    print("Normal User giriş yaptı.");
  }
}

class ReadOnly extends NormalUser {
  void makaleOku() {
    print("Makale okunuyor...");
  }

  @override
  void girisYap() {
    print("Sadece okuma yetkili kullanıcı giriş yaptı.");
  }
}

class AdminUser extends User {
  void kullaniciEkle() {
    print("Yeni kullanıcı eklendi.");
  }

  @override
  void girisYap() {
    print("Admin yetkisiyle giriş yapıldı.");
  }
}