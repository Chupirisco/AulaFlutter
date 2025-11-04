import 'package:flutter/material.dart';

import '../model/produto_model.dart';
import '../pages/produto_page.dart';

Widget cardProduto(BuildContext context, Produto produto) {
  return Card(
    margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
    elevation: 2,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    child: ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.green.shade100,
        child: Icon(Icons.shopping_bag, color: Colors.green.shade800),
      ),
      title: Text(
        produto.nome,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(produto.descricao, maxLines: 1),
      trailing: Text(
        'R\$ ${produto.preco.toStringAsFixed(2)}',
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.green,
        ),
      ),
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => ProdutoPage(produto: produto)),
      ),
    ),
  );
}
