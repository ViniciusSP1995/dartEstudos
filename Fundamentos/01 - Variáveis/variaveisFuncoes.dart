/*
  *Tipos de variáveis
  Num(int, double), String, bool, dynamic

*/

void main() {
  print("01.1) Variáveis Funções");

  num pi = 3.14;

  print(pi.floor()); //3
  print(pi.round()); //3
  print(pi.ceil()); //3
  print(pi.clamp(3, 3.1)); //3.1
  print(pi.compareTo(3)); // -1 se for inferior // 0 iguais // 1 se for superior
  print(pi.remainder(3)); //0.140000000012
  print(pi.toInt()); // 3
  print(2.toDouble());
  print(pi.toString()); // 3.14
  print(pi.toStringAsFixed(1)); //3.1
  print(pi.truncate()); //3
  print(pi.isNegative); //false
  print(pi.isInfinite); //false

  print((pi/0).isInfinite); // true
  print(12.gcd(16)); //4 MDC
  print('1'.padLeft(2, '0'));

  print('');

  String nome = 'Vinícius';
  String nomeCompleto = '\t Vinícius da Silva';
  print(nome.toLowerCase()); // vinícius
  print(nome.toUpperCase()); //VINÍCIUS
  print(nomeCompleto.trim()); // Vinícius da Silva
  print(nomeCompleto.split(' ')); // [ , Vinícius, da, Silva]
  print(nome.split('')); // [V, i, n, í, c, i, u, s]
  print(nome.substring(0,4)); // Viní
  print(nome.startsWith('V')); //true
  print(nome.startsWith('cius', 4)); //true
  print(nome.replaceAll('u', 'o')); //Vinícios
  print(nome.replaceFirst('cius', '')); //Viní
  print(nome.replaceFirst('V', 'B', 0)); // Binícius
  print(nome.replaceRange(3,5, '')); // Vinius
  print(nomeCompleto.trim().split(' ')); // [Vinícius, da, Silva]
  print(nome.contains('v')); // false
  print(nome.contains('u', 6)); //true
  print(nome.indexOf('cius')); // 4 - retorna o índice de acordo com a sua referência
  print(nome.length); // retorna o tamanho
  print(nome.endsWith('s')); //true
  print(nome.compareTo('Vinícius')); // 0 - Igual
  print(nome.compareTo('Viní')); // 1 - Possui
  print(nome.compareTo('Iraci')); // -1 - Diferente
  print(' '.isEmpty); //false
  print(double.parse('12.55'));
  print('1' is String); // true
  print(int.parse('12') is int); // true
  print(nome.lastIndexOf('í')); // 3

  String sopa = 'sopa de letrinhas';

  int index = sopa.indexOf(' de ');

  print('A sopa é ${sopa.substring(index).trim()}');


}