# Bank mobil tətbiqində kredit ərizəsi prosesinin təhlili

IT business analyst yanaşması ilə hazırlanmış layihə: onlayn kredit ərizəsinin tamamlanma faizinin niyə aşağı olduğunu təhlil edir və prosesin təkmilləşdirilməsini təklif edir.

> **Qeyd:** "Bank X" xəyali bankdır. Layihədəki bütün məlumat sintetikdir və təhlil məqsədilə hazırlanıb.

## Problem
Bank X-in mobil tətbiqində kredit ərizəsinə başlayan müştərilərin yalnız **40%-i** prosesi tamamlayır. Ərizə 11 addımdan ibarətdir, orta doldurma müddəti 18 dəqiqədir, qərar isə təxminən 2 iş günü çəkir.

## Əsas tapıntılar
- Yarımçıq qalan ərizələrin **50.5%-i** yalnız 5-ci və 6-cı addımda, yəni sənəd yükləmə mərhələsində ayrılır.
- Şəxsi məlumatların əl ilə yazıldığı 2-3-cü addımlarda daha 18.6% itki olur.
- 46-60 yaş qrupunda tamamlanma ən aşağıdır (34.7%).

## Təklif
Prosesi **11 addımdan 6 addıma** endirmək, ASAN İmza ilə məlumatları avtomatik doldurmaq, sənəd yükləməni sadələşdirmək və ilkin qərarı **5 dəqiqə** ərzində göstərmək. Hədəf: tamamlanma faizini 40%-dən 60%-ə çıxarmaq.

## Layihənin tərkibi
| Bölmə | Məzmun |
|---|---|
| [01-biznes-ehtiyac](01-biznes-ehtiyac) | Problem, məqsəd, uğur göstəriciləri, əhatə dairəsi |
| [02-maraqli-terefler](02-maraqli-terefler) | Maraqlı tərəflər, təsir və maraq matrisi, əlaqə planı |
| [03-telebler](03-telebler) | Funksional və qeyri-funksional tələblər, user story-lər |
| [04-prosesler](04-prosesler) | AS-IS və TO-BE proses diaqramları |
| [05-melumat-analizi](05-melumat-analizi) | 2000 ərizənin SQL və Excel ilə analizi |
| [06-wireframe](06-wireframe) | TO-BE prosesinin 6 ekranının eskizi |
| [07-riskler-tovsiyeler](07-riskler-tovsiyeler) | Tövsiyələr, risklər, təqdimat planı |

## İstifadə olunan alətlər
Mermaid (proses diaqramları), SQL (SQLite), Excel, Markdown, Git və GitHub.

## Hazırlayan
[@sasbaknoyva](https://github.com/sasbaknoyva)