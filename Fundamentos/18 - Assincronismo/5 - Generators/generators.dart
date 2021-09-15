/*
 *Conceito:
 - Generators são funções Heradoras produzem sequencias de valores usando:
 > Funções sincronas retornam Iterable
 > Funções assíncronas retornam Stream
*/

///
/// yield
/// * Utilizado em função geradoras sincronas e assíncronas
/// * Adiciona um valor ao fluxo de saldo de função assíncrona e retornando sem encerrar a função;
///
funcoesGeradoras() {
  print('Funções Geradoras');
  Iterable<int>? funcaoSincrona(int repeticaoMaxima) sync* {
    int i = 0;
    while (i < repeticaoMaxima) yield ++i;
  }

  print(funcaoSincrona(5));

  Stream<int>? funcaoAssincrona(int repeticaoMaxima) async* {
    int i = 0;
    while (i < repeticaoMaxima) yield ++i;
  }

  funcaoAssincrona(3)!.forEach((e) => print(e));
}

///
/// * yield *
/// * Utilizado as funções geradoras sincronas e assíncronas recursivas
/// * Você poderá melhorar seu desempenho usando yield* usando gerador for recursivo;
///

funcoesGeradorasRecursivas() {
  print('Funções Geradoras Recursivas\n');

  Iterable<int> funcaoSincrona(int repeticaoMaxima) sync* {
    for (var i = 1; i <= repeticaoMaxima; i++) {
      yield i;
      yield* funcaoSincrona(i - repeticaoMaxima);
    }
  }

  print(funcaoSincrona(3));

  Stream<int> funcaoAssincrona(int repeticaoMaxima) async* {
    for (var i = 1; i <= repeticaoMaxima; i++) {
      yield i;
      yield* funcaoAssincrona(i - repeticaoMaxima);
    }
    funcaoAssincrona(3);
  }

  funcaoAssincrona(3).forEach((e) => print(e));
}

///
/// * Try Catch
/// > Tratamento exceções
///
tratamentosExcecoes() async {
  print('Tratamento de exceções');

  Future<int> streamSoma(Stream<int> stream) async {
    var soma = 0;
    //await for(var valor in stream) {
    //   soma += valor;
    // }
    try {
      await for (var valor in stream) {
        soma += valor;
      }
    } catch (e) {
      print(e);
      return -1;
    }
    return soma;
  }

  Stream<int> streamContagem(int termino, {int erro = 0}) async* {
    for (var i = 1; i <= termino; i++) {
      //yield i;
      if (i == erro) {
        throw Exception('Exception intencional');
      } else {
        yield i;
      }
    }
  }

  var stream = streamContagem(10, erro: 3);
  var soma = await streamSoma(stream);
  print(soma);
  //print(stream)
  //stream.forEach((e)=> print(e));
}

main() {
  //funcoesGeradoras();
  //funcoesGeradorasRecursivas();
  tratamentosExcecoes();
}
