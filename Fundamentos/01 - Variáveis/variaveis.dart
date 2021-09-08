void main() {
  print("Take me out, tonight!!");

  /*
    "backspace : "\b""
    "formfeed : "\f""
    "newline : "\n""
    "return "\r""
    "tab "\t""

  */

  var valorA = 10;
  var valorB = 4;
  var valorC = 2.5;
  var resultado;  // é dinâmica até ser atribuída

  resultado = valorA + valorB + valorC;
  print(resultado);

  var salario = 1000, desconto = 250;
  var conta = salario - desconto;

  print(conta);

  var numero = 3 + ((2*4) + (10/5));

  print(numero);
  print('');

  print("concatenar "
    "String "
    "é simples assim");

    var texto1 = '\nVinícius ';
    var texto2 = "da Silva";
    var texto3 = '''\nTeste\n''';

    var nome = texto1 + texto2 + texto3;
    print(nome);

    var verdadeiro = true;
    var falso = false;

    
    // $ para variáveis // ${} para operações
    print('Verdadeiro = ${verdadeiro}'); //interpolacao
    print('Falso = ' + "$falso"); // concatenação
    print(''.runtimeType); // descobre o tipo de variável em tempo de execução

    const pi = 3.14;  //variável constante é atribuída em tempo de compilação

    nome = "Vinícius"; // Forma errada de declarar uma variável
    String sobrenome = "da Silva"; // Forma certa de declarar uma variável;
    int idade = 26;
    double altura = 1.79;
    bool adulto = true;

    print("\nNome: " + "$nome \nQtde de letras: ${nome.length}" + '''\nSobrenome: $sobrenome \nQtde de letras: ${sobrenome.length}\n''');

    print(''' idade: $idade
    altura: $altura
  Adulto: $adulto
  \nPI: $pi''');

  dynamic variavel = 2.0;
  variavel = 2;
  variavel = '2';
  variavel = true;
  print(variavel);
}