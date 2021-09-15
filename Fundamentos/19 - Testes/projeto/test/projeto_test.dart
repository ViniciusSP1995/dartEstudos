import 'package:projeto/projeto.dart';
import 'package:test/test.dart';

void main() {
  // TESTES VARIAVEIS
  test('Converter Strings em Array', (){
    String texto = 'Vinícius,Iraci,Maria';
    expect(texto.split(','), equals(['Vinícius', 'Iraci', 'Maria']));
  });
  // TESTES FUNÇÕES
  test('calculate', () {
    expect(calculate(), 42);
  });

  group('Manipulação de Strings', (){
    test('Converter em Lista', () => expect(converterEmLista('Iraci da Silva'), equals(['Iraci','da', 'Silva'])));

  test('RecuperarNome', () => expect(recuperarNome(['Vinícius', 'da', 'Silva']), allOf(contains('cius'), isNot(startsWith('Ira')), endsWith('us'))));
  });

  group('Manipulação de ints', () {
      test('Resto da divisão', () => expect(restoDivisao(12, 3), equals(0)));

    test('Verificar Maioridade', () {
      expect(maioridade(18), 'Adulto');
      expect(maioridade(17), 'Adolescente');
      expect(maioridade(13), 'Criança');
    });
  });


}
