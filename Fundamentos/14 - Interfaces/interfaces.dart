/*
* Conceito
- Inferface são modelos para implementar metodos e atributos em nossas classes

* Regras
- Ao implementar uma interface devem utilizar todos os metodos e atributos
- No dartnão tem sintaxe para interface, pode ser uma classe concreta ou abstrata;
- POde implementar mais de uma interface e deve sobrescever todos metodos e atributos;

*/
  import 'meioCampo.dart';

void main() {
  print('Interfaces');

  var zidane = MeioCampo('Zidane', time: 'Real Madrid', nacionalidade: 'França');
  zidane..objetivo = 'Jogar Futebol'..objetivosPessoais()..postagem = 'Vou marcar um gol de voleio de esquerda na Champions League'..escreverPostagem()..ideologiaPolitica();
}