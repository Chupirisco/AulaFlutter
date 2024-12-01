import 'package:flutter/material.dart';

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF009DFF),
        title: Row(
          children: [
            const SizedBox(width: 10),
            const Icon(Icons.reorder_rounded),
            const Spacer(),
            const Text('Home'),
            const Spacer(),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/PaginaCarrinho');
              },
              icon: const Icon(Icons.shopping_cart_outlined),
            ),
            const SizedBox(width: 10),
          ],
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 15),
          const Text(
            'SIU',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const Text(
            'Sistema de Informações de Livros',
            textAlign: TextAlign.center,
            style: TextStyle(color: Color(0xFF9E9E9E), fontSize: 20),
          ),
          const Divider(
            color: Colors.black,
            indent: 20,
            endIndent: 20,
            height: 3,
          ),
          const SizedBox(height: 15),
          livros('A Revolução dos Bichos', 'George Orwell', context, true),
          livros('Romeu e Julieta', 'William Shakespeare', context, false),
          livros('Dom Casmurro', 'Machado de Assis', context, false),
          livros(
              'O Pequeno Principe', 'Antoine de Saint-Exupéry', context, false),
        ],
      ),
    );
  }

  ListTile livros(
      String titulo, String subtitulo, BuildContext context, bool verificador) {
    return ListTile(
      title: Text(
        titulo,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        'Autor: $subtitulo',
        style: const TextStyle(color: Color(0xFF9E9E9E), fontSize: 15),
      ),
      trailing: const Icon(
        Icons.collections_bookmark_outlined,
      ),
      onTap: () =>
          verificador ? Navigator.pushNamed(context, '/PaginaLivro') : null,
    );
  }
}
