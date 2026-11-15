-- Mancınık Atölyesi: ortak sıralama tablosu
-- Supabase panelinde SQL Editor'e yapıştırıp "Run" de.

create table if not exists public.scores (
  id         bigint generated always as identity primary key,
  name       text        not null check (char_length(name) between 2 and 16),
  score      integer     not null check (score between 0 and 2000),
  created_at timestamptz not null default now()
);

create index if not exists scores_score_idx on public.scores (score desc, created_at);

alter table public.scores enable row level security;

-- Herkes sıralamayı okuyabilir ve skor ekleyebilir; kimse silemez veya değiştiremez.
drop policy if exists "scores_select" on public.scores;
create policy "scores_select" on public.scores for select to anon, authenticated using (true);
drop policy if exists "scores_insert" on public.scores;
create policy "scores_insert" on public.scores for insert to anon, authenticated with check (true);

grant select, insert on public.scores to anon, authenticated;
