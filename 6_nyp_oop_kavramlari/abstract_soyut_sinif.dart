/**
 * Nesne Yönelimli Programlama: Soyut Sınıf (Abstract Class)
 * 
 * - Nesnesi oluşturulamayan (instance alınamayan) sınıflardır.
 * - Sadece şablon (blueprint) görevi görürler.
 * - Alt sınıfların mutlaka override etmesi gereken metodları (kontratları) belirler.
 */
void main(List<String> args) {
  // Veritabani db = Veritabani(); -> HATA! Soyut sınıfın nesnesi üretilemez.
  
  Veritabani db = FirebaseDB();
  db.userSave();
  db.veriTabaniKontrol();

  Veritabani db2 = Oracle();
  db2.veriTabaniKontrol();
}

// Soyut sınıf: Tüm veritabanları için ortak metot imzalarını barındırır.
abstract class Veritabani { 
  void userSave(); // Gövdesiz metot (Abstact Method)
  void userDelete();
  
  // Soyut sınıflar gövdeli (normal) metotlar da içerebilir.
  void veriTabaniKontrol() {
    print("Veritabanı kontrol ediliyor...");
  }
}

class FirebaseDB extends Veritabani {
  @override
  void userDelete() {
    print("FirebaseDB: Kullanıcı silindi.");
  }

  @override
  void userSave() {
    print("FirebaseDB: Kullanıcı kaydedildi.");
  }

  @override
  void veriTabaniKontrol() {
    print("Kullanılan sistem: Firebase");
  }
}

class Oracle extends Veritabani {
  @override
  void userDelete() {
    print("Oracle: Kullanıcı silindi.");
  }

  @override
  void userSave() {
    print("Oracle: Kullanıcı kaydedildi.");
  }

  @override
  void veriTabaniKontrol() {
    print("Kullanılan sistem: Oracle");
  }
}