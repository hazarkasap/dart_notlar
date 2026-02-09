void main(List<String> args) {
  cevreyiHesapla();
  alanHesapla(5, 10);
  int hacim = hacimHesapla(5, 10, 15);
  print("Hacim $hacim");
  
}
int hacimHesapla(int en, int boy,int yukseklik){//fonksiyonların değer return edip etmediği belirtilebilir.
  return en * boy * yukseklik;
}
void alanHesapla(int en, int boy){
  print("Eni $en olan ve boyu $boy olan dikdörgenin alanı ${en * boy}'dir.");
}
cevreyiHesapla(){
  int en = 5,boy=7;
  int cevre = (en + boy)*2;
  print("Eni $en ve boyu $boy olan bir dikdörtgenin cevresi $cevre'dir.");
}