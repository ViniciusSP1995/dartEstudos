/*

* Sincrona:
- Operações sincronas: bloqueia a eecução até que seja concluída;
- Funções sincronas: Executa soment operações sincronas;

* Assíncrona;
- Operações assíncronas: Permite executar outras operações enquanto são processadas
- Funções assíncronas: Executam ao menos uma operção assíncrona e operações síncronas;

* Await:
- Indica e espera uma operação assíncrona, conclusão de uma future;

* Async:
- Deve ser usado se toda função que tenha operações assíncronas, Await!

*/


///
/// * FUNÇÕES ASSINCRONAS
///
///
Future<String> tarefa({int tempo = 1}) async {
  var msg = await status(tempo);
  return 'Status: $msg';
}

Future<String?>? status([int? tempo]) {
  try{
    if(tempo !< 4)  throw Exception('Tempo insuficiente para o Load programado');
  return Future.delayed(Duration(seconds: tempo), () => 'Primeira Tarefa finalizada!\n');
  } catch (e) {
   print('catch: $e');
    return null;
  }
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

main()  async {
  print(' Async Await\n');

  contagem(segundos: 3); // função sincrona;

  print(await tarefa(tempo: 3)); //função assíncrona
}