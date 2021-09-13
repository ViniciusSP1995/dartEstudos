/*
* Conceito
- Mixin permite implementar metodos e atributos de outras classes

* Regras
- Devem ser implementadas antes das interfaces
- Podem ser implementadas a partir de uma classe concreta ou abstrata
-Não pode implementar uma classe que estende e estender de uma classe mixin
- Pode implementar mais de um mixin e não é obrigatorio usar todos os metodos e atributos
- As clases que possuem metodos iguais serão sobrescritas em ordem até a classe herdeira

*ON
- É obrigatório declar sua classe como mixin
-Retringi o uso de mixin as classes que estendem ou implementam a classe declarada;

*/
abstract class Artista {
  void acao() {
    print('Performista...');
  }
}

// MIXIN

mixin Cantor on Artista {
    void acao() {
    print('Canta');
  }
}

class Dancarino {
      void acao() {
    print('Dança');
  }
}

// INTERFACE

abstract class Acao {
  void executar();
}

// CLASSES CONCRETAS

class Musico extends Artista with Dancarino, Cantor implements Acao {
  void acao() => print('Compõe'); //comente para ver a hierarquia de sobrescritas
  @override
  void executar() {
    super.acao();
    acao();
  }

}

// A classe MC não pode cantar porque não estende de artista

class MC with Dancarino implements Acao {
    void acao() => print('Mixa...Coloca o batidão!'); //comente para ver a hierarquia de sobrescritas

  @override
  void executar() {
    super.acao();
    acao();
  }
}
main() {
 print('Mixin On\n');

 Musico musico = Musico();
 musico.executar();

print('');

 MC mc = new MC();
 mc.executar();
}