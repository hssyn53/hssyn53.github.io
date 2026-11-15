// Ortak sıralama için Supabase bağlantısı.
// Boş bırakılırsa skorlar yalnızca oyuncunun kendi tarayıcısında tutulur.
// "anon" / "publishable" anahtar herkese açık olacak şekilde tasarlanmıştır; "service_role" / "secret" anahtarı ASLA buraya koyma.
window.MANCINIK_CONFIG = {
  supabaseUrl: "",   // örn. "https://abcdefgh.supabase.co"
  supabaseKey: ""    // Project Settings → API Keys → anon (public) veya publishable key
};
