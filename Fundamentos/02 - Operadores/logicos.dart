void main() {

  var verdadeiro = !false;
  bool falso = !true;

  print("Verdadeiro =$verdadeiro");
  print("Falso = $falso");

  print("Operador (!) !true = ${!true} !false = ${!false}");

  bool teste1 = verdadeiro || verdadeiro;
  bool teste2 = verdadeiro || falso;
  bool teste3 = falso || falso;

  print(teste1); //true
  print(teste2); //true
  print(teste3); //false

  bool teste4 = verdadeiro && verdadeiro; //true
  bool teste5 = verdadeiro && falso; //false
  bool teste6 = falso && falso; //false

  print(teste4);
  print(teste5);
  print(teste6);

  bool operacao = (1 <= 2) && (3 > 2);
  print("O Resultado da operação é $operacao"); //true

  operacao = !(1 > 2) && ((3 < 2) || false);
  print("O Resultado da operação é $operacao"); //false
}