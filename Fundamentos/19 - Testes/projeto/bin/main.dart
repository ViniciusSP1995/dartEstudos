/**
 *  * Assert
 *  - Usa lógica boleana para testar afirmações no modo debug!
 *  - Try/Catch pode usado para tratar a exceção


 *  * Test
 *  - Certifique-se de ter o package "test" em "dev_dependencies" no arquivo
 * - Atualize os packages no terminal usando com "pub get"
 * - Execute os testes na pasta raiz usando "pub run test"
 * - Podemos testar variáveis, funções e efetuar testes em grupos
  
 * Sintaxe
  test("Descrição", () {
    expect(valorReal, valorEsperado)
  });
 */


import 'package:projeto/projeto.dart' as projeto;

void main(List<String> arguments) {
  print('Testes Unitários\n');

  print('Hello world: ${projeto.calculate()}!');
  print('Listar Nomes: ${projeto.converterEmLista('Vinícius da Silva')}');
  print('Verificar a maior idade: ${projeto.maioridade(-17)}!');
  print('Recuperar nome: ${projeto.recuperarNome(['Vinícius', 'da', 'Silva'])}');
  print('Resto da divisão: ${projeto.restoDivisao(12,3)}');
  // fora do try catch gera exceção!
  String? texto;
  assert(texto == null);

  try {
    String telefone = '12345678';
    assert(telefone.length == 9, 'O telefone deve conter 9 digitos');
  } catch (e) {
    print("Exceção: $e");
  }
}
