import 'package:flutter/material.dart';
import 'package:projeto/logica.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF009DFF),
        centerTitle: true,
        title: const Text('Carrinho'),
      ),
      body: Column(
        children: [
          Flexible(
            child: ListView.builder(
              itemCount: Logica.lista.length,
              itemBuilder: (context, index) {
                String? titulo = Logica.lista[index]['titulo'];
                String? subtitulo = Logica.lista[index]['autor'];

                return ListTile(
                  leading: Text(
                    (++index).toString(),
                    style: const TextStyle(fontSize: 20),
                  ),
                  title: Text(titulo!,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  subtitle: Text(subtitulo!,
                      style: const TextStyle(
                          color: Color(0xFF9E9E9E), fontSize: 15)),
                  trailing: const Icon(
                    Icons.collections_bookmark_outlined,
                  ),
                );
              },
            ),
          ),
          Center(
            child: SizedBox(
              height: 55,
              width: 250,
              child: ElevatedButton(
                style: ButtonStyle(
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                    alignment: Alignment.center,
                    backgroundColor:
                        const WidgetStatePropertyAll(Color(0xFF009DFF))),
                onPressed: () {
                  setState(() {
                    Logica.lista.clear();
                  });
                },
                child: const Center(
                  child: Text(
                    'Finalizar Pedido',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
