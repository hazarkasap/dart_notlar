/**
 * Functional Programming: Lambda Nedir?
 * 
 * Lambda (Anonim Fonksiyon): İsmi olmayan ve bir değişkene atanabilen fonksiyonlardır.
 * Kodun daha esnek ve kısa yazılmasını sağlar.
 */
void main(List<String> args) {
  // 1. Lambda fonksiyonu bir değişkene atama:
  // (parametreler) { gövde };
  var toplaminiBul = (int a, int b) {
    print(a + b);
  };
  toplaminiBul(12, 13);

  // 2. Kısa yazım (Fat Arrow) Lambda:
  // Sadece tek satırlık işlem yapan lambdalarda kullanılır.
  var karesiniAl = (int s) => s * s;
  print("5'in karesi: ${karesiniAl(5)}");

  // 3. Lambda fonksiyonu tanımlandığı yerde çağırma:
  (int x, int y) {
    print("Anlık Toplam: ${x + y}");
  }(10, 20);
}

// Geleneksel (İsimlendirilmiş) Fonksiyon:
void sayilariTopla(int a, int b) {
  print(a + b);
}