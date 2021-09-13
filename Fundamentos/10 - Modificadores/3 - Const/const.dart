/*

*Const
-Inicializada em tempo de compilação, deve ser declara com valor constatne
-Ao nível de classes deve ser estatica para ficar disponível na classe
- Em coleções const todo o conteúdo deve ser constante

*Objeto Imutável
- O construtor deve ser constante
- As variaveis devem ser final ou static const

*/

import 'brasil.dart';

void main() {
  print('Modificadores Const\n');

  const pi = 3.14;
  double raio = 2;
  var resultado = pi * (raio * raio);
  print('${resultado}\n');

  final numeros = [raio, 2.5];
  numeros.add(resultado);
  print(numeros);

  final listaFinal = const [0,1];
  // listaFinal.add(2);
  print(listaFinal);

  const listaConst = [1,2,pi];
  //listaConst.add(pi);
  print('${listaConst}\n');

  for(var i = 0; i < 3; i ++) {
    final indiceFinal = i;
    const constante = 1;
    print('contagem: ${constante + indiceFinal}');
  }

  var pais = new Brasil(-15.792371, -47.882326);
  //pais.latidude = 0;
  //Brasil.capital = '';
  print('\nObjeto: $pais, Capital: ${Brasil.capital}, Latitudade: ${pais.latitude} Longitude: ${pais.longitude}');

  print('Estados: ${Brasil.estados}');

  }

