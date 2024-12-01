import 'package:flutter/material.dart';
import 'package:projeto/pages/books.dart';
import 'package:projeto/pages/cart.dart';
import 'package:projeto/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/PaginaInicial': (context) => const PaginaInicial(),
        '/PaginaLivro': (context) => const PaginaLivro(),
        '/PaginaCarrinho': (context) => const Cart(),
      },
      initialRoute: '/PaginaInicial',
    );
  }
}
