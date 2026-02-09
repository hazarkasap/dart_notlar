void main(List<String> args) {
  print("4 sayısının karesi ${karesiniHesapla(4)}");
  print("Girilen değerler arasından en büyük ${maxMaxOlaniBul(12, 15)}");
  
}
/* int karesiniHesapla(int sayi){
  return sayi*sayi;
} */
int karesiniHesapla(int sayi) => sayi*sayi; // sadece return satırını barındıran fonksiyonlar bu şekilde fat arrow olarak gösterilebilir.

int maxMaxOlaniBul(int s1, int s2) => (s1 > s2) ? s1 : s2;//bu tür if içeriği olan kısa fonk. yazılabilir.
