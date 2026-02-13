/**
 * Functional Programming: Higher Order Functions (Üst Seviye Fonksiyonlar)
 * 
 * - Parametre olarak başka bir fonksiyonu alan fonksiyonlardır.
 * - Veya bir fonksiyonu geri döndüren (return eden) fonksiyonlardır.
 */
void main(List<String> args) {
  List<int> sayilar = [1, 2, 3, 4];

  // forEach bir Higher Order Function'dır.
  // Çünkü içine bir fonksiyon (callback) alır.
  sayilar.forEach((element) {
    print("Eleman: $element");
  });

  // Kendi Higher Order Function'ımızı kullanalım:
  kendiForEachYapim(sayilar, (int deger) {
    print("Kendi yapım ile değer: $deger");
  });
}

/**
 * Bu fonksiyon bir liste ve bir fonksiyon (callback) alır.
 * Listenin her bir elemanı için verilen fonksiyonu çalıştırır.
 */
void kendiForEachYapim(List<int> liste, Function callBack) {
  for (var i = 0; i < liste.length; i++) {
    callBack(liste[i]);
  }
}

void callBack(int deger) {
  print("Deger: $deger");
}