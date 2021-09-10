
  semRetorno() {
  print('Funções sem retorno\n');


  void conceito() {
    print('Função void sem retorno');
  }
  void somarValores(int valorA, int valorB) {
    var resultado = valorA + valorB;

  print('Soma: $valorA + $valorB = $resultado\n');
    
  }

  verificarMaiorIdade(String nome, int idade) {
    var resposta;

    if(idade >= 18) {
      resposta = 'É maior';
    } else {
      resposta = 'Não é maior';
    }
    print('$nome $resposta de idade\n');
  }

  void contagemRegressiva(int numero) {
    for(var i = numero; i >= 0; i--) {
      print('Contagem: ${(i == 0) ? 'VAI' : i}');
    }
  }

  converterKparaMilhas(dynamic array) {
      dynamic milha = 0.621271;
      for(dynamic item in array) {
        print('$item\t Km/h em Milhas/h ${(item * milha).toStringAsFixed(2)}\n');
      }
      print('Array convertido e arredondado');
  }

conceito();
somarValores(2,3);
verificarMaiorIdade('Vinícius', 26);
contagemRegressiva(3);
converterKparaMilhas([1,5,10,20,30,40,60,80,100,120,140,160,180,200]);
}

comRetorno() {
  print('\n\nFunções com retorno');

  String conceito() {
    return 'Função com retorno String';
  }

  String somarValores(int valorA, int valorB) {
    var resultado = valorA + valorB;

  return 'Soma: $valorA + $valorB = $resultado\n';
    
  }

   String verificarMaiorIdade(String nome, int idade) {
    var resposta;

    if(idade >= 18) {
      resposta = 'É maior';
    } else {
      resposta = 'Não é maior';
    }
    return '$nome $resposta de idade\n';
  }

  String contagemRegressiva(int numero) {
    var resultado;
    for(var i = numero; i >= 0; i--) {
      (i != 0) ? print('Contagem: $i') : resultado = "Contagem: VAI";
    }
    return resultado;
  }

  String converterKparaMilhas(dynamic array) {
      dynamic milha = 0.621271;
      for(dynamic item in array) {
        print('$item\t Km/h em Milhas/h ${(item * milha).toStringAsFixed(2)}\n');
      }
      return 'Array convertido e arredondado';

}
  print(conceito());
  print(somarValores(2,3));
  print(verificarMaiorIdade('Vinícius', 26));
  print(contagemRegressiva(3));
  print(converterKparaMilhas([1,5,10,20,30,40,60,80,100,120,140,160,180,200]));
}



void main() {
  semRetorno();

  comRetorno();
}