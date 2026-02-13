/**
 * Soru 2: Keyleri String, değerleri dynamic olan bir Map oluşturun.
 * Bilgisayar bilgilerini tutup ekrana yazdırın.
 */
void main(List<String> args) {
  // 'dynamic' sayesinde değer kısmında hem int, hem String hem de bool tutabiliyoruz.
  var sistemBilgileri = <String, dynamic>{
    "CPU_Cekirdek_Sayisi": 16,
    "RAM_Miktari": "16GB",
    "SSD_Var_Mi": true
  };

  print("Sistem Bilgileri: $sistemBilgileri");
}