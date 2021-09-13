class Proprietario {
  String nome, endereco;
  List<Carro> carros;
  Proprietario(this.nome, this.endereco, this.carros);
}

class Carro {
  String marca, modelo, placa;
  Caracteristicas caracteristica;
  List<Multa>? multas;
  Carro(this.marca, this.modelo, this.placa, this.caracteristica, {List<Multa>? multas}) {
    this.multas = multas;
  }
}

class Caracteristicas {
  String tipo;
  int passageiros;
  int potencia;
  String combustivel;

  Caracteristicas(this.tipo, this.passageiros, this.potencia, this.combustivel);
}

class Multa {
  String descricao, tipo;
  int pontos;
  Multa(this.descricao, this.tipo, this.pontos);
}
