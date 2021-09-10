void main() {
  print("Ternario");

  if(!true) {
    print("Verdadeiro");

  } else {
    print("Falso");
  }

  print("${!true ? "Verdadeiro" : "Falso"}");

  int idade = 13;

  print((idade < 14) ? 'Criança' : (idade < 18) ? 'Adolescente' : 'Adulto');

  int nota = 70;
  String resultado = ((nota < 40) ? 'Reprovado' : (nota < 70) ? 'Recuperação' : 'Aprovado');
  print(resultado);

  int numero = 12;

  print("Número: $numero é ${(numero % 2 == 0) ? 'Par' : 'Ímpar'} e ${(numero >=0) ? 'Positivo' : 'Negativo'}");

int multiplo = 5;

print("Número: $numero ${(numero %  multiplo == 0) ? 'é' : 'não é'} múltiplo de $multiplo");

int ano = 1984;

print("Ano: $ano, ${(ano % 4 == 0 || (ano % 400 == 0 && ano % 100 != 0)) ? 'é bissexto' : 'não é bissexto'}");
}