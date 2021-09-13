/*
  * Regras
  - Uma classe pode ter somente uma heranca;

  * Construtores
  - Devem obedecer a ordem dos paramentros
  - Parametros default devem ser nomeados ou posicionadas
  - Tratamento a tipagem de parametros deve ser feita na classe herdeira!

*/

import 'cao.dart';

void main() {
  print('Herança de atributos metodos e cosntrutores\n');

  var cao = Cao('Berlin', 'Yorkshire', 'Macho');
  print('nome; ${cao.nome} raça: ${cao.raca} sexo: ${cao.sexo} idade: ${cao.idade} docil: ${cao.docil}');
  cao..dormir()..alimentar()..acao();
  print('${cao.nome} ${cao.docil ? 'esta amigável' : 'não está amigável'}');
}