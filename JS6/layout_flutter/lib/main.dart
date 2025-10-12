import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // --- Membuat kolom bagian kiri pada judul ---
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32), // padding 32 di semua sisi
      child: Row(
        children: [
          Expanded(
            // soal 1
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // posisi kolom di awal baris
              children: [
                // soal 2
                Container(
                  padding: const EdgeInsets.only(bottom: 8), // jarak bawah 8
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey[500], // teks abu-abu
                  ),
                ),
              ],
            ),
          ),
          // soal 3
          const Icon(
            Icons.star,
            color: Colors.red, // warna merah
          ),
          const Text('41'),
        ],
      ),
    );

    // --------------------------
    // Langkah 2: Button Section
    // --------------------------
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment:
          MainAxisAlignment.spaceEvenly, // jarak antar kolom merata
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );
    // --------------------------
    // Langkah 3: Text Section
    // --------------------------
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Carilah teks di internet yang sesuai '
        'dengan foto atau tempat wisata yang ingin '
        'Anda tampilkan. '
        'Tambahkan nama dan NIM Anda sebagai '
        'identitas hasil pekerjaan Anda. '
        'Selamat mengerjakan 🙂.',
        softWrap: true,
      ),
    );
    return MaterialApp(
      title: 'Flutter layout: Vincentius dan 2341720149',
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter layout demo')),
        // Ganti body "Hello World" dengan variabel titleSection
        body: Column(
          children: [
            Image.asset(
              '.../images/gunung.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  // --------------------------
  // Langkah 1: Method _buildButtonColumn
  // --------------------------
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min, // ukuran minimum kolom
      mainAxisAlignment: MainAxisAlignment.center, // posisi tengah
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(
            top: 8,
          ), // jarak atas antara ikon dan teks
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color, // warna teks sama dengan warna ikon
            ),
          ),
        ),
      ],
    );
  }
}
