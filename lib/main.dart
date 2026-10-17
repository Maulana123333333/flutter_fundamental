import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. PRAKTIKUM 1: Section Judul (Title Section)
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red[500]),
          const Text('41'),
        ],
      ),
    );

    // 2. PRAKTIKUM 2: Section Tombol (Button Section)
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    // 3. PRAKTIKUM 3: Section Teks Deskripsi (Text Section)
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Kota Batu terkenal dengan keindahan alam pegunungan dan udaranya yang sejuk. '
        'Destinasi wisata ini menawarkan pemandangan spektakuler serta berbagai wahana rekreasi. '
        'Nama: [Dimas mochtar hasan maulana] | NIM: [24520003]',
        softWrap: true,
      ),
    );

    // 4. PRAKTIKUM 4: Menggabungkan Semua Section ke dalam ListView
    return MaterialApp(
      title: 'Flutter layout: Dimas 24520003',
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter layout demo')),
        body: ListView(
          children: [
            // Memanggil gambar dari folder assets (Praktikum 4)
            Image.asset(
              'images/asset.jpeg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection, // Praktikum 1
            buttonSection, // Praktikum 2
            textSection, // Praktikum 3
          ],
        ),
      ),
    );
  }

  // Method Helper untuk membuat kolom tombol (Praktikum 2)
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
