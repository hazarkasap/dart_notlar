void main(List<String> args) {
  String notDegeri= "AA";
  switch(notDegeri){
    case "AA":
      print("Notunuz 90-100 arasındadır.");
    case "BA":
      print("Notunuz 80-90 arasındadır.");
    case "BB":
      print("Notunuz 70-80 arasındadır.");
    case "CC":
      print("Notunuz 50-60 arasındadır");
    default:{
      print("Geçersiz harf notu.");
    }
  }
}