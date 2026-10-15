# 03. Tələblər

## Funksional tələblər
| ID | Tələb | Prioritet |
|---|---|---|
| FR-01 | Müştəri ASAN İmza və ya şəxsiyyət vəsiqəsi ilə daxil ola bilməlidir | Yüksək |
| FR-02 | Ad, soyad və FİN identifikasiyadan sonra avtomatik doldurulmalıdır | Yüksək |
| FR-03 | Kredit məbləği və müddəti seçiləndə aylıq ödəniş dərhal göstərilməlidir | Yüksək |
| FR-04 | Müştəri gəlir sənədini telefondan şəkil və ya fayl kimi yükləyə bilməlidir | Yüksək |
| FR-05 | Ərizə hər addımdan sonra avtomatik saxlanmalı və sonra davam etdirilə bilməlidir | Yüksək |
| FR-06 | İlkin qərar (təsdiq, rədd və ya əl ilə yoxlama) 5 dəqiqə ərzində göstərilməlidir | Yüksək |
| FR-07 | Müştəri ərizənin statusunu tətbiqdə izləyə bilməlidir | Orta |
| FR-08 | Status dəyişəndə müştəriyə bildiriş gəlməlidir | Aşağı |
| FR-09 | Əl ilə yoxlanmalı ərizələr analitik üçün vahid siyahıda görünməlidir | Yüksək |

## Qeyri-funksional tələblər
| ID | Tələb | Meyar |
|---|---|---|
| NFR-01 | Sürət | Hər ekran 2 saniyədən tez açılmalıdır |
| NFR-02 | Təhlükəsizlik | Şəxsi məlumatlar şifrələnərək ötürülməli və saxlanmalıdır |
| NFR-03 | Əlçatanlıq | Sistem ayda ən azı 99.5% işləməlidir |
| NFR-04 | Sadəlik | Ərizə ən çox 6 addımda tamamlanmalıdır |
| NFR-05 | İzlənilmə | Hər addım və qərar jurnala yazılmalıdır |

## User story-lər

### US-01. Sürətli giriş
**Müştəri kimi** mən ASAN İmza ilə daxil olmaq istəyirəm ki, məlumatlarımı əl ilə yazmayım.

Qəbul meyarları:
- ASAN İmza ilə daxil olduqda ad, soyad və FİN avtomatik dolur
- Giriş alınmasa, səbəb göstərilir və təkrar cəhd etmək olur

### US-02. Sənəd yükləmə
**Müştəri kimi** mən gəlir sənədimi telefonla çəkib yükləmək istəyirəm ki, filiala getməyim.

Qəbul meyarları:
- JPG, PNG və PDF formatları qəbul edilir
- Fayl 10 MB-dan böyükdürsə, aydın xəta mesajı çıxır
- Yüklənən sənədin önizləməsi görünür və dəyişdirilə bilir

### US-03. Ərizəyə davam etmək
**Müştəri kimi** mən yarımçıq qalan ərizəmə sonra davam etmək istəyirəm ki, hər şeyi yenidən yazmayım.

Qəbul meyarları:
- Ərizə hər addımdan sonra avtomatik saxlanır
- Saxlanmış ərizə 7 gün ərzində açıla bilir

### US-04. Tez qərar
**Müştəri kimi** mən nəticəni tez bilmək istəyirəm ki, başqa banka müraciət etməyim.

Qəbul meyarları:
- İlkin nəticə 5 dəqiqə ərzində göstərilir
- Əl ilə yoxlama lazımdırsa, təxmini müddət yazılır

### US-05. Yoxlama siyahısı
**Kredit analitiki kimi** mən əl ilə yoxlanmalı ərizələri bir siyahıda görmək istəyirəm ki, işimi planlaşdıra bilim.

Qəbul meyarları:
- Siyahı gözləmə müddətinə görə sıralanır
- Hər ərizədə yoxlamaya göndərilmə səbəbi görünür