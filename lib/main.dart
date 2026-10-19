import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Ganti import berikut (hapus awalan pages/ yang terdouble)
import 'models/item.dart';
import 'pages/home_page.dart';
import 'pages/item_page.dart';

// Konfigurasi Router Deklaratif
final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomePage(),
      routes: [
        GoRoute(
          path: 'item',
          builder: (context, state) {
            // Menerima objek Item yang dikirim dari HomePage melalui parameter 'extra'
            final item = state.extra as Item;
            return ItemPage(item: item);
          },
        ),
      ],
    ),
  ],
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Menggunakan MaterialApp.router untuk mendukung GoRouter
    return MaterialApp.router(
      title: 'Aplikasi Belanja',
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.green,
        useMaterial3: true,
      ),
    );
  }
}