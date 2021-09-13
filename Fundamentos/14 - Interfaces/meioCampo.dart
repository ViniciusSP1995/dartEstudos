import 'jogador.dart';
import 'origens.dart';
import 'postagem.dart';

class MeioCampo extends Jogador implements Postagem, Origens {
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
  void ideologiaPolitica() {
    print('$nome é candidato com ideologia de $time pelo partido $nacionalidade');
  }
}
