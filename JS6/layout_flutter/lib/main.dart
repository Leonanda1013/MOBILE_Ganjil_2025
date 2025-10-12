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
              crossAxisAlignment: CrossAxisAlignment.start, // posisi kolom di awal baris
              children: [
                // soal 2
                Container(
                  padding: const EdgeInsets.only(bottom: 8), // jarak bawah 8
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
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

    return MaterialApp(
      title: 'Flutter layout: Nama dan NIM Anda',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        // Ganti body "Hello World" dengan variabel titleSection
        body: Column(
          children: [
            titleSection,
          ],
        ),
      ),
    );
  }
}
