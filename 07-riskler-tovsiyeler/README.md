# 07. Risklər və tövsiyələr

## Qısa nəticə
Ərizənin tamamlanma faizi 40%-dir və yarımçıq qalanların təxminən yarısı (50.5%) sənəd yükləmə mərhələsində (5-6-cı addımlar) ayrılır ([05-melumat-analizi](../05-melumat-analizi)). Prosesi 11 addımdan 6 addıma endirmək, məlumatları avtomatik doldurmaq və qərarı sürətləndirmək hədəf göstəricilərə çatmağın əsas yoludur.

## Tövsiyələr
| № | Tövsiyə | Əsaslandırma | Prioritet |
|---|---|---|---|
| 1 | Gəlir sənədini tək sənədə endirmək və telefonla şəkil çəkməyi asanlaşdırmaq | 5-6-cı addımlarda ayrılma 607 ərizədir (yarımçıq qalanların 50.5%-i) | Yüksək |
| 2 | ASAN İmza ilə şəxsi məlumatları, ünvanı və iş yerini avtomatik doldurmaq | 2-3-cü addımlarda 223 ərizə (18.6%) ayrılır | Yüksək |
| 3 | İlkin qərarı 5 dəqiqə ərzində avtomatik göstərmək | Hazırda qərar təxminən 46 saat çəkir | Yüksək |
| 4 | Yarımçıq ərizəni saxlamaq və müştəriyə xatırlatma bildirişi göndərmək | Yarımçıq qalan 1201 ərizənin bir hissəsi geri qaytarıla bilər | Orta |
| 5 | 46-60 yaş qrupu üçün axını ayrıca yoxlamaq (müsahibə, sınaq) | Bu qrupda tamamlanma ən aşağıdır (34.7%) | Orta |

### Sadə ssenari
5-6-cı addımlarda ayrılan 607 ərizənin üçdə biri ərizəni davam etdirərsə, təxminən 202 ərizə əlavə olunar və tamamlanma 40%-dən təxminən 50%-ə yaxınlaşar (799 + 202 = 1001 / 2000). Bu hesab sadələşdirilib: sonrakı addımlardakı itkilər nəzərə alınmır, ona görə real artım bir qədər az ola bilər.

## Risklər
| Risk | Ehtimal | Təsir | Tədbir |
|---|---|---|---|
| Avtomatik qərar səhv verilir və kredit itkisi artır | Orta | Yüksək | Riskli hallar əl ilə yoxlamaya göndərilir, qaydalar risk meneceri ilə razılaşdırılır |
| Xarici mənbələrlə (ASAN, DSMF) inteqrasiya gecikir və ya işləmir | Orta | Yüksək | Ehtiyat variant: sənədin əl ilə yüklənməsi |
| Şəxsi məlumatlar qorunmur | Aşağı | Yüksək | Şifrələmə, giriş nəzarəti, jurnal, compliance təsdiqi |
| Sənədin avtomatik oxunmasında səhvlər olur | Orta | Orta | Müştəriyə təsdiq ekranı göstərilir, səhvi düzəltmək imkanı verilir |
| Müştərilər yeni axını qəbul etmir | Aşağı | Orta | Kiçik qrupda sınaq, rəylərə görə düzəliş |
| IT resursu və vaxt çatışmır | Orta | Orta | Mərhələli təqdimat, ən təsirli tövsiyələrdən başlamaq |
| Tamamlanma faizi hədəfə (60%) çatmır | Orta | Orta | Hər mərhələdən sonra ölçmə və prioritetlərin yenilənməsi |

## Təqdimat planı
| Mərhələ | Nə edilir | Gözlənilən nəticə |
|---|---|---|
| 1 | ASAN İmza ilə avtomatik doldurma, addımların azaldılması | 2-3-cü addımlarda itkinin azalması |
| 2 | Gəlir sənədinin sadələşdirilməsi, yarımçıq ərizənin saxlanması | 5-6-cı addımlarda itkinin azalması |
| 3 | Avtomatik ilkin qərar (müştərilərin 10%-i üzərində sınaq) | Qərar müddətinin 5 dəqiqəyə enməsi |
| 4 | Nəticələrə baxıb bütün müştərilərə açmaq | Hədəf göstəricilərə çatmaq |

Hər mərhələdən sonra köhnə və yeni axın müqayisə edilir (A/B test).

## Uğurun ölçülməsi
| Göstərici | Hazırda | Hədəf |
|---|---|---|
| Ərizənin tamamlanma faizi | 40% | 60% |
| Orta doldurma müddəti | 18 dəqiqə | 8 dəqiqə |
| Ərizədə addım sayı | 11 | 6 |
| İlkin qərar müddəti | ~46 saat | 5 dəqiqə |

Göstəricilər [05-melumat-analizi/sorgular.sql](../05-melumat-analizi/sorgular.sql) faylındakı sorğularla hər ay yenilənə bilər.

## Məhdudiyyətlər
- Təhlildə istifadə olunan məlumat sintetikdir. Real layihədə nəticələr bankın faktiki məlumatı ilə yenidən yoxlanmalıdır.
- Cihaz və yaş qrupları arasındakı fərqlər kiçikdir, qəti nəticə yox, ilkin müşahidə kimi qəbul edilməlidir.
- Sənəd yükləmənin əsas səbəbi bu məlumatla izah olunmur. Bunun üçün müştəri müsahibələri və istifadəçi davranışı (hansı ekranda nə qədər qalır) lazımdır.