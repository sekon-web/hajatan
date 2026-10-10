# Buku Kondangan

Aplikasi catatan kondangan: cari cepat walau nama salah tulis, bisa dipakai offline, di-install seperti aplikasi Android.

## Cara pasang (±15 menit)

### 1. Supabase
1. Buat project baru di supabase.com.
2. **SQL Editor** → tempel isi `schema.sql` → Run.
3. **Authentication → Users → Add user**: isi email + password Anda (centang Auto Confirm).
4. **Authentication → Sign In / Providers → Email**: matikan *Allow new users to sign up* supaya orang lain tidak bisa daftar.
5. **Project Settings → API**: salin *Project URL* dan *anon public key* ke `config.js`.

### 2. GitHub
Buat repo baru, upload isi folder ini (`index.html`, `config.js`, `sw.js`, `manifest.webmanifest`, `icon-192.png`, `icon-512.png`).

### 3. Cloudflare Pages
Workers & Pages → Create → Pages → Connect to Git → pilih repo.
Build command: kosong. Output directory: `/` (atau folder tempat `index.html`). Deploy.

### 4. Install di HP
Buka alamat `*.pages.dev` di Chrome Android → menu ⋮ → **Install app** / **Tambahkan ke layar utama**.
Setelah itu muncul ikon sendiri, terbuka layar penuh, dan data terakhir tetap bisa dicari saat sinyal jelek.

## Cara pakai
- **Cari**: ketik nama atau kampung di kotak atas. Typo ditoleransi (mis. "Sutrisno" ≈ "Sutriso", "Surtisno", "Soetrisno").
- **Catat**: tombol ＋ Catat. Saat mengetik nama, aplikasi memberi tahu bila sudah ada nama yang mirip (supaya tidak dobel).
- **Saat ada tagihan**: cari nama tamu → ketuk kartunya → terlihat beras, jajanan, dan uang yang dulu dibawa.
- **Impor massal**: tombol **Impor** di kanan atas → pilih file `.csv` atau `.xlsx`. Baris pertama = judul kolom (nama, alamat, beras, jajanan, uang, catatan, hajatan). Kolom dicocokkan otomatis dan bisa diubah. Angka seperti `50.000`, `Rp 50.000`, `50rb`, `2,5 kg` dibaca otomatis. Yang namanya + alamatnya sudah ada akan dilewati. Tersedia tombol "Unduh contoh CSV". Excel perlu internet saat dibaca; CSV tidak.
- Beberapa hajatan: isi kolom "Hajatan" (mis. "Nikah Rina 2026").

## Catatan
- Anon key boleh publik; data dilindungi login + Row Level Security.
- Menambah/mengubah data butuh internet. Membaca/mencari bisa offline dari cache terakhir.
