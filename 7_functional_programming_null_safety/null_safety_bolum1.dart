// Nullable vs Non-nullable değişkenler ve 'assertion' operatörü (!)
// - `int` : null olamaz. Derleme zamanı (compile-time) bu tipi null atamaya izin vermez.
// - `int?`: null olabilir. Değişkenin değeri ya int ya da null olabilir.
// - `!` (null assertion): derleyiciye "bu değer null değil" demek için kullanılır.
//   Ancak eğer çalışma zamanında değer gerçekten null ise `LateInitializationError` veya
//   `NullThrownError` gibi bir hata (runtime error) oluşur.

int? nullOlabilirAmaDegil = 1;
void main(List<String> args) {
  // Genelde değişken tanımlamaları
  // - `int a;` -> derleyici hata verir (null güvenli değil ve başlatılmamış)
  // - `int? a;` -> başlatılmamış olabilir ve null alabilir
  int? a;
  a = null; // geçerli: a null olabilir
  print(a); // ekrana 'null' yazdırır
  // print(a + 2); // hata: a nullable olduğu için doğrudan aritmetik işlem yapılamaz

  a = 2; // artık a null değil
  print(a + 2); // şimdi güvenli: 2 + 2 => 4

  // Listelerde null-safety örnekleri
  // - `List<String>`: içindeki elemanlar null olamaz.
  // - `List<String>?`: listenin kendisi null olabilir (liste yoktur).
  // - `List<String?>`: listenin elemanları null olabilir.
  List<String> isimler = ["emre", "hasan"];
  List<String>? renkler = null; // listenin kendisi null
  print(renkler);
  List<String?> markalar = []; // elemanlar null olabilir (ancak şu an boş)
  List<String?>? test; // hem liste null olabilir hem elemanları null olabilir

  // Null assertion (!) kullanımı
  // - `nullOlabilirAmaDegil` int? tipinde tanımlanmış ama şu anda 1 içeriyor.
  // - `nullOlabilirAmaDegil!` ifadesi derleyiciye "buna güven, null değil" der.
  // - Eğer değer gerçek hayatta null olsaydı, çalışma zamanında hata alırdık.
  int b = nullOlabilirAmaDegil!; // dikkat: çalışma zamanında null ise patlar

  // Liste içindeki nullable elemanı '!' ile almak
  List<int?> nullDegerOlanListe = [1, null, 3];

  // first nullable bir int olabilir; '!' ile kesin non-null olduğunu belirtiyoruz.
  // Eğer ilk eleman null olsaydı runtime hatası alırdınız.
  int c = nullDegerOlanListe.first!;

  // Fonksiyonlardan dönen nullable değerler üzerinde işlem
  // - `nullDegerDondurebilenAmaDondurmeyecekFonk()` int? döndürüyor.
  // - `!.abs()` şeklinde kullanarak önce non-null olduğunu teyit edip sonra `abs()` çağrıyoruz.
  int d = nullDegerDondurebilenAmaDondurmeyecekFonk()!.abs();

}

// Örnek: int? döndürebilen bir fonksiyon
int? nullDegerDondurebilenAmaDondurmeyecekFonk() {
  return 5; // burayı null dönecek şekilde değiştirirseniz, çağıran yerde '!' kullanıyorsanız hata alırsınız
}