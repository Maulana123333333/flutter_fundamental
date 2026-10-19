import 'package:flutter/material.dart';
import 'package:pml/data/barang.dart';

class ShopingScreen extends StatelessWidget {
  const ShopingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("shoping List"), backgroundColor: Colors.blue),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: listBarang.length,
          itemBuilder: (context, index) {
            final barang = listBarang[index];
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/detail', arguments: barang);
              },

              child: Container(
                color: Colors.tealAccent,
                margin: const EdgeInsets.symmetric(vertical: 3),
                padding: const EdgeInsets.all(5),
                child: Text(barang!["namaBarang"]),
              ),
            );
          },
        ),
      ),
    );
  }
}
