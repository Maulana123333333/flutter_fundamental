import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pml/Domain/barang.dart';

class ItemBarangWidget extends StatelessWidget {
  final Barang barang;

  const ItemBarangWidget({super.key, required this.barang});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go('/detail/${barang.id}');
      },
      child: Container(
        color: Colors.tealAccent,
        margin: const EdgeInsets.symmetric(vertical: 3),
        padding: const EdgeInsets.all(5),
        child: Text(barang.namaBarang), // Diubah dari nama_barang menjadi namaBarang
      ),
    );
  }
}