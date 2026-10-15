# 04. Proseslər

GitHub bu diaqramları avtomatik çəkir (Mermaid).

## AS-IS: hazırkı proses
Müştəri ərizəni 11 addımda tamamlamalıdır, orta müddət 18 dəqiqədir.

```mermaid
flowchart TD
    A["1. Tətbiqə daxil olur"] --> B["2. Şəxsi məlumatları əl ilə yazır"]
    B --> C["3. Ünvan və iş yeri məlumatını yazır"]
    C --> D["4. Kredit məbləğini və müddəti seçir"]
    D --> E["5. Gəlir sənədini yükləyir"]
    E --> F{"Sənəd düzgündür?"}
    F -- "Xeyr" --> E
    F -- "Bəli" --> G["6. Əlavə sənədləri yükləyir"]
    G --> H["7. Məlumatları yoxlayır"]
    H --> I["8. SMS təsdiq kodunu daxil edir"]
    I --> J["9. Ərizəni göndərir"]
    J --> K["10. Analitik əl ilə yoxlayır, 2 iş günü"]
    K --> L{"Qərar"}
    L -- "Təsdiq" --> M["11. Müştəriyə bildiriş"]
    L -- "Rədd" --> N["Müştəriyə rədd bildirişi"]

    E -. "Çoxu burada ayrılır" .-> X["Ərizə yarımçıq qalır"]
    G -. "Çoxu burada ayrılır" .-> X
```

### AS-IS-də problemlər
| Addım | Problem |
|---|---|
| 2-3 | Məlumatlar əl ilə yazılır, vaxt aparır və səhv riski var |
| 5-6 | Sənəd yükləmə mürəkkəbdir, səhv olsa təkrar yükləmək lazım gəlir |
| 10 | Qərar 2 iş günü çəkir, müştəri gözləyir |
| Ümumi | Yarımçıq saxlanan ərizəyə sonra qayıtmaq mümkün deyil |

## TO-BE: təklif olunan proses
Müştəri ərizəni 6 addımda tamamlayır, hədəf müddət 8 dəqiqədir.

```mermaid
flowchart TD
    A["1. ASAN İmza ilə daxil olur"] --> B["Məlumatlar avtomatik dolur"]
    B --> C["2. Məbləğ və müddəti seçir, aylıq ödəniş dərhal görünür"]
    C --> D["3. Gəlir sənədini şəkil çəkərək yükləyir"]
    D --> E["4. Sistem sənədi və gəliri avtomatik yoxlayır"]
    E --> F["5. SMS ilə təsdiq edir"]
    F --> G{"6. İlkin qərar, 5 dəqiqə"}
    G -- "Təsdiq" --> H["Müştəri təklifi qəbul edir"]
    G -- "Rədd" --> I["Səbəb göstərilir"]
    G -- "Əl ilə yoxlama" --> J["Analitikin siyahısına düşür"]
    J --> K["Müştəriyə təxmini müddət bildirilir"]

    D -. "Yarımçıq qalsa" .-> S["Avtomatik saxlanır, sonra davam edir"]
```

## Əsas fərqlər
| Göstərici | AS-IS | TO-BE |
|---|---|---|
| Addım sayı | 11 | 6 |
| Orta müddət | 18 dəqiqə | 8 dəqiqə |
| Qərar müddəti | 2 iş günü | 5 dəqiqə (ilkin) |
| Məlumat daxil etmə | Əl ilə | ASAN İmza ilə avtomatik |
| Yarımçıq ərizə | İtirilir | Saxlanılır |