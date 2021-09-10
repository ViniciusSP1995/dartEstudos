void main() {
  print("Loops For\n");

  for(var i = 1; i <= 3; i++) {
    print('Contagem: $i');
  }

  print('');

  for(var i = 15; i > 0; i-=5) {
    print('Regressiva: $i');
  }

  String nome = 'Vinícius';
  int numero = 0;

  for(int i = numero; i < nome.length; i++) {
    /*
    if(i % 2 == 0 ) {
      print('$i É par');

    } else {
      print('$i É ímpar');
    }
    */

    print("$i ${(i % 2 == 0) ? 'É par' : 'É ímpar'}");
  }

  for(int i = 0; i < nome.length; i++) {
    print('${nome.substring(i, i+1)}'); //Intervalo estipulado

  }

  print('');

  //quais são os multiplos de 2 e 3 no intervalo de 5 a 12;

  for(int i = 5; i <= 12; i++) {
    if(i == 0) {
      print('$i É múltiplo de todos os números');

    } else if (i % 2 == 0 && i % 3 == 0) {
      print('$i é múltiplo de 2 e 3');

    } else  if (i % 3 == 0) {
      print('$i é múltiplo de 3');

    } else if (i % 2 == 0) { 
      print('$i é mpultiplo de 2');

    } else {
      print('$i');
    }
  }

var frutas = ['Tomate', 'Manga', 'Pera', 'Maça'];

for(int i = 0; i < frutas.length; i++) {
  print('Fors: $i ${frutas[i]}');
  }

print('');

// com o ForIn temos um controle automatizado crescente
for(var fruta in frutas) {
  print('ForIn: $fruta');
}
}