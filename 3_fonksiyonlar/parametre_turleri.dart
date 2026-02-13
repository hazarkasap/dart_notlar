/**
 * Fonksiyon Parametre Türleri
 */
void main(List<String> args) {
  // 1. Zorunlu Parametreler: Belirtilen sırada ve tümü girilmelidir.
  // int t1 = sayilariToplaZorunlu(5, 10, 15);

  // 2. İsteğe Bağlı Parametreler (Optional): [] içine yazılır, varsayılan değer alabilir.
  // int t2 = sayilariToplaOpsiyonel(5, 10); // s3 girilmezse varsayılan 0 olur.

  // 3. İsimlendirilmiş Parametreler (Named): {} içine yazılır, sırası önemli değildir.
  // Çağırırken parametre ismi belirtilmelidir.
  int t3 = sayilariToplaIsimlendirilmis(s3: 12, s1: 2, s2: 13);
  print("Toplam (Named): $t3");
}

// 1. Zorunlu (Required)
int sayilariToplaZorunlu(int s1, int s2, int s3) {
  return s1 + s2 + s3;
}

// 2. İsteğe Bağlı Pozisyonel (Optional Positional)
// s3 girilmezse varsayılan olarak 0 atanır.
int sayilariToplaOpsiyonel(int s1, int s2, [int s3 = 0]) {
  return s1 + s2 + s3;
}

// 3. İsimlendirilmiş (Optional Named)
// Kullanıcı parametre ismini belirterek veri girer. Varsayılan değerler verilebilir.
int sayilariToplaIsimlendirilmis({int s1 = 0, int s2 = 0, int s3 = 0}) {
  return s1 + s2 + s3;
}
