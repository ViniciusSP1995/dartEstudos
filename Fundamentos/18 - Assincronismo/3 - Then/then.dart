/*
 * Conceito
  - Then registra callbacks que serão chamadas quando o Futute for concluído;
  * onValue: valor passado ao termino do Future;
  * cathError: Se omitido é lancado como uma exception
  * test: Se qualquer lógica retornar true é lanaca a exception;
  * whenCompleto: Chama uma funcao anonima ao termino da Future
*/

///
/// * FUNÇÕES ASSINCRONAS;
///
///


Future<dynamic> tarefa({int tempo = 1}) {
  return status(tempo).then((msg) {
    return '\nStatus $msg';
  }).catchError((onError){
      print('CatchError: $onError');
  }, test: (onError) => onError is! Future && onError.runtimeType != Future,
  ).whenComplete((){
    print('Future completa!');
  }); 
  //var msg = status(tempo);
  //return 'Status: $msg';
}

Future<dynamic> status([int? tempo]) {
  return Future.delayed(Duration(seconds: tempo!), () => Future.error('Erro intencional'));
  //return Future.delayed(Duration(seconds: tempo!), () => 'Primeira Tarefa finalizada!\n');
}

///
/// * FUNÇÃO SINCRONA
///
///

void contagem({int segundos = 3}) {
  print('Carregando...\n');
  for (var i = 1; i <= segundos; i++) {
    Future.delayed(Duration(seconds: i), () {
      print('${i * 33}%');
      if (i == segundos) print('\nConcluído!');
    });
  }
}



main() {
  print('THEN');

  contagem(segundos: 3);

  tarefa(tempo: 4).then((onValue) => print(/*onValue?? 'Status: nulo'*/onValue)); //função assíncrona
}