/**
 *  - Representational tate Transfer (Transferência Representacional de Estado)
 * - É uma arquitetura que define um conjunto de restrições na criação de web service
 * - É uma padronização para que múltiplas aplicações possam se comunicar usando protocolo http.
 */

import 'dart:convert';

///
/// * SERIALIZACAO MANUAL - Biblioteca JSON integrada ao dart 'dart:convert';
///
/// * Serialização JSON direta
/// - PErder recursos estatico de lingaugens;
/// - segurança de tipo, autocompletar e exceções de tempo de compilação.
///
///

conversaoDireta() {
  print('JSON Conversao Direta\n');

  String jsonData = '''
  {
    "nome" : "Vinícius",
    "idade" : 26,
    "email": "vds1995sp@gmail.com"

  }
  ''';
  // DECODE
  Map<String, dynamic> parsedJson = jsonDecode(jsonData);
  print('parsedJson: $parsedJson\n');
  String nome = parsedJson['nome'];
  int idade = parsedJson['idade'];
  String email = parsedJson['email'];
  print('USO DIRETO: nome: $nome idade: $idade email: $email\n');

  //ENCODE
  Map<String, dynamic> map = {'nome': nome, 'idade': idade, 'email': email};
  String toJson = jsonEncode(map);
  print('ToJson: $toJson');
}

///
/// * Serialização JSON em Objeto
/// - Utiliza recursos esticos da linguagem
/// - Segegurança de tipos, autocompletar e execuções de tempo de compilação
///
conversaoObjeto() {
  print('JSON Conversão Objeto\n');

  String jsonData = '''
  [
  {
    "nome" : "Vinicius",
    "idade" : 26,
    "email": "vds1995sp@gmail.com"

  },

    {
    "nome" : "Vinícius",
    "idade" : 26,
    "email": "vds1995sp@gmail.com"

  }
  ]
  ''';

  // DECODE
  List<dynamic> parsedJson = jsonDecode(jsonData);
  print('parsedJson: $parsedJson\n');
  ListaUsuarios listaUsuarios = ListaUsuarios.fromJson(parsedJson);
  Usuario usuario = listaUsuarios.usuarios!.singleWhere((e) => e.nome == 'Vinicius');
  print("USO OBJETO: nome: ${usuario.nome} idade: ${usuario.idade} email: ${listaUsuarios.usuarios![0].email}\n");

  var usuarioNovo = Usuario.fromJson({'nome': 'Maria', 'idade': 60, 'email': 'maria@gmail'});
  listaUsuarios.usuarios!.addAll([usuarioNovo]);

  // ENCODE
  List<dynamic>? lista = listaUsuarios.toJson();
  String toJson = json.encode(lista);
  print('toJson: $toJson');
}

main() {
  conversaoDireta();
  conversaoObjeto();
}

class ListaUsuarios {
  List<Usuario>? usuarios;

  //? Construtor default da classe
  ListaUsuarios({this.usuarios});

  //? Construtor com lista de inicialização, usa o this para passar os parametros para o construtor default
  ListaUsuarios.fromJson(List<dynamic> json) : this(
  usuarios: json.map((e) => Usuario.fromJson(e)).toList(),
  );
  

  List<dynamic>? toJson() {
    return usuarios;
  }
}

class Usuario {
  String? nome;
  int? idade;
  String? email;

  //? Construtor default da classe
  Usuario({this.nome, this.idade, this.email});

  //? COnstrutor nomeado para cria uma nova instancia a partir de um map
/*   Usuario.fromJson(Map<String, dynamic> json) {

      this.nome = json['nome'];
      idade = json['idade'];
      email = json['email'];
  } */

//? Construtor Factory retorna uma nova instancia de construtor default de classe a partir de um map
/*     factory Usuario.fromJson(Map<String, dynamic> json) {
    return Usuario(
      nome: json['nome'],
      idade: json['idade'],
      email: json['email'],
    );
  }  */

  //? Construtor com lista de inicialização, define parametros antes de executar o escopo do construtor
/*   Usuario.fromJson(Map<String, dynamic> json) :
  
      nome = json['nome'],
      idade = json['idade'],
      email = json['email'] {
        //configurações iniciais
      } */

  //? Construtor com lista de inicialização, usa o this para passar os parametros para o construtor default
  Usuario.fromJson(Map<String, dynamic> json)
      : this(
          nome: json['nome'],
          idade: json['idade'],
          email: json['email'],
        );

  Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'idade': idade,
      'email': email,
    };
  }
}
