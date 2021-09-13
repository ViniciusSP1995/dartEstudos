/*
*Final
Inicializada apenas quando acessada em tempo de execução, deve ser declarada!
Em colecoes final nem todo o conteúdo será final

*/

import 'pessoa.dart';

void main() {
  print('Modificadores Final\n');

  //? Obejto em queda livre leva 5s para chegar ao solo! Qual a velocidade maxima do objeto?

  final gravidade = 9.0;
  int tempo = 5;
  double velocidade = gravidade * tempo; // v = g * t

  print('Velocidade máxima: $velocidade m/s\n');

  for(int i = 1; i <= 3; i++) {
    final indice = i;
    print('contagem $indice');
  }
  var pessoa = Pessoa('Fernando', ['Maria', 'Iraci']);
  pessoa.nome = 'Vinícius da Silva';
  //pesoa.familiares = [] //erro atributo final
  print('nome: ${pessoa.nome} familiares: ${pessoa.familiares}');
}

