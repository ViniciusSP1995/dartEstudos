

import 'dart:collection';

///
/// * Conceito
/// - Map é uma coleção dinmaica e customizávl de chaves e valores entre {}. As chaves são unicas, e os valores não se repetem!
///

linkedHashMap() {
  print('LinkedHashMap == Map\n');

  List<String> nomes = ['Vinícius', 'Leila'];

  Map<int?, String?> nomesMap = nomes.asMap(); // converte uma lista em map
  print('\n$nomesMap');
  nomesMap.forEach((chave, valor) => print('$chave: $valor'));

  Map<String?, dynamic?> frutas = Map();
  frutas['banana'] = 'amarela';
  frutas['banana'] = 'verde'; // mesma chave atualiza o valor
  frutas['goiaba'] = 'amarela';
  frutas['maça'] = 'vermelha';
  print('\n$frutas');
  print(frutas.containsKey('banana'));
  print(frutas.containsValue('azul'));
  print(frutas['banana']);
  frutas.clear();
  frutas[null] = null; // aceita chave e valor nulos
  print('$frutas\n');

  Map<String?, dynamic?> usuario = Map.from({'nome': 'Vinícius', 'idade': 26, 'peso': 81});
  usuario.update('nome', (valor) => '$valor da Silva');
  usuario.update('idade', (valor) => ++valor);
  usuario.update('peso', (valor) => 70, ifAbsent: () => 'indefinido'); // manipular a chave caso ela não exista
  print(usuario);
  usuario.removeWhere((chave, valor) => chave == 'peso' && valor == 70);
  usuario.update('peso', (valor) => 70, ifAbsent: () => 'indefinido');
  usuario.putIfAbsent('altura', () => 1.79);
  usuario.addAll({'sexp': 'masculino', 'casado': false});
  print('\n$usuario');
  print('chaves: ${usuario.keys} \n ${usuario.values}\n');

  Map<int?, dynamic?> numeros = {0: 'zero', 1: 'um', 2: 'dois'};
  print(numeros);
  print(numeros.map((chave, valor) => MapEntry(chave, '${valor.toUpperCase()}'))); //mapeando valores
  for (var chave in numeros.keys) {
    print('forIn: $chave');
  }

  for (var valor in numeros.values) {
    print('forIn: $valor');
  }

  for (var key in numeros.keys) {
    final valor = numeros[key];
    print('forIn: chave $key valor ${valor.toUpperCase()}');
  }
}

///
/// * Map:
/// - Map transforma/seleciona os elementos de uma coleção criando uma nova do mesmo tamanho
///

mapMap() {
  print('Map map');

  List<Map<String, dynamic>> carrinho = [
    {'nome': 'Borracha', 'preco': 3.45},
    {'nome': 'Caderno', 'preco': 13.9},
    {'nome': 'KitLapis', 'preco': 41.22},
    {'nome': 'Caneta', 'preco': 7.5}
  ];
  Function!;
  porcentagem(double desconto) => (valor) => desconto * valor['preco']; //closure
  final moeda = (e) => 'RS ${e.toDouble().toStringAsFixed(2).replaceFirst('.', ',')}';
  //double porcentagem(desconto) => (valor) => desconto * valor['preco'];
  List<String> preco1 = carrinho.map(porcentagem(0.9)).map(moeda).toList();
  print('Lista1: $preco1');

  List<String> preco2 = carrinho.map((e) => e.update('preco', (e) => e * .9)).map(moeda).toList();
  String precoMedio = (carrinho.map((e) => e['preco']).reduce((p, c) => p + c) / carrinho.length).toStringAsFixed(2);
  print('Lista1: $preco1\n Lista2: $preco2\nPreco Médio: $precoMedio');

  List<Map<String, Object>> escola = [
    {
      'nome': 'Turma T1',
      'alunos': [
        {'nome': 'Vinícius', 'nota': 8.1},
        {'nome': 'Maria', 'nota': 9.3},
      ]
    },
    {
      'nome': 'Turma T2',
      'alunos': [
        {'nome': 'Berlin', 'nota': 8.9},
        {'nome': 'Iraci', 'nota': 7.5},
      ]
    }
  ];

//List<dynamic?>alunosEscola = (escola.map((e) => e['alunos']).expand((a) => a).map((e) => e['nota']).toList());  --- EXPAND ESTÁ CHORANDO

//print('Lista Ordenada $alunosEscola');
}

///
/// * Conceito;
/// - Every faz o teste em 'todos' elementos com o operador logico
///

everyMap() {
  print('\n Map Every\n');

  List<Map<String, dynamic>> pessoas = [
    {'nome': 'Vinícius', 'idade': 26},
    {'nome': 'Iraci', 'idade': 71},
    {'nome': 'Maria', 'idade': 60},
  ];

  print(pessoas.every((e) => e.containsKey('nome')));
  print(pessoas.every((e)=> e['idade'] >= 17));
  bool maiores = pessoas.every((e) => e['nome'].startsWith('V'));
  print(maiores);
}
///
/// * Conceito
/// - Where filta os elementos da coleção criando uma nova do mesmo tamanho ou menor!
///
whereMap() {
  print('Map Where\n');

  List<Map<dynamic, dynamic>> produtos = [
    {'nome': 'Noteook', 'preco': 2499, 'Frágil': true},
    {'nome': 'IPad', 'preco': 4199, 'Frágil': true},
    {'nome': 'IPhone', 'preco': 2299, 'Frágil': true},
    {'nome': 'Magic Mouse', 'preco': 299, 'Frágil': false},
  ];

  final fragil = (e) => e['Frágil'] == true;
  final nome = (e) => e['nome'];
  List<dynamic> resultado = produtos.where(fragil).map(nome).toList();
  print('Produtos Frágeis: $resultado\n');

  List<Map<String, dynamic?>> pessoas = [
{'nome': 'Vinícius', 'idade' : 26},
{'nome': 'Maradona', 'idade' : 11},
{'nome': 'Berlin', 'idade' : 1},


  ];
  Map<String, dynamic> maiores = pessoas.singleWhere((e) => e['idade']>= 21);
  Map<String, dynamic> comecaComM = pessoas.firstWhere((e) => e['nome'].startsWith('M'));
  List<Map<String, dynamic>> menores= pessoas.where((e)=> e['idade'] < 18).toList();
  final idades = (e) => e['idade'];
  final soma = (p,c) => p + c;
  var media = (pessoas.map(idades).reduce(soma)) / pessoas.length;
    print('Menores: $menores\n Maiores: $maiores\n Média de idades: $media \nComeça com M: ${comecaComM ?? 'Nenhum'}');
}

///
///
/// * Conceito;
/// - Reduce compara os elementos da coleção retornando 1 valor elemento resultante
/// - Ao interagir com os elementos e indice 0 se retorna o anterior, índice 1 se retorna o atual
///
///

reduceMap() {
  print('Map Reduce\n');

  List<Map<String,dynamic>> alunos = [
    {'nome': 'Vinícius', 'nota': 7.3, 'bolsista': false},
    {'nome': 'Vagner', 'nota': 8.6, 'bolsista': true},
    {'nome': 'Douglas', 'nota': 8.5, 'bolsista': true},
    {'nome': 'Adriana', 'nota': 9.1, 'bolsista': false},
  

  ];

  final nomes = (e) => e['nome'];
  final notas = (e) => e['nota'];
  final soma = (p,c) => p + c;

  List<dynamic> bolsistasNomes = alunos.where((e) => e['bolsista'] as bool).map(nomes).toList();
  List<Map<String, dynamic>> media = alunos.where((e) => e['bolsista']).toList();
  var bolsistasMedia = media.map(notas).reduce(soma) / media.length;
  var todosBolsistas = alunos.map((e)=> e['bolsista']).reduce((p,c) => p && c);
  var algumBolsista = alunos.map((e) => e['bolsista']).reduce((p, c) => p || c);
  print('Todos são bolsistas?${todosBolsistas ? ' sim' : ' não'}\n Algum Bolsista? ${algumBolsista ? ' sim' : ' não'}');
  print('Alunos Bolsistas: $bolsistasNomes Média das Notas $bolsistasMedia');

  List<dynamic> funcionarios = [
    {'nome': 'Vinícius', 'genero' : 'M', 'pais': 'Brasil', 'salario': 1599.79},
    {'nome': 'Adriana', 'genero': 'F', 'pais': 'Brasil', 'salario': 1799.79},
    {'nome': 'Maria', 'genero': 'F', 'pais': 'Brasil', 'salario': 1899.79},
  ];

  final brasileiros = (e) => e['pais'] == 'Brasil';
  final mulheres = (e) => e['genero'] == 'F';
  final menorSalario = (p,c) => p['salario'] < c['salario'] ? p['salario'] : c['salario']; // filtro para salarios
  final funcMenorSalario = (p, c) => p['salario'] < c['salario'] ? p : c; // filtro para salarios
  List<dynamic> selecionados = funcionarios.where(brasileiros).where(mulheres).toList();
  print(selecionados);
  print(selecionados.reduce(menorSalario));
  Map<String, dynamic> funcionario = selecionados.reduce(funcMenorSalario);
  print('Funcionário: ${funcionario['nome']}, Salário :${funcionario['salario']}');
}



main() {
  linkedHashMap();
  mapMap();
  everyMap();
  whereMap();
  reduceMap();
}
