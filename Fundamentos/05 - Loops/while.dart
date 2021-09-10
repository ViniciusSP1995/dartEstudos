void main() {

  print("05.0 Loops While/doWhile\n");

  //while faz o teste antes da execução

  var numero = 5;

  while(numero > 0) {
    print('while: $numero');
    numero--;
  }

  //do while faz a execução antes e depois verifica a variável

  var contagem = 1;

  do {
    print('dowhile: $contagem');
    contagem++;

  } while(contagem <= 3);


  int multiplo = 4;
  int minimo = 10;
  int maximo = 20;
  int resultado = minimo;

  while(resultado <= maximo) {
    if(resultado % multiplo == 0) {
      print('Primeiro múltiplo de $multiplo entre $minimo e $maximo é $resultado');
      break; // ao achar o primeiro múltiplo, interrompe o loop;
    }
    resultado++;
  }
}