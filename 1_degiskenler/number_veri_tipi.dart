void main(List<String> args) {
  int yas = 20;
  print(yas);

  double sicaklik = 50.7;
  print(sicaklik);

  // num değişken tipi yukarıdaki her iki veri tipi içinde kullanılabilir
  num kilo = 70;
  print(kilo);

  kilo = 70.7;
  print(kilo);

  // değişken tipini belirtmemize gerek yok
  var yil = 1995; // int olarak saklar 
  var derece = 32.3; // double olarak saklar 
  // ancak int degerine sonradan double bir değer veremezsiniz int formatında tutmanız gerek yil = 55.5.toInt();
  
}