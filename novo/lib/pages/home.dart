import 'package:flutter/material.dart';

import '../model/produto_model.dart';
import '../widgets/card_produto.dart';

final listaProd = [
  Produto(
    id: 1,
    nome: 'Panela',
    descricao: 'Uma panela de aço inoxidável.',
    preco: 15.00,
    caminho: 'assets/panela.jpg',
  ),
  Produto(
    id: 2,
    nome: 'Colher de Pau',
    descricao: 'Colher ideal para cozinhar sem riscar panelas.',
    preco: 5.50,
    caminho: 'assets/colher.jpg',
  ),
  Produto(
    id: 3,
    nome: 'Faca de Chef',
    descricao: 'Faca afiada ideal para cortes precisos.',
    preco: 32.90,
    caminho: 'assets/faca.jpg',
  ),
  Produto(
    id: 4,
    nome: 'Liquidificador',
    descricao: 'Liquidificador 700W com 3 velocidades.',
    preco: 129.90,
    caminho: 'assets/liquidificador.png',
  ),
  Produto(
    id: 5,
    nome: 'Prato de Cerâmica',
    descricao: 'Prato decorativo feito à mão.',
    preco: 22.00,
    caminho: 'assets/prato.jpg',
  ),
  Produto(
    id: 6,
    nome: 'Copo de Vidro',
    descricao: 'Copo resistente de vidro temperado (500ml).',
    preco: 8.00,
    caminho: 'assets/copo.jpg',
  ),
  Produto(
    id: 7,
    nome: 'Conjunto de Talheres',
    descricao: 'Jogo com 24 peças em aço inoxidável.',
    preco: 89.90,
    caminho: 'assets/talheres.jpg',
  ),
  Produto(
    id: 8,
    nome: 'Chaleira Elétrica',
    descricao: 'Chaleira elétrica 1,7L com desligamento automático.',
    preco: 159.00,
    caminho: 'assets/chaleira.png',
  ),
  Produto(
    id: 9,
    nome: 'Toalha de Mesa',
    descricao: 'Toalha de mesa de algodão 2x1,5m estampada.',
    preco: 45.50,
    caminho: 'assets/toalha.jpg',
  ),
  Produto(
    id: 10,
    nome: 'Tábua de Corte',
    descricao: 'Tábua de bambu antiderrapante com alça.',
    preco: 29.90,
    caminho: 'assets/tabua.png',
  ),
];

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Meu e-commerce', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),

      body: Column(
        children: [
          Text('Meus produtos: '),
          Divider(),
          Expanded(
            child: ListView.builder(
              itemCount: listaProd.length,
              itemBuilder: (context, index) =>
                  cardProduto(context, listaProd[index]),
            ),
          ),
        ],
      ),
    );
  }
}
