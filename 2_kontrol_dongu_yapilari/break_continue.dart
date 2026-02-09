void main(List<String> args) {
   //break
   /* for (var i = 0; i < 10; i++) {
    wif (i>=5) {
      break;
    }
     print("i değeri $i");
   }
   print("For dögüsü bitti"); */
   //continue
   /* for (var i = 0; i < 10; i++) {
     if (i % 2 ==0) {
       print("i değeri olan $i çift sayıdır. ");

     }else{
      continue;
     }
     print("Döngü sonraki tura gidiyor");
   } */
   //labellar

   distakiDongu :for (var i = 1; i <= 7; i++) {

     ictekiDongu :for (var j = 1; j <= 7; j++) {
       print("$i * $j = ${i*j}");
       if (j == 5) {
        break distakiDongu;
         
       }else if( i == 6){
        break ictekiDongu;
       }
     }
   }

}
