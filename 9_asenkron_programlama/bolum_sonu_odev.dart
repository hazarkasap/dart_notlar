// Soru:

// Aldığı integer id parametresine göre 3 saniye sonra size kişi bilgilerini map olarak getirecek bir
//fonksiyon yazınız.

// return edilecek map örnek : {'username':'emre', id:5}

//Getirilen kişi bilgisindeki username'i parametre olarak alan bir fonksiyon yazın. Bu fonksiyon 2
//saniye sonra username'e ait olan kurs isimlerini liste olarak döndürecek.

//return edilecek liste örnek ['dart', ‘flutter’, 'js']

//Bu örneği hem async-await hem de then yapıları ile yapmaya çalışın.

void main(List<String> args)async {
  /* Map<String,dynamic> kisiMap = await kisiBilgileriniGetir(5); //await yapısı .then e göre daha anlaşılır kalır 
  String username = kisiMap['username'];
  List<String> kisininKurslari = await kisiKursListesiniGetir(username);
  print(kisininKurslari); */

  kisiBilgileriniGetir(5).then((value) {
    var kisiBilgileri = value;
    var username = kisiBilgileri['username'];

    kisiKursListesiniGetir(username).then((value) {
      var kursListesi = value;
      print(kursListesi);
    },);
  },);
}

Future<List<String>> kisiKursListesiniGetir(String username) async {
  print("Kullanıcı adı $username olan kullanıcının kurs listesi getiriliyor.");
  return Future.delayed(Duration(seconds: 2),() {
    return ['dart', 'flutter', 'js'];
  },);
}

Future<Map<String, dynamic>> kisiBilgileriniGetir(int i) async {
  print("İd değeri $i olan kullanıcının bilgileri getiriliyor.");
  return Future.delayed(Duration(seconds: 3),() {
    return {'username':'emre', 'id':5};
  },);
}
