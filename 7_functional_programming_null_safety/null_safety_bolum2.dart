// KONULAR: required, late (geç tanımlama), type promotion (tür yükseltme)
// 
// required: Parametreyi zorunlu hale getirir. İçinde null veya varsayılan değer olamaz.
// late: "Bu değişkeni hemen başlatmayacağım, ama kullanmadan önce mutlaka başlatacağım" demek.
// type promotion: null-safety kontrolleri sonrası derleyicinin tür çıkarımı (type narrowing).

void main(List<String> args) {
  // Fonksiyon çağrısı: varsayılan parametreli fonksiyon
  // - Parametrelerin varsayılan değerleri 0 olduğundan, sayi2'yi belirtmemek => sayi2 = 0
  var toplam = ucSayiTopla(sayi1: 10, sayi2: 20, sayi3: 30);
  var toplam2 = ucSayiTopla(sayi1: 10, sayi3: 24); // sayi2 eksik, varsayılan 0 kullanılır
  print(toplam2);

  // Null-safety ve type promotion örneği
  // - `mesaj` null olabilir (String?) olarak tanımlandı
  String? mesaj;

  // if bloğu içinde mesaj'a bir değer atandı
  if (DateTime.now().hour < 12) {
    mesaj = "günaydın";
  }
  // NOT: Burada else bloğu açık değilse, derleyici mesaj'ın yine de null olabileceğini bilir.
  // Eğer else'de de bir değer atanırsa, derleyici "her koşulda değer var" çıkarımı yapardı.

  // Type promotion: derleyici ! gördüğünde null kontrol görmediği için hata vermek isterse de,
  // burada programcı "ben bunu nullable olarak aldığımı biliyorum, riskini alıyorum" demektedir.
  print(mesaj);
  print(mesaj!.length); // ! ile null assertion yap: derleyici uyarısını geç (çalışma zamanında null ise patlar)

  // Fonksiyona null parametresi gönderme ve null-safe kontrol
  print(karakterSayisiniBul(null));

  // late anahtar sözcüğü örneği
  // - Ogrenci sınıfında isim, late String olarak tanımlandı
  // - Constructor'da veya hemen başlatılmasa da, ilk kullanımdan önce mutlaka değer verilmeli
  Ogrenci hazar = Ogrenci();
  // print(hazar.isim); // hata: isim henüz başlatılmamış (LateInitializationError)

  // setIsim() ile late değişkeni başlattık
  hazar.setIsim("hazar");
  print(hazar.isim); // artık güvenli: isim değeri var

}

// Ogrenci sınıfı: late örneği
class Ogrenci {
  // late String isim:
  // - İlk tanımlanmadığında hata vermez.
  // - Ama kullanmadan önce mutlaka değer verilmesi gerekir.
  // - Eğer late değişkene başlatılmadan erişilirse runtime hatası: LateInitializationError
  late String isim;

  // Setter metodu: late değişkeni başlatmak için
  void setIsim(String i) {
    this.isim = i;
  }
}

// Null-safety kontrol ve type promotion örneği
// - Parametresi nullable (String?) olan bir fonksiyon
int karakterSayisiniBul(String? metin) {
  // Yanlış yol:
  // return metin.length; // HATA: metin nullable olduğu için doğrudan kullanılamaz
  //
  // Yanlış yol 2:
  // return metin!.length; // çalışır ama metin null olursa çalışma zamanında patlar

  // Doğru yol: null kontrolü yapıp type promotion sağla
  // - if (metin == null) bloğu, derleyiciye "buradan sonra metin null değil" der
  // - Bu "type promotion" adı verilir: nullable tür => non-nullable türe terfi eder
  if (metin == null) {
    return 0;
  }
  // Artık derleyici metin'in null olmadığını biliyor, hata vermez
  return metin.length;
}


// Opsiyonel parametreler: varsayılan değer ile
// - int sayi1=0 => parametre verilmezse varsayılan değer 0 kullanılır
// - Parametreler opsiyonel (named) çünkü süslü parantez içinde tanımlanmış
int ucSayiTopla({int sayi1 = 0, int sayi2 = 0, int sayi3 = 0}) {
  return sayi1 + sayi2 + sayi3;
}

// Zorunlu parametreler: required anahtar sözcüğü ile
// - required int sayi1 => parametre mutlaka verilmeli, null veya varsayılan değer yok
// - Parametreler zorunlu (named) çünkü required ile işaretlenmiş
int ucSayiTopla2({required int sayi1, required int sayi2, required int sayi3}) {
  return sayi1 + sayi2 + sayi3;
}