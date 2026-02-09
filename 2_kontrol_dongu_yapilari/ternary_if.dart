void main(List<String> args) {
  int sayi1 = 5, sayi2 = 8;
  int kucukSayi = 0;
  int kucukSayi2 = 0;
  if (sayi1 < sayi2) {
    kucukSayi = sayi1;
  } else {
    kucukSayi = sayi2;
  }
  print("Küçük olan sayı: $kucukSayi");
  // yukarıda ki if kullanımının aynısını ? ve : ile kurabiliriz ancak bu ifade de else (:) mutlaka kullanılır.
  //         ise         eşitle  değilse   eşitle
  sayi1 < sayi2 ? kucukSayi2 = sayi1 : kucukSayi2 = sayi2;
  print("Küçük olan sayı2: $kucukSayi2");
  // veya
  kucukSayi2 = sayi1 < sayi2 ? sayi1 : sayi2;
  print("Küçük olan sayı2: $kucukSayi2");
}
