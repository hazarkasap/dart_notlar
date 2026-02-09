// Soru1: parametre olarak bir adet int sayı bir adette boolean değer alan fonksiyon yazınız. 
// Bu fonksiyon aldığı değere kadar olan sayıları toplasın ve eğer boolena değer true ise çift sayıları,false ise tek sayıları toplasın.
// Soru2: Dairenin alanını hesaplayan bir fonks,yon yazınız. PI sayısı opsiyonel olmalı kullanıcı tarafından verilmezse varsayılan olarak
// 3,14 alınmalı.
void main(List<String> args) {
  bool ciftMi = false;
  int sayi=10;
  print("Sayısına kadar olanların toplamı ${sayilariTopla(ciftMi: ciftMi,sayi: sayi)}");
  double yaricap = 0.5;
  print("Dairenin alanı ${daireAlani(yaricap)}");
  print("Dairenin alanı(pi =3) ${daireAlani(yaricap,3)}");
}
int sayilariTopla({int sayi=0,bool ciftMi=false}){
  int toplam=0;
  for (var i = 0; i <=sayi; i++) {
    if (ciftMi) {
      if(i%2==0) toplam+=i;
    }else{
      if(i%2 !=0) toplam+=i;
    }
  }
  return toplam;
}
double daireAlani(double yaricap,[double pi = 3.14]){
  return pi * yaricap * yaricap;
}