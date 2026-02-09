void main(List<String> args) {
  //int toplam1 = sayilariTopla(5, 10);
  int toplam2 = sayilariTopla(s3: 12,s1: 2,s2: 13);// named fonk. larda paremetreleri belirterek gireriz.
 // print("Toplam1 = $toplam1");
  print("Toplam2 = $toplam2");
}

// required 
/* int sayilariTopla(int s1, int s2,int s3){
  return s1+s2+s3;
} */
// optinal
/* int sayilariTopla(int s1,int s2, [int s3=0]){
  return s1+s2+s3;
} */
// named , isimlendirilmiş
int sayilariTopla({int s1=0,int s2=0,int s3=0}){
  return s1+s2+s3;
}

