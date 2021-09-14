///
/// * Future:
/// - É um objeto que retorna um valor ou erro, resultado de uma execução assincrona/futura;
//

/// funcao retorna string
String tarefa({int tempo = 1}) {
  var msg = status(tempo);
  return 'Status: $msg';
}

Future<String> status([int? tempo]) {
  return Future.delayed(Duration(seconds: tempo!), () => 'Primeira Tarefa finalizada!\n');
}

void novaTarefa({int tempo = 1}) {
     Future.delayed(Duration(seconds: tempo), () => print('\n Status: Segunda Tarefa finalizada!\n'));
}

excecao({int tempo = 1}) => Future.delayed(Duration(seconds: tempo), () => throw Exception('Erro intencional'));

void contagem({int segundos = 3}) {
  print('Carregando...\n');
  for(var i = 1; i <= segundos; i++) {
    Future.delayed(Duration(seconds: i), () {
      print('${i * 33}%');
      if(i == segundos) print('\nConcluído!');
    });
  }
}


main() {
  print('Futures\n');

  print(tarefa(tempo: 4)); //o print é executado antes do termino da future!

  novaTarefa(tempo: 4); // o print é executado na future

  excecao(tempo: 6);
  
  contagem();
}