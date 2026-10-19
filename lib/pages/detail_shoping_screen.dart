import 'package:flutter/material.dart';


class DetailShopingScreen extends StatelessWidget {
  const DetailShopingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Shoping"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: const Text("Ini halaman detail"),
      ),
    ); // <-- Tanda titik koma (;) ditambahkan di sini
  }
}