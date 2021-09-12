import 'animal.dart';
import 'objeto.dart';
import 'pessoa.dart';
import 'usuario.dart';

///
///Os construtores devem ter o mesmo nome da classe
///Eles são iniciado quando instanciados as classes, podendo fazer configurações iniciais.
///

void main() {
  print('Construtores\n');

  Objeto objeto = new Objeto();
  objeto.nome = 'mesa';
  print('nome: ${objeto.nome}');

  Animal animal = Animal('Berlin', 'Yorkshire');
  print('nome: ${animal.nome}, raça: ${animal.raca} idade: ${animal.idade}\n');

  Pessoa pessoa = Pessoa('Vinícius', 26, altura: 1.79);
  print('nome ${pessoa.nome} idade: ${pessoa.idade} cor: ${pessoa.cor} altura ${pessoa.altura}\n');

  Usuario usuario = Usuario('vds1995sp@gmail.com', '123456', nome: 'Vinícius');
  print('usuario: ${usuario.user} senha: ${usuario.senha}, nome: ${usuario.nome} cargo: ${usuario.cargo}');
  usuario.autenticar();

  //dados inseridos pelo administrador
  Usuario admin = Usuario.admin('vds1995sp@gmail.com', '12345' , nome: 'Vinícius');
    print('usuario: ${admin.user} senha: ${admin.senha}, nome: ${admin.nome} cargo: ${admin.cargo}');
    admin.autenticar();
}





