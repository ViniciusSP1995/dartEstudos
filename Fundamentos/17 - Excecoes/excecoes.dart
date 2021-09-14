/*

* * TRATAMENTO DE EXCECAO;
* - try: Usado para testa uma lógica;
* - catch: Captura erros na lógica try;
* - on: Captura especificos/conhecidos na lógica try.
* - throw Expection: Exceção criada pelo usuário e tratada no catch
* - finally: Executado ao final try/catch, com exceção ou não: Utilizando liberar recursos na lógica try

*/

///
///Caso1: Quando você desconhece a exceção, use a clausula TRY CATCH
///
///
caso1() {
  print('Try Catch\n');

  try {
    int resultado = 1 ~/0;
    print('Resultado: $resultado');
  } catch (e) {
    print('Exceção: $e');
  }
}
///
/// CASO2: Quando vc conhece a excecao, use a clausla ON
///

caso2() {
  print('ON\n');

  try {
    int resultado = 1 ~/ 0;
    print('Resultado: $resultado');
  } on IntegerDivisionByZeroException {
    print('Exceção: Não é possível dividir por zero');
  }
}

///
/// CASO 3: Para descobrir eventos ocorridos antes da excecao, use Stack Trace!
///

caso3() {
  print('Stack Trace\n');

  try {
    int resultado = 1 ~/ 0;
    print('Resultado: $resultado');
  } catch (e,s) {
    print('Exceção: $e');
    print('Stack Trace: $s');
  }
}
///
/// CASO 4: Use finally para tratamentos após execucao de Try Catch, usada para liberar recursos utitlizados na logica Try Catch
///
///


caso4() {
  print('Finally\n');

  try {
    int resultado = 1 ~/ 0;
    print('Resultado: $resultado');
  } catch (e, s) {
    print('Exceção: $e');
  } finally {
    print('finally: Com ou sem exceção "finally" será executado!');
  }
}

caso5() {
  print('Throw Exception\n');

  try {
    int valorA = 1, valorB =0;
    double resultado = valorA / valorB;
    if(resultado.isInfinite) throw Exception('A variavel valorB deve ser != 0');

    print('Resultado: $resultado');
  } catch (e, s) {
    print('Exceção: $e');
  } finally {
    print('finally: Com ou sem exceção "finally" será executado!');
  }
}
main() {
  print('Tratamento de Exceções');
  caso1();
  caso2();
  caso3();
  caso4();
  caso5();
}