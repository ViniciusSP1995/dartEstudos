import 'dart:convert';

main() {
  String jsonData = '''
    {
    "nome" : "Fernando", 
    "idade": 36, 
    "parentes": {
      "mae": "Marlene",
      "pai": "Delcio"
    },
    "tarefas": [
      "Pagar contas",
      "Estudar"
    ],
    "conjuge": {
      "nome" : "Leila", 
      "idade": 31,
      "parentes": {
        "mae": "Lindraci",
        "pai": "Pedro"
      }
    },
    "filhos" : [      
      {
        "nome" : "Chloe", 
        "idade": 1, 
        "vacinas": [
          "ACWY",
          "Sarampo"
        ]
      },
      {
        "nome" : "Bartolomeu", 
        "idade": 5, 
        "vacinas": [
          "ACWY",
          "Sarampo",
          "Meningite"
        ]
      }
    ],
    "bens": {
      "veiculos": [
        {
          "marca": "Maverick",
          "modelo": "Ford",
          "caracteristicas": {
            "tipo": "passeio",
            "passageiros": 5
          },
          "multas": [
            {
              "descricao": "Excesso Velocidade",
              "tipo": "Gravissima",
              "pontos": 7
            },
            {
              "descricao": "Estacionar Local Proibido",
              "tipo": "Grave",
              "pontos": 4
            }
          ]
        },
        {
          "marca": "Kawasaki",
          "modelo": "Ninja H2R",
          "caracteristicas": {
            "tipo": "corrida",
            "passageiros": 2
          },
          "multas": [
            {
              "descricao": "Excesso Velocidade",
              "tipo": "Gravissima",
              "pontos": 7
            },
            {
              "descricao": "Excesso Velocidade",
              "tipo": "Gravissima",
              "pontos": 7
            },
            {
              "descricao": "Excesso Velocidade",
              "tipo": "Gravissima",
              "pontos": 7
            }
          ]
        }
      ],
      "imoveis": [
        {
          "tipo": "casa",
          "endereco": "Rua dos tolos, 0, Vila do Chaves",
          "contas": [
            {
              "tipo": "IPTU",
              "valor": 1000
            },
            {
              "tipo": "Condominio",
              "valor": 500
            }
          ]
        }
      ]
    }
  }
  ''';

  //! Regra #01 identificar e criar as regras de acordo com o json
//! Regra #02 crie os construtores do mais profundo at?? a raiz
//! Regra #03 fa??a o tratamento de erros

  Map<String, dynamic> parsedJson = jsonDecode(jsonData);
  Pessoa pessoa = Pessoa.jsonFrom(parsedJson);
   print('DECODE: $parsedJson');
    print('USO DIRETO: ${parsedJson['bens']['veiculos'][0]['multas'][0]['descricao']}');
    print('USO OBJETO: ${pessoa.bens!.veiculos!.map((e)=> e.multas!.map((e)=> e.descricao).toSet()).toList()}');

    Map<String, dynamic> map = pessoa.toJson();
    String toJson = jsonEncode(map);
    print('ENCODE: $toJson');

}

class Pessoa {
  String? nome;
  int? idade;
  Parentes? parentes;
  List<String>? tarefas;
  Conjuge? conjuge;
  List<Filho>? filhos;
  Bens? bens;

  Pessoa({this.nome, this.idade, this.parentes, this.tarefas, this.conjuge, this.filhos, this.bens});

  factory Pessoa.jsonFrom(Map<String, dynamic> json) {
    //List<dynamic> lista = json['filhos'] as List;
    //List<Filho> dataLista = lista.map((e)=> Filho.jsonFrom(e)).toList();
    return Pessoa(
      nome: json['nome'],
      idade: json['idade'],
      parentes: Parentes.jsonFrom(json['parentes']),
      tarefas: List<String>.from(json['tarefas']), //json['tarefas'].cast<String>(),
      conjuge: Conjuge.jsonFrom(json['conjuge']),
      filhos: (json['filhos'] as List<dynamic>).map((e) => Filho.jsonFrom(e)).toList(),
      bens: Bens.jsonFrom(json['bens']),
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'idade': idade,
      'parente': parentes,
      'tarefas': tarefas,
      'conjuge': conjuge,
      'filhos': filhos,
      'bens': bens,
    };
  }
}

class Parentes {
  String? mae;
  String? pai;

  Parentes({this.mae, this.pai});

  Parentes.jsonFrom(Map<String, dynamic> json)
      : this(
          mae: json['mae'],
          pai: json['pai'],
        );

  Map<String, dynamic> toJson() {
    return {
      'mae': mae,
      'pai': pai,
    };
  }
}

class Conjuge {
  String? nome;
  int? idade;
  Parentes? parentes;

  Conjuge({this.nome, this.idade, this.parentes});

  Conjuge.jsonFrom(Map<String, dynamic> json)
      : this(
          nome: json['nome'],
          idade: json['idade'],
          parentes: Parentes.jsonFrom(json['parentes']),
        );

  Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'idade': idade,
      'parente': parentes,
    };
  }
}

class Filho {
  String? nome;
  int? idade;
  List<String>? vacinas;

  Filho({this.nome, this.idade, this.vacinas});

  Filho.jsonFrom(Map<String, dynamic> json) : this(nome: json['nome'], idade: json['idade'], vacinas: json['vacinas'].cast<String>());

  Map<String, dynamic> toJson() {
    return {'nome': nome, 'idade': idade, 'vacinas': vacinas};
  }
}

class Bens {
  List<Veiculo>? veiculos;
  List<Imoveis>? imoveis;

  Bens({this.veiculos, this.imoveis});

  Bens.jsonFrom(Map<String, dynamic> json)
      : this(
          veiculos: (json['veiculos'] as List).map((e) => Veiculo.jsonFrom(e)).toList(),
          imoveis: (json['imoveis'] as List).map((e) => Imoveis.jsonFrom(e)).toList(),
        );

  Map<String, dynamic> toJson() {
    return {
      'veiculos': veiculos,
      'imoveis': imoveis,
    };
  }
}

class Veiculo {
  String? marca;
  String? modelo;
  Caracteristicas? caracteristicas;
  List<Multas>? multas;

  Veiculo({this.marca, this.modelo, this.caracteristicas, this.multas});

  Veiculo.jsonFrom(Map<String, dynamic> json)
      : this(marca: json['marca'], modelo: json['modelo'], caracteristicas: Caracteristicas.jsonFrom(json['caracteristicas']), multas: (json['multas'] as List).map((e) => Multas.jsonFrom(e)).toList());

  Map<String, dynamic> toJson() {
    return {
      'marca': marca,
      'modelo': modelo,
      'caracteristicas': caracteristicas,
      'multas': multas,
    };
  }
}

class Caracteristicas {
  String? tipo;
  int? passageiros;

  Caracteristicas({this.tipo, this.passageiros});

  Caracteristicas.jsonFrom(Map<String, dynamic> json)
      : this(
          tipo: json['tipo'],
          passageiros: json['passageiros'],
        );

  Map<String, dynamic> toJson() {
    return {
      'tipo': tipo,
      'passageiros': passageiros,
    };
  }
}

class Multas {
  String? descricao;
  String? tipo;
  int? pontos;

  Multas({this.descricao, this.tipo, this.pontos});

  Multas.jsonFrom(Map<String, dynamic> json)
      : this(
          descricao: json['descricao'],
          tipo: json['tipo'],
          pontos: json['pontos'],
        );

  Map<String, dynamic> toJson() {
    return {
      'descricao': descricao,
      'tipo': tipo,
      'pontos': pontos,
    };
  }
}

class Imoveis {
  String? tipo;
  String? endereco;
  List<Contas>? contas;

  Imoveis({this.tipo, this.endereco, this.contas});

  Imoveis.jsonFrom(Map<String, dynamic> json)
      : this(
          tipo: json['tipo'],
          endereco: json['endereco'],
          contas: (json['contas'] as List).map((e) => Contas.jsonFrom(e)).toList(),
        );

  Map<String, dynamic> toJson() {
    return {
      'tipo': tipo,
      'endereco': endereco,
      'contas': contas,
    };
  }
}

class Contas {
  String? tipo;
  int? valor;

  Contas({this.tipo, this.valor});

  Contas.jsonFrom(Map<String, dynamic> json)
      : this(
          tipo: json['tipo'],
          valor: json['valor'],
        );

  Map<String, dynamic> toJson() {
    return {
      'tipo': tipo,
      'valor': valor,
    };
  }
}
