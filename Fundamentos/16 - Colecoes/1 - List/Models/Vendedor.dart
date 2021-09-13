class Vendedor {
  String? nome;
  List<Venda> vendas;
  Vendedor(this.nome, this.vendas);
}

class Venda {
  String produtos = '';
  double preco = 0;
  Venda(this.produtos, this.preco);
}
