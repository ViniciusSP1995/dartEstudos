import 'conta.dart';
import 'usuario.dart';

///
///Encapsuladores são usados para proteger os atributos e variaveis
///Get é usado para acessar e o Set é usado para alterar
///Atributos ou variaveis com underline são privados Ex.: _saldo
///
   
void main() {
  print('Encapsuladores\n');
  var usuario = Usuario('Vinícius', '123456');
  usuario..senha = '666666'..alteracao = true..senha = '666666';
  print('Nome: ${usuario.nome}, Senha: ${usuario.senha}');

  var conta = Conta('Mari da Consolação');
  conta..deposito = 900..deposito = 450..saque = 550..saque = 500;

  print('');

  conta..limite = 700..alterarLimite = true..limite = 1000..alterarLimite = false;

  print('');

  conta..saque = 950..saque = 850;

  print('${conta.informacao}\n');

  Conta contaVip = Conta.vip('Vinícius da Silva', limite: 12500);
  contaVip..deposito = 15000..saque = 15000..limite = 15000..saque = 15000;
  print(contaVip.informacao);

}

class teste {
  String? _nome;

  String? get nome => _nome;

  set nome(String? nome) {
    _nome = nome;
  }
}