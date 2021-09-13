/*
* Conceito
- Mixin permite implementar metodos e atribuso de outras classes

* Regras
- Podem ser implementadas antes das interfaces
- Podem ser implementadas a partir de uma classe concreta e abstrata
- Não pode implementar uma classe que estenda e estender de uma classe mixin
- Pode implementar mais de um mixin,e nao é obrigatoria usar todos metodos e atributos
- As classes que possuem metodos iguais serão sobrescritos em orgem até a classe herdeira

*ON

- É obrigatório declar uma classe como mixin
- Restringi o uso de mixin as classes que estendem ou implementam a classe declarada;

*/

abstract class Jogador {
  String nome;

  Jogador(this.nome);

  void objetivosPessoais();

  void direitosDeveres() {
    print('Todo jogador tem direitos e deveres');
  }
}

 // Interfaces


abstract class Origens {
  String? time;
  String? nacionalidade;

  void origemJogador();
}

class Postagem {
  String? postagem;

  void escreverPostagem() {
    print('');
  }
}
// MIXIN
mixin Legal on Jogador {
  bool legal = false;

  void cumprirDeveres();
}

abstract class Salario {
  double _saldo = 0, salario = 33000;

  get saldo => this._saldo;
  set depositar(double valor) => this._saldo = valor;

  bool declaracaoRenda() => _saldo / 12 < salario;
}


//CLASSE CONCRETA
class MeioCampo extends Jogador with Legal, Salario implements Postagem, Origens {
  String? objetivo;

  MeioCampo(String nome, {this.time, this.nacionalidade}) : super(nome) {
    direitosDeveres();
  }

  @override
  void objetivosPessoais() {
    print('$nome tem o objetivo de $objetivo');
  }

  // INTERFACES
  @override
  String? postagem;

  @override
  void escreverPostagem() {
    print('Postagem $nome no facebook: $postagem');
  }

  @override
  String? time;
  String? nacionalidade;

  @override
  void origemJogador() {
    print('$nome é jogador do $time e representa a $nacionalidade');
  }

  //mixins
  @override 
  void cumprirDeveres() {
    legal = super.declaracaoRenda();
    if(legal) {
      print('Jogador $nome está recebendo legalmente e está fora do FISCO');

    } else {
      print('Jogador $nome será investigado pelo FISCO, Salário $saldo excede a renda declarada para um jogador');
    }
  }
}






void main() {
  print('Mixins');

  var zidane = MeioCampo('Zidane', time: 'Real Madrid', nacionalidade: 'França');
  zidane
    ..objetivo = 'Jogar Futebol'
    ..objetivosPessoais()
    ..postagem = 'Vou marcar um gol de voleio de esquerda na Champions League'
    ..escreverPostagem()
    ..origemJogador()..depositar = 3660000..cumprirDeveres();
}
