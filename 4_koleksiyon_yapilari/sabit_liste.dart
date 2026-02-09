void main(List<String> args) {
  List<int> sayilar = List.filled(10, 0);
  print(sayilar);
  sayilar[0] = 1;
  sayilar[1] = 12;
  sayilar[9] = 99;
  print(sayilar);

  List<String> sehirler = List.filled(10, "BOS");
  sehirler[0] = "ankara";
  sehirler[1] = "van";
  sehirler[2] = "istanbul";
  print(sehirler);

  for (var i = 0; i < sayilar.length; i++) { // indexlerler işlem yapacak isek bu for yapısı kullanılabilir
    print(sayilar[i] + 5);
  }
  for (String sehir in sehirler) { //sadece liste yazdırma işlemi varsa for in yapısı kullanıbilir
    print("O anki sehir $sehir");
  }
  for (var sayi in sayilar) {
    print("O anki sayi $sayi");
  }

  List karisik = List.filled(4, 0);// farklı veri tiplerini barındırır
  karisik[0] = 8;
  karisik[1] = "merhaba";
  karisik[2] = true;
  print(karisik);

}