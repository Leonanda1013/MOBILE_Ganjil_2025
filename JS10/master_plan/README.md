# Laporan Praktikum

## Identitas
- **Mata Kuliah**: Pemrograman Mobile
- **Program Studi**: Teknik Informatika
- **Semester**: 5
- **Nama**: Vincentius Leonanda Prabowo
- **NIM**: 2341720149
- **Kelas**: TI-3D

---

## Praktikum 1
![alt text](image.png)

## Tugas Praktikum 1
2. data_layer.dart digunakan sebagai penghubung, jika tidak ada file tersebut setiap model harus mengimportnya modelnya satu persatu, namun lewat data_layer.dart hanya perlu mengimpoertkan file ini

3. Perlu Variable plan karena sebagai sumber data untuk menampilkan daftar task dan memodifikasi task yang dimiliki pengguna. Dan dibuat konstanta karena objek awal Plan bersifat statis, efisien, immutable, dan aman digunakan sebagai nilai awal sebelum ada perubahan dari user.

5. Langkah 11 menginisialisasi ScrollController, menambahkan listener agar keyboard menutup saat user scroll. Dipanggil sekali saat widget dibuat. Langkah 13 membersihkan controller dan resource yang dipakai agar tidak terjadi memory leak. Dipanggil saat widget dihapus.


