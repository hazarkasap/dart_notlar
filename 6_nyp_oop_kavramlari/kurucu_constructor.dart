/**
 * Nesne Yönelimli Programlama: Kurucu Metodlar (Constructors)
 */
void main(List<String> args) {
  // 1. Parametreli Kurucu kullanımı
  Araba honda = Araba("Honda", 2020);
  honda.bilgileriniSoyle();

  // 2. İsimlendirilmiş (Named) Kurucu kullanımı
  Araba yil2012 = Araba.markasizAraba(2012);
  Araba reno = Araba.modelYilsizAraba("Renault");

  reno.bilgileriniSoyle();
  yil2012.bilgileriniSoyle();

  // 3. Factory Kurucu kullanımı
  var bmw = Araba.factoryKurucusu(null, 2017);
  bmw.bilgileriniSoyle();
}

class Araba {
  int? modelYili;
  String? marka;

  // Standart Parametreli Kurucu: "this" kullanımı değişkenleri eşleştirir.
  Araba(this.marka, this.modelYili) {
    print("Kurucu metot çalıştı: $marka - $modelYili");
  }

  // Factory Kurucu: Nesne üretirken mantıksal kontroller yapıp 
  // hangi nesnenin döneceğine karar verebiliriz.
  factory Araba.factoryKurucusu(String? marka, int? modelYili) {
    if (marka == null) {
      return Araba.markasizAraba(modelYili);
    }
    if (modelYili == null) {
      return Araba.modelYilsizAraba(marka);
    }
    return Araba(marka, modelYili);
  }

  // İsimlendirilmiş Kurucu (Named Constructor)
  Araba.modelYilsizAraba(this.marka) {
    this.modelYili = 2020;
  }

  Araba.markasizAraba(this.modelYili) {
    this.marka = "Belirsiz";
  }

  void bilgileriniSoyle() {
    print("Araba Bilgisi -> Yıl: $modelYili, Marka: $marka");
  }
}