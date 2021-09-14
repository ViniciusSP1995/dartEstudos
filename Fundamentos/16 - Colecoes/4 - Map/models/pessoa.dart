class Pessoa {
  static final Map<String?, dynamic> _pessoas = Map();
  String? nome;
  int? idade;
  double? peso;

  factory Pessoa(String? nome, {int? idade, double? peso}) {
    if (_pessoas.containsKey(nome)) return _pessoas[nome];

    final novaPessoa = Pessoa._construtorPrivado(nome, idade, peso);
    _pessoas[nome] = novaPessoa;
    return novaPessoa;
  }
  Pessoa._construtorPrivado(this.nome, this.idade, this.peso) {
    // configurações iniciais
  }
  static void mostrarDetalhes(String nome) {
    if (_pessoas.containsKey(nome)) {
      print('DETALHES: nome: $nome idade: ${_pessoas[nome]!.idade} peso: ${_pessoas[nome]!.peso}');
    } else {
      print('"${nome}" não existe no map de Pessoas');
    }
  }

  static void alterarDetalhes(String nome, {int? idade, double? peso}) {
    if (_pessoas.containsKey(nome)) {
      _pessoas[nome]!.idade = idade;
      _pessoas[nome]!.peso = peso;
      print("Alteração: nome: $nome, idade: ${_pessoas[nome]!.idade} peso: ${_pessoas[nome]!.peso}");
    } else {
      print('"${nome}" não existe no map de pessoas');
    }
  }

  static void mostrarPessoas() {
    print('PESSOAS: $_pessoas');
    _pessoas.forEach((chave, valor) => print('forEach: $chave: ${valor!.idade} peso: ${valor!.peso}'));
  }

  @override
  String toString() {
    return '$nome:  $idade';
  }
}
