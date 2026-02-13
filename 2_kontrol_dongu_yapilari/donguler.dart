/**
 * Döngüler (Loops)
 * 
 * Belirli bir kod bloğunu tekrar tekrar çalıştırmak için kullanılırlar.
 */
void main(List<String> args) {
  // 1. For Döngüsü: Genellikle tekrar sayısı belli olan durumlarda kullanılır.
  // for(başlangıç; koşul; artış/azalış)
  print("--- FOR DÖNGÜSÜ ---");
  for (var i = 0; i < 5; i++) {
    print("Hazar - Tur: ${i + 1}");
  } 

  // 2. While Döngüsü: Koşul doğru olduğu sürece çalışmaya devam eder.
  print("\n--- WHILE DÖNGÜSÜ ---");
  int sayac = 0;
  while (sayac < 10) {
    print("while sayacı: ${sayac + 1}");
    sayac++;
  }

  // 3. Do-While Döngüsü: While'dan farkı, koşul ne olursa olsun kod bloğunun en az 1 kez çalışmasıdır.
  print("\n--- DO-WHILE DÖNGÜSÜ ---");
  int sayac2 = 0;
  do {
    print("do-while sayacı: ${sayac2 + 1}");
    sayac2++;
  } while (sayac2 < 5);
}