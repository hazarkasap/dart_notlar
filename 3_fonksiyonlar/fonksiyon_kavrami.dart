/**
 * Fonksiyon Kavramı
 * 
 * Belirli bir görevi yerine getirmek için kullanılan kod bloklarıdır.
 * Kodun tekrar kullanılabilirliğini sağlar.
 */
void main(List<String> args) {
  cevreyiHesapla();
  alanHesapla(5, 10);
  
  // Fonksiyon değer döndürüyorsa, dönen değer bir değişkene atanabilir.
  int hacim = hacimHesapla(5, 10, 15);
  print("Hacim: $hacim");
}

// 1. Değer döndüren fonksiyonlar (int, String, double vb.)
// Fonksiyonun başında geri döndüreceği veri tipi belirtilir.
int hacimHesapla(int en, int boy, int yukseklik) {
  return en * boy * yukseklik;
}

// 2. Parametre alan ama değer döndürmeyen fonksiyonlar (void)
// 'void' fonksiyonun bir şey döndürmeyeceği anlamına gelir.
void alanHesapla(int en, int boy) {
  print("Eni $en ve boyu $boy olan dikdörtgenin alanı: ${en * boy}");
}

// 3. Parametre almayan ve değer döndürmeyen fonksiyonlar
cevreyiHesapla() {
  int en = 5, boy = 7;
  int cevre = (en + boy) * 2;
  print("Eni $en ve boyu $boy olan dikdörtgenin çevresi: $cevre");
}