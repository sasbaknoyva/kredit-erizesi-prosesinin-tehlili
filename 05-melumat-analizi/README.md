# 05. Məlumat analizi

> Bu qovluqdakı məlumat **sintetikdir**. "Bank X" xəyali bankdır və ərizələr təhlil məqsədilə hazırlanmış nümunə məlumatdır. Real müştəri məlumatı yoxdur.

## Fayllar
| Fayl | Məzmun |
|---|---|
| `erizeler.csv` | 2000 ərizə, 1 iyul – 30 sentyabr 2026 |
| `sorgular.sql` | Analiz üçün 7 SQL sorğusu |

## Məlumatın sütunları
| Sütun | Mənası |
|---|---|
| `erize_id` | Ərizənin nömrəsi |
| `tarix` | Ərizənin başladığı tarix |
| `yas_qrupu` | Müştərinin yaş qrupu |
| `cihaz` | Android və ya iOS |
| `mebleg_azn` | İstənilən kredit məbləği (AZN) |
| `son_addim` | Müştərinin çatdığı son addım (1-11) |
| `tamamlandi` | 1 – ərizə tamamlanıb, 0 – yarımçıq qalıb |
| `sened_cehdi` | Sənəd yükləmə cəhdlərinin sayı |
| `muddet_deq` | Doldurma müddəti (dəqiqə) |
| `qerar` | Təsdiq, Rədd və ya Əl ilə yoxlama |
| `qerar_saat` | Qərarın çıxma müddəti (saat) |

## Əsas nəticələr

### 1. Tamamlanma faizi
2000 ərizənin **799-u** tamamlanıb, yəni **40.0%**. Qalan 1201 ərizə yarımçıq qalıb. Bu, [01-biznes-ehtiyac](../01-biznes-ehtiyac) bölməsindəki hazırkı göstəricidir.

### 2. Müştərilər harada ayrılır
| Addım | Ayrılan sayı | Yarımçıq qalanların payı |
|---|---|---|
| 5. Gəlir sənədini yükləmək | 381 | 31.7% |
| 6. Əlavə sənədləri yükləmək | 226 | 18.8% |
| 3. Ünvan və iş yeri | 126 | 10.5% |
| 4. Məbləğ və müddət | 103 | 8.6% |
| 2. Şəxsi məlumatlar | 97 | 8.1% |
| 1. Daxil olmaq | 89 | 7.4% |
| 7-10. Yoxlama, təsdiq, göndərmə, gözləmə | 179 | 14.9% |

**Nəticə:** yarımçıq qalan ərizələrin təxminən **yarısı (50.5%)** yalnız 5-ci və 6-cı addımda, yəni sənəd yükləmə mərhələsində ayrılır. Bu, [04-prosesler](../04-prosesler) bölməsindəki AS-IS problemini təsdiqləyir.

### 3. Cihaz və yaş qrupu üzrə
| Cihaz | Ərizə sayı | Tamamlanma |
|---|---|---|
| Android | 1176 | 38.4% |
| iOS | 824 | 42.1% |

| Yaş qrupu | Ərizə sayı | Tamamlanma |
|---|---|---|
| 18-25 | 428 | 40.7% |
| 26-35 | 815 | 37.7% |
| 36-45 | 457 | 46.8% |
| 46-60 | 300 | 34.7% |

Android və iOS arasındakı fərq kiçikdir (3.7 faiz bəndi), ona görə bunu qəti nəticə kimi yox, ilkin müşahidə kimi qəbul etmək lazımdır. Ən aşağı göstərici 46-60 yaş qrupundadır (34.7%), bu qrup üçün sənəd yükləmə axınının ayrıca yoxlanması məqsədəuyğundur.

### 4. Müddət və qərar
- Tamamlanan ərizənin orta doldurma müddəti: **18.2 dəqiqə**
- Qərarlar: Təsdiq 432 (54.1%), Rədd 214 (26.8%), Əl ilə yoxlama 153 (19.1%)
- Orta qərar müddəti: təxminən **46 saat**, yəni 2 iş günü

### 5. Aylar üzrə dinamika
| Ay | Ərizə sayı | Tamamlanma |
|---|---|---|
| İyul | 696 | 42.0% |
| Avqust | 635 | 40.0% |
| Sentyabr | 669 | 37.8% |

Tamamlanma faizi üç ay ərzində azalıb. Bunun səbəbini bu məlumatla izah etmək olmur, daha uzun dövr və əlavə məlumat lazımdır.

## SQL-i necə işə salmaq olar
1. [DB Browser for SQLite](https://sqlitebrowser.org) proqramını aç
2. **File → Import → Table from CSV file** ilə `erizeler.csv` faylını yüklə (cədvəlin adı `erizeler` olsun)
3. **Execute SQL** bölməsində `sorgular.sql` faylındakı sorğuları işə sal

## Excel ilə təkrar yoxlama
Eyni nəticələri Excel-də də almaq olar. `erizeler.csv` faylını Excel-də aç və:
- Tamamlanma faizi: `=AVERAGE(G2:G2001)` (G sütunu `tamamlandi`)
- Cihaz üzrə faiz: `=AVERAGEIFS(G2:G2001, D2:D2001, "Android")`
- Addım üzrə ayrılanlar: **Insert → PivotTable**, sətirə `son_addim`, qiymətə `erize_id` (Count), filtrə `tamamlandi = 0`
