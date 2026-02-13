/**
 * Kontrol Yapıları: Switch - Case
 * 
 * Bir değişkenin farklı sabit değerlere eşitliğini kontrol etmek için kullanılır.
 * Çok sayıda if-else yerine daha okunabilir bir yapı sunar.
 */
void main(List<String> args) {
  String notDegeri = "AA";

  switch(notDegeri) {
    case "AA":
      print("Notunuz 90-100 arasındadır.");
      break; // İşlem bitince switch'ten çıkmak için (Dart 3.0 öncesi zorunluydu, sonrası için de alışkanlık iyidir)
    case "BA":
      print("Notunuz 80-90 arasındadır.");
      break;
    case "BB":
      print("Notunuz 70-80 arasındadır.");
      break;
    case "CC":
      print("Notunuz 50-60 arasındadır");
      break;
    default: // Hiçbir case ile eşleşmezse çalışacak kısım
      print("Geçersiz harf notu.");
  }
}