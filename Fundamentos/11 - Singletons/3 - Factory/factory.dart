/*
  * Singleton
  - É um padrão de projeto para que exista apenas uma instância da classe.
  - O construtor nomeado privado sem o construtor default impede de isntanciar a classe.
  * Factory
  - Construtor factory é usado para retornar/manter a instancia original.
  - Construtor factory é capaz de retornar valores.

*/

import 'pessoaFactory.dart';

singletonFactory() {
  print('Singletons Factory\n');

  var p1 = new PessoaFactory();
  print(p1.nome);
  p1.nome = 'Vinícius';
  print(PessoaFactory.instancia.nome);
  PessoaFactory.instancia.nome = 'Maria';
  print(p1.nome);
  var p2 = PessoaFactory();
  p2.nome = 'Berlin';
  print(PessoaFactory.instancia.nome);
  print(identical(p1, PessoaFactory.instancia));
  print(p2 == PessoaFactory.instancia);

}

singletonInstancia() {
  print('Singleton Instancia\n');

  var p1 = new PessoaInstancia(nome: 'Vinícius');
  print('nome: ${p1.nome} id: ${p1.identidade}');

  var p2 = PessoaInstancia(nome: 'Maria', identidade: 123456789);
    print('nome: ${p2.nome} id: ${p2.identidade}');
    p2.nome = 'Vinícius da Silva';
    print('nome: ${p1.nome} id: ${p1.identidade}');
    print(identical(p1,p2));
    //print(p2 == PessoaInstancia.instancia);
}
void main() {
  singletonFactory();
  singletonInstancia();
}

 