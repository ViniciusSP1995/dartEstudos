void main() {

  var nota = 69;
  var resultado = nota >=70;

  print("Aluno aprovado: $resultado"); //false

  bool testeLogico = (!false && true); //true

  print("Esse teste lógico ${3 > 1 && ((3 < 2) || testeLogico)}"); //true

  print("5 == 5 && 6 > 5: ${5 == 5 && 6 > 5}"); //true
  print("5 != 5 && 6 == 5: ${5 != 5 && 6 == 5}"); //false
  print("5 <= 5 && 6 != 5: ${5 <= 5 && 6 != 5}"); //true
}