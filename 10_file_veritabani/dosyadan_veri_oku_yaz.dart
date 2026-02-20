// dart:io kütüphanesini içeri aktarıyoruz. Bu kütüphane dosya işlemleri için gereklidir.
import 'dart:io';

// Main fonksiyonu async olarak tanımlanmıştır çünkü dosya işlemleri asenkron (zaman alan) işlemlerdir.
// Asenkron işlemler sırasında programın başka işler yapmasına izin verir.
void main(List<String> args) async {
  // File sınıfı kullanarak 'dosya.txt' dosyasına referans oluşturuyoruz.
  // Dosya var olmayabilir, henüz oluşturulmamış olabilir.
  File dosya = File('dosya.txt');
  
  // await: dosyaYaz fonksiyonunun tamamlanmasını bekle. İşlem bitene kadar sonraki satıra geçme.
  await dosyaYaz(dosya);
  
  // dosyaOku fonksiyonunu çağırarak dosyadaki verileri ekrana yazdırıyoruz.
  dosyaOku(dosya);
}

// Dosyadan verileri satır satır okuyup ekrana yazdıran asenkron fonksiyon
void dosyaOku(File dosya) async {
  // readAsLines(): Dosyayı okur ve her satırı bir List elemanı olarak döndürür.
  // await: dosyanın okunmasının tamamlanmasını bekle (IO işlemi zaman alabilir)
  // var: otomatik tür belirleme (List<String> türündedir)
  var dosyaIcerigi = await dosya.readAsLines();
  
  // forEach: listedeki her eleman için anonymous function uygulanır.
  // (element) => her satırı sırasıyla element değişkenine koyar
  dosyaIcerigi.forEach((element) {
    // Her satırı ekrana (stdout) yazdırıyoruz.
    print(element);
  },);
}

// Dosyaya veri yazan asenkron fonksiyon
// Future<void>: Fonksiyonun geri dönüş tipi Future'dır ve değer döndürmez (void)
Future<void> dosyaYaz(File dosya) async {
  // writeAsString(): String (metin) olarak veriyi dosyaya yazarız.
  // await: yazma işleminin tamamlanmasını bekliyoruz
  // mode: FileMode.append -> dosyanın sonuna ekleme yapar (var olan verinin üzerine yazmaz)
  
  // Dosyaya sırasıyla 4 satır yazıyoruz
  // \n: yeni satırı (newline) temsil eder
  await dosya.writeAsString("Hazar Kasap\n", mode: FileMode.append);
  await dosya.writeAsString("Satır 2\n", mode: FileMode.append);
  await dosya.writeAsString("Satır 3\n", mode: FileMode.append);
  await dosya.writeAsString("Satır 4\n", mode: FileMode.append);
  
  // Not: FileMode.write kullanılsaydı, dosya silinip yeniden yazılırdı.
  // Not: FileMode.append kullanarak var olan verilerin üzerine yazmadan satır ekledik.
}