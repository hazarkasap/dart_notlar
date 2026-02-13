/**
 * Fonksiyonlarda Kısa Yazım: Fat Arrow (=>)
 * 
 * Sadece tek bir satırlık (genellikle return içeren) ifade barındıran
 * fonksiyonlar için kullanılan kısa bir yazımdır.
 */
void main(List<String> args) {
  print("4 sayısının karesi: ${karesiniHesapla(4)}");
  print("12 ve 15 arasından büyük olan: ${maxOlaniBul(12, 15)}");
}

// Standart Yazım:
/* 
int karesiniHesapla(int sayi){
  return sayi * sayi;
} 
*/

// Fat Arrow Yazımı: 
// "{ return ... }" yerine "=> ..." kullanılır.
int karesiniHesapla(int sayi) => sayi * sayi;

// Ternary if ile birlikte kullanımı oldukça yaygındır.
int maxOlaniBul(int s1, int s2) => (s1 > s2) ? s1 : s2;
