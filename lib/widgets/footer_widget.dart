import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  final String nama;
  final String nim;

  const FooterWidget({super.key, required this.nama, required this.nim});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: double.infinity,
      color: Colors.lightGreen[600],
      child: Text(
        'Nama: $nama | NIM: $nim',
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
