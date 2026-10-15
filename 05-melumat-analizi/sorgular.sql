-- Cədvəl: erizeler
-- Sütunlar: erize_id, tarix, yas_qrupu, cihaz, mebleg_azn, son_addim, tamamlandi,
--           sened_cehdi, muddet_deq, qerar, qerar_saat

-- 1. Ümumi tamamlanma faizi
SELECT
    COUNT(*) AS umumi_erize,
    SUM(tamamlandi) AS tamamlanan,
    ROUND(100.0 * SUM(tamamlandi) / COUNT(*), 1) AS tamamlanma_faizi
FROM erizeler;

-- 2. Hansı addımda neçə müştəri ayrılır
SELECT
    son_addim AS addim,
    COUNT(*) AS ayrilan_sayi,
    ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) FROM erizeler WHERE tamamlandi = 0), 1) AS ayrilanlarin_payi
FROM erizeler
WHERE tamamlandi = 0
GROUP BY son_addim
ORDER BY ayrilan_sayi DESC;

-- 3. Cihaza görə tamamlanma faizi
SELECT
    cihaz,
    COUNT(*) AS erize_sayi,
    ROUND(100.0 * SUM(tamamlandi) / COUNT(*), 1) AS tamamlanma_faizi
FROM erizeler
GROUP BY cihaz;

-- 4. Yaş qrupuna görə tamamlanma faizi
SELECT
    yas_qrupu,
    COUNT(*) AS erize_sayi,
    ROUND(100.0 * SUM(tamamlandi) / COUNT(*), 1) AS tamamlanma_faizi
FROM erizeler
GROUP BY yas_qrupu
ORDER BY yas_qrupu;

-- 5. Tamamlanan ərizələrin orta müddəti (dəqiqə)
SELECT ROUND(AVG(muddet_deq), 1) AS orta_muddet_deq
FROM erizeler
WHERE tamamlandi = 1;

-- 6. Qərarların bölgüsü və orta qərar müddəti (saat)
SELECT
    qerar,
    COUNT(*) AS say,
    ROUND(AVG(qerar_saat), 1) AS orta_saat
FROM erizeler
WHERE tamamlandi = 1
GROUP BY qerar;

-- 7. Aylıq tamamlanma faizi
SELECT
    SUBSTR(tarix, 1, 7) AS ay,
    COUNT(*) AS erize_sayi,
    ROUND(100.0 * SUM(tamamlandi) / COUNT(*), 1) AS tamamlanma_faizi
FROM erizeler
GROUP BY SUBSTR(tarix, 1, 7)
ORDER BY ay;
