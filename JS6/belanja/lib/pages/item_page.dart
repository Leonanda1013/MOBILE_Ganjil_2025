import 'package:flutter/material.dart';
import '../models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text(itemArgs.name),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Hero(
            tag: itemArgs.name,
            child: Image.asset(
              itemArgs.image,
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(itemArgs.name, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                Text('Harga: Rp ${itemArgs.price}', style: const TextStyle(fontSize: 18)),
                Text('Stok: ${itemArgs.stock}'),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber),
                    Text('${itemArgs.rating} / 5'),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  'Deskripsi produk: Barang ini dibuat dari bahan berkualitas tinggi dan nyaman digunakan setiap hari.',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
