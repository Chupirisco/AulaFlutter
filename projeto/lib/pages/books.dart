import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto/logica.dart';

class PaginaLivro extends StatefulWidget {
  const PaginaLivro({super.key});

  @override
  State<PaginaLivro> createState() => _PaginaLivroState();
}

class _PaginaLivroState extends State<PaginaLivro> {
  static bool like = false;
  static int cont = 0;

  void alterarValores() {
    like = !like;
    like ? cont++ : cont--;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF009DFF),
        centerTitle: true,
        title: const Text('Página de Livros'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/image.jpeg'),
          Container(
            margin: const EdgeInsets.only(left: 15, top: 20, right: 15),
            child: Row(
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'A Revolução dos Bichos',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                    ),
                    Text(
                      'George Orwell',
                      style: TextStyle(color: Color(0xFF9E9E9E), fontSize: 15),
                    ),
                  ],
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    setState(() {
                      alterarValores();
                    });
                  },
                  icon: like
                      ? const Icon(
                          CupertinoIcons.heart_solid,
                          color: Colors.pink,
                        )
                      : const Icon(CupertinoIcons.heart),
                ),
                Text(cont.toString()),
              ],
            ),
          ),
          const Spacer(),
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1.5),
            ),
            child: const Text(
                'O livro narra uma história de corrupção e traição e recorre a figuras de animais para retratar as fraquezas humanas e demolir o "paraíso comunista" proposto pela União Soviética na época de Stalin. A revolta dos animais da quinta contra os humanos é liderada pelos porcos Bola-de-Neve (Snowball) e Napoleão (Napoleon). Os animais tentam criar uma sociedade utópica, porém Napoleão, seduzido pelo poder, afasta Bola-de-Neve e estabelece uma ditadura tão corrupta quanto a sociedade de humanos.'),
          ),
          const Spacer(
            flex: 2,
          ),
          Center(
            child: SizedBox(
              height: 55,
              width: 200,
              child: ElevatedButton(
                style: ButtonStyle(
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                    alignment: Alignment.center,
                    backgroundColor:
                        const WidgetStatePropertyAll(Color(0xFF009DFF))),
                onPressed: () {
                  Logica.adicionarAtributos(
                      'A Revolução dos Bichos', 'George Orwell');
                },
                child: const Center(
                  child: Text(
                    'Alugar',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
