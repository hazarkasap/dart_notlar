/**
 * Kontrol Yapıları: If - Else
 * 
 * Programın akışını belirli koşullara göre yönlendirmek için kullanılır.
 */
void main(List<String> args) {
  int sayi1 = 10, sayi2 = 8;

  // Koşul doğruysa if bloğu, yanlışsa else bloğu çalışır.
  if(sayi1 > sayi2){
    print("$sayi1 sayısı, $sayi2 sayısından büyüktür.");
  } else if(sayi1 < sayi2) {
    // Birden fazla koşul kontrolü için else if kullanılır.
    print("$sayi2 sayısı, $sayi1 sayısından büyüktür.");
  } else {
    // Yukarıdaki koşulların hiçbiri sağlanmazsa else bloğu çalışır.
    print("Sayılar eşittir.");
  }
}