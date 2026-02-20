// generic_sinif.dart
// GenericStack sınıfını farklı türlerle (String ve int) kullanan örnek.
// Bu dosya stack mantığını pratik olarak gösterir.

import 'generic_stack.dart';

void main(List<String> args) {
  // ========================================================================
  // ÖRNEK 1: String türünde Stack oluşturma (İsim yığını)
  // ========================================================================
  // GenericStack<String> : String elementlerini tutan stack oluştur.
  // İsimler isimler = GenericStack<>(); yazılsa da <String> gerekli.
  GenericStack<String> isimler = GenericStack();
  
  // push() ile string elementleri ekle (sırası: hazar → hasan → enes).
  isimler.push("hazar");
  isimler.push("hasan");
  isimler.push("enes");
  
  // pop() ile son eklenen elementi çıkar.
  // LIFO kuralıyla "enes" çıkar (son eklenendir).
  print(isimler.pop()); // Çıktı: enes

  // ========================================================================
  // ÖRNEK 2: Integer türünde Stack oluşturma (Sayı yığını)
  // ========================================================================
  // GenericStack<int> : Integer elementlerini tutan stack oluştur.
  // Aynı sınıf, farklı tip! Bu generics'in gücüdür.
  GenericStack<int> number = GenericStack();
  
  // push() ile integer elementleri ekle (sırası: 12 → 23 → 34).
  number.push(12);
  number.push(23);
  number.push(34);
  
  // pop() ile son eklenen elementi çıkar.
  // LIFO kuralıyla 34 çıkar (son eklenendir).
  print(number.pop()); // Çıktı: 34
  
  // ========================================================================
  // GÖZLEMLER:
  // 1. GenericStack<T> sınıfı herhangi bir türle çalışabilir.
  // 2. Type safety sağlanır: String stack'ine int ekleyemezsin.
  // 3. Push sırası: [hazar, hasan, enes] ve [12, 23, 34].
  // 4. Pop sırası: enes çıkar, 34 çıkar (LIFO = Last-In-First-Out).
  // ========================================================================
}