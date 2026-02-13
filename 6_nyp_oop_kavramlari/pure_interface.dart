/**
 * Nesne Yönelimli Programlama: Arayüz (Interface)
 * 
 * Dart'ta 'interface' kelimesi sınıfların 'implements' edilmesiyle sağlanır.
 * Bir sınıf birden fazla interface'i uygulayabilir (Çoklu Kalıtım benzeri yapı).
 */
void main(List<String> args) {
  // Polimorfizm: Ucabilenler tipinde farklı nesneler tutulabilir.
  Ucabilenler kus = Kus();
  Ucabilenler ucak = Ucak();  

  List<Ucabilenler> tumUcabilenler = [kus, ucak];
  for (var ucan in tumUcabilenler) {
    ucan.uc();
  }
}

// 'abstract interface class' sadece kontrat tanımlamak için kullanılır.
abstract interface class Ucabilenler {
  void uc(); 
}

abstract interface class Kosabilenler {
  void kos(); 
}

// Ucak sadece uçar.
class Ucak implements Ucabilenler {
  @override
  void uc() {
    print("Uçak havalandı.");
  }
}

// Kus hem bir Hayvan'dır hem de Uçabilme yeteneği (interface) vardır.
class Kus extends Hayvan implements Ucabilenler {
  @override
  void uc() {
    print("Kuş kanat çırparak uçuyor.");
  }
}

abstract class Hayvan {
  // Ortak hayvan özellikleri...
}

// Köpek birden fazla yeteneği (interface) aynı anda uygulayabilir.
class Kopek extends Hayvan implements Kosabilenler {
  @override
  void kos() {
    print("Köpek koşuyor.");
  }
}

/**
 * ÖZET:
 * - extends: "is-a" ilişkisi (Kuş bir hayvandır). Tek bir sınıftan alınır.
 * - implements: "can-do" ilişkisi (Kuş uçabilir). Birden fazla uygulanabilir.
 */