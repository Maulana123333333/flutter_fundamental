// ✅ Benar
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import '../models/item.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // 10 Data Barang Belanja
  final List<Item> items = [
    Item(
      name: 'Mentimun',
      price: 5000,
      image: 'https://images.unsplash.com/photo-1449300079323-02e209d9d3a6?auto=format&fit=crop&w=500&q=80',
      stock: 25,
      rating: 4.8,
    ),
    Item(
      name: 'Tomat',
      price: 8000,
      image: 'https://images.unsplash.com/photo-1592924357228-91a4daadcfea?auto=format&fit=crop&w=500&q=80',
      stock: 15,
      rating: 4.9,
    ),
    Item(
      name: 'Wortel',
      price: 6000,
      image: 'https://images.unsplash.com/photo-1598170845058-32b9d6a5da37?auto=format&fit=crop&w=500&q=80',
      stock: 30,
      rating: 4.7,
    ),
    Item(
      name: 'Kentang',
      price: 12000,
      image: 'https://images.unsplash.com/photo-1518977676601-b53f82aba655?auto=format&fit=crop&w=500&q=80',
      stock: 20,
      rating: 4.6,
    ),
    Item(
      name: 'Bawang Merah',
      price: 15000,
      image: 'https://images.unsplash.com/photo-1618512496248-a07fe83aa8cb?auto=format&fit=crop&w=500&q=80',
      stock: 10,
      rating: 4.8,
    ),
    Item(
      name: 'Bawang Putih',
      price: 14000,
      image: 'https://images.unsplash.com/photo-1540148426945-6cf22a6b2383?auto=format&fit=crop&w=500&q=80',
      stock: 18,
      rating: 4.9,
    ),
    Item(
      name: 'Cabai Merah',
      price: 20000,
      image: 'https://images.unsplash.com/photo-1588252303782-cb80119abd6d?auto=format&fit=crop&w=500&q=80',
      stock: 12,
      rating: 4.5,
    ),
    Item(
      name: 'Bayam',
      price: 3000,
      image: 'https://images.unsplash.com/photo-1576045057995-568f588f82fb?auto=format&fit=crop&w=500&q=80',
      stock: 40,
      rating: 4.8,
    ),
    Item(
      name: 'Brokoli',
      price: 10000,
      image: 'https://images.unsplash.com/photo-1459411621453-7b03977f4bfc?auto=format&fit=crop&w=500&q=80',
      stock: 14,
      rating: 4.9,
    ),
    Item(
      name: 'Jagung',
      price: 7000,
      image: 'https://images.unsplash.com/photo-1551754655-cd27e38d2076?auto=format&fit=crop&w=500&q=80',
      stock: 22,
      rating: 4.7,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: items.length, // Secara otomatis membaca 10 data
              itemBuilder: (context, index) {
                final item = items[index];
                return InkWell(
                  onTap: () {
                    context.go('/item', extra: item);
                  },
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Hero(
                            tag: item.name,
                            child: Image.network(
                              item.image,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item.name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text('Rp ${item.price}'),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Stok: ${item.stock}'),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 16,
                                      ),
                                      Text('${item.rating}'),
                                    ],
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
              },
            ),
          ),
          // Footer
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.lightGreen,
            width: double.infinity,
            child: const Text(
              'Nama: Dimas mochtar | 24520003',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
