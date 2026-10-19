import 'package:flutter/material.dart';
import 'package:pml/Domain/barang.dart';

class DetailShopingScreen extends StatelessWidget {
  const DetailShopingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Membaca data barang dari arguments yang dikirim
    final barang = ModalRoute.of(context)!.settings.arguments as Barang;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          barang.namaBarang,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: barang.id,
              child: Image.network(
                barang.image,
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    barang.namaBarang,
                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Rp ${barang.harga}",
                    style: const TextStyle(
                      fontSize: 22,
                      color: Colors.teal,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Chip(
                        avatar: const Icon(Icons.inventory, size: 18),
                        label: Text("Stok: ${barang.stok}"),
                        backgroundColor: Colors.teal[50],
                      ),
                      const SizedBox(width: 10),
                      Chip(
                        avatar: const Icon(Icons.star, color: Colors.amber, size: 18),
                        label: Text("${barang.rating}"),
                        backgroundColor: Colors.amber[50],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}