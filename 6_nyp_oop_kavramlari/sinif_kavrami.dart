/**
 * Nesne Yönelimli Programlama (OOP): Sınıf Kavramı
 * 
 * Sınıf (Class): Nesnelerin özelliklerini ve davranışlarını belirleyen taslaktır.
 * Nesne (Object): Sınıftan türetilen, bellekte yer kaplayan somut varlıktır.
 */
void main(List<String> args) {
  // Ogrenci sınıfından bir nesne (instance) oluşturuyoruz.
  Ogrenci hazar = Ogrenci(); 
  
  hazar.ogrenciNo = 155; 
  hazar.ad = "Hazar";
  hazar.mezunMu = false;
  
  // Sınıf içindeki metodu çağırıyoruz.
  hazar.dersCalis();

  var melih = Ogrenci();
  melih.ad = "Melih";
  melih.ogrenciNo = 1012;
  melih.mezunMu = false;

  print("Öğrenci Adı: ${melih.ad}");
}

class Ogrenci { 
  // Sınıf isimleri PascalCase (Büyük harfle başlar) yazılır.
  
  // Özellikler (Fields / Instance Variables)
  // '?' işareti bu alanların null (boş) olabileceğini belirtir.
  int? ogrenciNo; 
  String? ad;
  bool? mezunMu;

  // Davranışlar (Methods)
  void dersCalis() {
    print("Öğrenci ($ad) ders çalışıyor...");
  }
}