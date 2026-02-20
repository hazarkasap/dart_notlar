// `main` fonksiyonu asenkron hale getirildi (`async`) — böylece içinde `await` kullanabiliriz.
// `async` anahtar kelimesi fonksiyonun bir `Future` döndüreceğini belirtir.
void main(List<String> args) async {
  print("İnternetten kişi listesi getiriliyor");

  // Asenkron bir fonksiyon çağrısı yapıyoruz. `kisileriGetir()` kendi içinde `await` kullanan
  // bir fonksiyon olduğu için burada onu beklemek zorunda değiliz — bu çağrı arka planda devam eder.
  // Bu sayede main içinde başka işlere devam edebiliriz (ör. UI güncelleme, diğer görevler).
  kisileriGetir();

  print("Başka işlemler yapılıyor.");
  print("işlemler bitti");

  // Bazı Future üretim örnekleri:
  // `Future.delayed` — belirtilen süre sonra tamamlanan bir Future döner.
  var future1 = Future.delayed(Duration(seconds: 5));

  // `Future.value` — hemen tamamlanan ve verilen değeri içeren bir Future döner.
  var future2 = Future.value(10);

  // `Future.error` — hata ile sonuçlanan bir Future oluşturur (yorum satırında örnek).
  // var future3 = Future.error("Herhangi bir hata");

  // `Future(() { ... })` — CPU-bound bir işi (hesaplama) Future içine alıp
  // daha sonra await ile sonucunu almak için kullanılır.
  var future4 = Future(() {
    int toplam = 0;
    for (var i = 0; i < 10000; i++) {
      toplam += i;
    }
    return toplam;
  });

  // `await` kullandığımızda, kod bu Future tamamlanana kadar asenkron olarak bekler
  // (blocking değildir; event loop diğer işleri çalıştırmaya devam eder).
  int toplam = await future4;
  print(toplam);
}

// `kisileriGetir` fonksiyonu da `async` olarak tanımlandı — böylece içinde `await` kullanılabilir.
// Burada `kisilerListesiniGetir()` isimli Future döndüren metodu bekliyoruz.
void kisileriGetir() async {
  try {
    // `await` ile Future tamamlanana kadar bekleriz ve sonuç doğrudan değişkene atanır.
    var kisiListesi = await kisilerListesiniGetir();
    print(kisiListesi);
    print(kisiListesi.length);
  } catch (e) {
    // Future hata ile sonuçlanırsa (throw edilmişse) catch bloğuna düşer.
    print(e);
  }

}

// Bu fonksiyon bir `Future<List<String>>` döner. `Future.delayed` ile 5 saniye gecikmeli
// olarak örnek bir liste döndürüyoruz. Gerçekte burada ağ isteği (HTTP) vs. yapılır.
Future<List<String>> kisilerListesiniGetir(){
  return Future.delayed(Duration(seconds: 5), () {
    // Başarılı durumda liste döndürülür.
    return ["hazar", "hasan", "ali", "ayse"];
    // Hata durumunu simüle etmek isterseniz `throw Exception(...)` kullanabilirsiniz;
    // bu durumda `kisileriGetir()` içindeki try/catch bloğu devreye girer.
    // throw Exception("Kişiler getirilemedi.");
  });
}