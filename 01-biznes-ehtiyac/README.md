# 01. Biznes ehtiyacı

## Kontekst
"Bank X" fiziki şəxslərə mobil tətbiq vasitəsilə nağd kredit verir. Müştəri ərizəni tətbiqdə doldurur, amma çoxu bunu axıra çatdırmır.

> Qeyd: "Bank X" xəyali bankdır. Layihədəki rəqəmlər təhlil məqsədilə hazırlanmış sintetik məlumatdır.

## Problem
Ərizə prosesində bir neçə problem üst-üstə düşür:
- çoxlu sənəd tələb olunur və doldurma uzun çəkir
- ekranlar mürəkkəbdir, müştəri nə edəcəyini həmişə başa düşmür
- qərar gec çıxır
- bunun nəticəsində ərizələrin böyük hissəsi yarımçıq qalır

Problem iki tərəfə eyni dərəcədə təsir edir. Müştəri vaxt itirir və çox vaxt başqa banka gedir. Bank isə hazır müştəri axınını və potensial gəliri itirir.

## Məqsəd
Ərizəni axıra çatdıran müştərilərin sayını artırmaq.

## Uğur göstəriciləri
| Göstərici | Hazırda | Hədəf |
|---|---|---|
| Ərizənin tamamlanma faizi | 40% | 60% |
| Orta doldurma müddəti | 18 dəqiqə | 8 dəqiqə |
| Ərizədə orta addım sayı | 11 | 6 |

## Əhatə dairəsi
**Daxildir:** mobil tətbiqdə ərizə axını, identifikasiya, sənəd yükləmə, qərarın göstərilməsi.
**Daxil deyil:** kredit ödənişləri, borc yığımı, veb versiya.

## Fərziyyələr
- Müştəri ASAN İmza və ya şəxsiyyət vəsiqəsi ilə identifikasiyadan keçir.
- Mövcud tətbiq arxitekturası dəyişmir, yalnız ərizə axını yenilənir.