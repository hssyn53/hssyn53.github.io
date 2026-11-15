# Mancınık Atölyesi

Tarayıcıda çalışan, gerçek fizik motoruyla (cannon.js) çözülen 3B karşı ağırlıklı mancınık oyunu.
Oyuncu adını yazar, 5 atışlık kuşatma görevini oynar, skoru ortak sıralamaya girer.

Adres: https://hssyn53.github.io/mancinik/

## Ortak sıralamayı açmak (Supabase)

1. https://supabase.com üzerinde ücretsiz bir proje oluştur.
2. **SQL Editor**'e `supabase.sql` dosyasının içeriğini yapıştırıp çalıştır.
3. **Project Settings → API Keys** sayfasından proje URL'sini ve **anon / publishable** anahtarı kopyala
   (`service_role` / `secret` anahtarı ASLA kullanma).
4. `config.js` içine bu iki değeri yaz, commit'le. Birkaç dakika içinde site güncellenir.

`config.js` boşken oyun yine çalışır; skorlar sadece oyuncunun kendi tarayıcısında tutulur.

Not: Skorlar tarayıcıdan gönderildiği için meraklı biri sahte skor yollayabilir. Tablo 0–100.000 arası
skor ve 2–16 karakter ad kabul eder; istenmeyen satırlar Supabase panelindeki Table Editor'den silinebilir.
