/**
 * Koleksiyon Yapıları: Sabit Uzunluklu Listeler
 * 
 * Tanımlandığı anda boyutu belirlenen ve daha sonra değiştirilemeyen listelerdir.
 */
void main(List<String> args) {
  // List.filled(uzunluk, varsayılan_değer)
  List<int> sayilar = List.filled(10, 0);
  print(sayilar);
  
  sayilar[0] = 1;
  sayilar[1] = 12;
  sayilar[9] = 99;
  print(sayilar);

  List<String> sehirler = List.filled(10, "BOŞ");
  sehirler[0] = "Ankara";
  sehirler[1] = "Van";
  sehirler[2] = "İstanbul";
  print(sehirler);

  // 1. Geleneksel For Döngüsü: İndekslerle işlem yapmak için idealdir.
  for (var i = 0; i < sayilar.length; i++) {
    print("İndeks $i'deki sayının 5 fazlası: ${sayilar[i] + 5}");
  }

  // 2. For-In Döngüsü: Sadece elemanlara erişmek için kullanılır (Daha okunabilir).
  for (String sehir in sehirler) {
    print("Şehir: $sehir");
  }

  // Karışık (Dynamic) Liste: Belirli bir tip belirtilmezse her türlü veriyi tutabilir.
  List karisik = List.filled(4, 0);
  karisik[0] = 8;
  karisik[1] = "Merhaba";
  karisik[2] = true;
  print("Karışık liste: $karisik");
}