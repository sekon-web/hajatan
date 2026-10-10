-- Jalankan di Supabase: SQL Editor > New query > Run

create table if not exists public.kondangan (
  id         uuid primary key default gen_random_uuid(),
  hajatan    text not null default 'Hajatan Sutarto Onah',
  nama       text not null,
  alamat     text,
  beras_kg   numeric(7,2) not null default 0,
  jajanan    text,
  uang       bigint not null default 0,
  catatan    text,
  created_at timestamptz not null default now()
);

create index if not exists kondangan_nama_idx on public.kondangan (lower(nama));

-- Keamanan: hanya user yang sudah login yang boleh baca/tulis
alter table public.kondangan enable row level security;

drop policy if exists "owner_all" on public.kondangan;
create policy "owner_all" on public.kondangan
  for all to authenticated
  using (true) with check (true);
