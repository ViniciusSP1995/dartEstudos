

import 'conta.dart';
import 'pessoa.dart';
import 'usuario.dart';

///
///Classes => Objetos
///Variaveis => atributos
///Funcoes => metodos

void main() {
  print('Classes/Objetos\n');

  Pessoa pessoa1 = new Pessoa();
  pessoa1.nome = 'Vinícius';
  pessoa1.idade = 36;
  print('Nome: ${pessoa1.nome} idade: ${pessoa1.idade}');

  Pessoa pessoa2 = Pessoa();
  pessoa2.nome = 'Maria';
  pessoa2.idade = 60;
    print('Nome: ${pessoa2.nome} idade: ${pessoa2.idade}\n');

//Operador em cascata permite emitir varias chamadas por meio de um objeto;
    var pessoa3 = Pessoa();
  pessoa3
    ..nome = 'Chloe'
    ..idade = 1
    ..info();

// Dados inseridos pelo usuario

Usuario usuario = new Usuario();
usuario.usuario = 'vds1995sp@gmail.com';
usuario.senha = '12345';
usuario.autenticar();

Conta conta = Conta();
print('Nome: ${conta.nome} Nº Conta: ${conta.numeroConta} Saldo : ${conta.consultarSaldo()}');

conta.calcularSalario(950, 150, 2);
conta.depositar(150);
conta.sacar(50);


}



 
