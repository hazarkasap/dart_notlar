# Dart Öğrenme Notları ve Örnekleri

Bu depo, Dart dilini öğrenirken hazırlanan Türkçe notları ve küçük, çalıştırılabilir örnekleri konu sırasına göre bir araya getirir. Temel sözdiziminden nesne yönelimli programlamaya; null safety, generics, asenkron programlama ve dosya işlemlerine kadar ilerleyen bağımsız çalışmalar içerir.

İçerik, Dart'a yeni başlayan veya temel konuları kısa örneklerle tekrar etmek isteyen öğrenciler içindir. Bu depo bir Dart paketi ya da Flutter uygulaması değildir; `pubspec.yaml` gerektirmeyen bağımsız Dart dosyalarından oluşan bir öğrenme arşividir.

## İçindekiler

- [Ön koşullar](#ön-koşullar)
- [Müfredat ve dizin yapısı](#müfredat-ve-dizin-yapısı)
- [Kurulum ve kullanım](#kurulum-ve-kullanım)
- [Doğrulama kapsamı](#doğrulama-kapsamı)
- [Proje durumu](#proje-durumu)
- [Editör yapılandırması](#editör-yapılandırması)
- [Katkı rehberi](#katkı-rehberi)
- [Kaynak ve içerik kökeni](#kaynak-ve-içerik-kökeni)
- [Lisans durumu](#lisans-durumu)

## Ön koşullar

- Güncel bir [Dart SDK](https://dart.dev/get-dart)
- Komut satırı kullanımı hakkında temel bilgi

Kurulumu doğrulayın:

```bash
dart --version
```

## Müfredat ve dizin yapısı

| Bölüm | Konular |
|---|---|
| [`0_kurulumlar`](0_kurulumlar/) | İlk Dart programı ve başlangıç |
| [`1_degiskenler`](1_degiskenler/) | Sayılar, metinler, boolean değerler, değişkenler ve interpolation |
| [`2_kontrol_dongu_yapilari`](2_kontrol_dongu_yapilari/) | Koşullar, operatörler, döngüler, `break`/`continue`, kullanıcı girdisi |
| [`3_fonksiyonlar`](3_fonksiyonlar/) | Fonksiyonlar, parametre türleri ve fat-arrow sözdizimi |
| [`4_koleksiyon_yapilari`](4_koleksiyon_yapilari/) | `List`, `Set`, `Map` ve koleksiyon metotları |
| [`5_genel_tekrar`](5_genel_tekrar/) | Temel konuları birleştiren uygulama soruları |
| [`6_nyp_oop_kavramlari`](6_nyp_oop_kavramlari/) | Sınıflar, kurucular, kalıtım, overriding, polimorfizm, interface, soyut sınıflar, getter/setter ve statik üyeler |
| [`7_functional_programming_null_safety`](7_functional_programming_null_safety/) | Lambda, higher-order functions, koleksiyon dönüşümleri ve null safety |
| [`8_exception_generic`](8_exception_generic/) | Exception yönetimi, özel exception, generic fonksiyon, sınıf ve yığıt |
| [`9_asenkron_programlama`](9_asenkron_programlama/) | `Future`, `then`, `async`/`await` ve asenkron çalışma alıştırmaları |
| [`10_file_veritabani`](10_file_veritabani/) | `dart:io` ile dosyadan veri okuma ve dosyaya yazma |

Dosyaların çoğu kendi `main` fonksiyonuna sahip bağımsız örneklerdir. Bazı örnekler kullanıcı girdisi, dosya erişimi veya kısa bir bekleme süresi gerektirir.

## Kurulum ve kullanım

Depoyu gerçek adresinden klonlayın:

```bash
git clone https://github.com/hazarkasap/dart_notlar.git
cd dart_notlar
```

Tek bir örneği çalıştırın:

```bash
dart run 1_degiskenler/string_veri_tipi.dart
```

Asenkron programlama örneği:

```bash
dart run 9_asenkron_programlama/async_await.dart
```

Dosya okuma/yazma örneklerini çalıştırmadan önce kaynak kodda kullanılan dosya adını ve yazma davranışını inceleyin:

```bash
dart run 10_file_veritabani/dosyadan_veri_oku_yaz.dart
```

## Doğrulama kapsamı

Depo standart Dart analiz aracıyla paket oluşturmadan kontrol edilebilir:

```bash
dart analyze --no-fatal-warnings .
```

Bu komut analyzer hatalarında başarısız olur; öğrenme örneklerindeki mevcut uyarıları raporlar ancak başarısız saymaz. Çalışma zamanı davranışı, kullanıcı girdisi ve dosya yazma sonuçları otomatik olarak test edilmez.

## Proje durumu

Mevcut müfredat `0_kurulumlar` ile `10_file_veritabani` arasındaki bölümleri kapsar. Depo öğrenme notu olarak kullanılabilir durumdadır; bütünleşik bir uygulama veya yayımlanabilir Dart paketi değildir. Örnekler konu bazında bağımsız olarak çalıştırılmalıdır.

## Editör yapılandırması

`.vscode/launch.json`, VS Code'un Dart eklentisiyle o anda açık olan dosyayı çalıştıran genel bir başlatma ayarıdır. Kişisel yol veya kullanıcıya özel değer içermediği ve öğrenme akışını kolaylaştırdığı için depoda tutulmaktadır. VS Code kullanmak zorunlu değildir.

## Katkı rehberi

Yazım düzeltmeleri, daha anlaşılır Türkçe açıklamalar ve mevcut konu sırasına uygun küçük örnekler pull request ile önerilebilir.

1. Değişikliğin öğrenme hedefini açıklayın.
2. Değişen dosyalarda `dart analyze --no-fatal-warnings .` çalıştırın ve yeni analyzer hatası eklemeyin.
3. Kullanıcı girdisi veya dosya erişimi gerekiyorsa bunu pull request açıklamasında belirtin.
4. Kişisel editör ayarı, yerel dosya yolu, üretilmiş çıktı veya hassas veri eklemeyin.
5. Başka bir kaynaktan uyarlanan içerikte kaynağı ve yapılan değişiklikleri açıkça belirtin.

## Kaynak ve içerik kökeni

Önceki README, öğrenme kaynakları olarak BTK Akademi'deki Dart kursunu ve resmi Dart belgelerini listeliyordu. Ancak depo, her dosyanın özgünlüğünü veya bu kaynaklardan ne ölçüde uyarlandığını dosya bazında belgelememektedir. Bu nedenle kesin içerik kökeni doğrulanmış kabul edilmemeli; yeniden kullanım veya lisanslama öncesinde depo sahibi tarafından açıklığa kavuşturulmalıdır.

Başvurulan öğrenme kaynakları:

- [BTK Akademi](https://www.btkakademi.gov.tr/)
- [Dart documentation](https://dart.dev/docs)
- [Dart language overview](https://dart.dev/language)

## Lisans durumu

Bu depoda doğrulanmış bir `LICENSE` dosyası bulunmamaktadır. Bu nedenle önceki README'deki MIT lisansı iddiası kaldırılmıştır ve içerik için açık kaynak lisansı verildiği varsayılmamalıdır. Uygun lisans, içerik sahipliği ve kaynakları doğrulandıktan sonra depo sahibi tarafından ayrıca belirlenmelidir.
