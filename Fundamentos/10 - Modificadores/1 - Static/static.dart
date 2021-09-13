/*
  *Static
  A variavle estatica fica disponivel na própria classe em vez de suas instancias/objetos
  Em metodos estaticos devem usar variáveis estáticas da classe
  Variaveis estaticas podem se acessadas sem precisar instanciar classes/objetos

*/

import 'calculos.dart';

void main() {
  print('Modificadores Static\n');

  double raio = 5;
  var calculos1 = new Calculos();
  print(calculos1.pi);
  print(calculos1.areaCirculo(raio));

  print('');

  Calculos calculos2 = Calculos();

    print(calculos2.pi);
  print(calculos2.areaCirculo(raio));

  print('\nInstâncias consomem ${identical(calculos1, calculos2) ? 'MENOS' : 'MAIS'} memória');

  print(Calculos.piEstatico);
  print(Calculos.piEstatico * (raio * raio));
  print('\nRetornos iguais: ${Calculos.areaCirculoEstatico(raio) == Calculos().areaCirculo(raio) ? 'SIM' : 'NAO'} Metodos diferentes');
}

