import 'package:flutter/material.dart';

import '../model/produto_model.dart';

class ProdutoPage extends StatefulWidget {
  final Produto produto;
  const ProdutoPage({super.key, required this.produto});

  @override
  State<ProdutoPage> createState() => _ProdutoPageState();
}

class _ProdutoPageState extends State<ProdutoPage> {
  bool favorito = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              padding: EdgeInsets.symmetric(horizontal: 20),
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(Icons.close),
            ),
          ),

          Card(
            margin: const EdgeInsets.all(8.0),
            elevation: 3,
            child: ClipRRect(
              child: Image.asset(
                widget.produto.caminho,
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                widget.produto.nome,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              IconButton(
                onPressed: () {
                  setState(() {
                    favorito = !favorito;
                  });
                },
                icon: favorito
                    ? Icon(Icons.favorite, color: Colors.red)
                    : Icon(Icons.favorite_border),
              ),
            ],
          ),

          Text(widget.produto.descricao, style: TextStyle(fontSize: 20)),
          Spacer(),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(
              'Comprar R\$ ${widget.produto.preco.toStringAsFixed(2)}',
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
