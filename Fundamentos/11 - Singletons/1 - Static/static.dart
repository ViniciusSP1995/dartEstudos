/*
*Singleton
- É um padrão de projeto para que exista apenas uma instância da classe
- O consturtor nomeado privado sem o construtor default impede de instanciar a classe.

*Static
- A instância pode ser acessada diretamente.
*/

import 'pessoaStatic.dart';

void main() {
  print(' Singletons - Static');

  print(PessoaStatic.instancia.nome);

  PessoaStatic.instancia.nome = 'Vinícius';
  print(PessoaStatic.instancia.nome);
  var p1 = PessoaStatic.instancia;
  var p2 = PessoaStatic.instancia;
  p1.nome = 'Maria';
  print(PessoaStatic.instancia.nome);
  p2.nome = 'Berlin';
  print(PessoaStatic.instancia.nome);
  print(identical(p1,p2));
  print(p2 == PessoaStatic.instancia);

}

