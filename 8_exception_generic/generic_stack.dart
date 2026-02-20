// generic_stack.dart
// STACK (Yığın) veri yapısının Dart'ta generic (genel) sınıf ile implementasyonu.
// 
// STACK NEDİR?
// - Stack: Last-In-First-Out (LIFO) prensibiyle çalışan veri yapısı.
// - Son eklenen eleman ilk çıkarılır (tepsiye yığılmış tabaklara benzer).
// - push(): elementi ekler (üzerine koy).
// - pop(): son eklenen elementi çıkarır (üstünü al).
//
// GENERIC NEDİR?
// - <T> : Type parameter. Sınıf herhangi bir türle çalışabilir (String, int, double, vb.).
// - GenericStack<String>, GenericStack<int> gibi farklı türlerle oluşturulabilir.
// - Type safety sağlar: String stack'ine sadece String eklenebilir.

class GenericStack<T> {
  // _listem: Dahili (private) liste, elementleri tutan depo.
  // List<T> : T türünde elementleri barındıran liste.
  // _ öneki: Private member (sadece bu sınıf içinde erişilebilir).
  List<T> _listem = [];
  
  // push() metodu: Yeni elementi stack'in üstüne ekler.
  // Parametre: T yeniEleman (generik türde yeni eleman).
  // İşlem: _listem.add() ile listeye ekler (son pozisyona).
  void push(T yeniEleman) {
    _listem.add(yeniEleman); // Elemento ekle (LIFO kuralında sona ekle)
  }

  // pop() metodu: Stack'in üstündeki (son eklenen) elementi çıkarır.
  // Return: T (generik türde element).
  // İşlem: _listem.removeLast() ile listenin son elementini kaldırıp döndür.
  // UYARI: Boş stack'te çağrılırsa runtime hatası oluşur.
  T pop() {
    return _listem.removeLast(); // Son elementi çıkar ve döndür (LIFO)
  }
}