
import 'models/carro.dart';
import 'models/pessoa.dart';

main() {
  print('Map Objetos\n');

  Carro c1 = Carro('Honda', 'Civic');
  Carro c2 = Carro('Toyota', 'Corola');
  Carro c3 = Carro('Fiat', 'Palio');

  Map<String, Carro> carros = { '0': c1, '1': c2};
  carros['2'] = c3;

  for(var i = 0; i < carros.length; i++) {
    print('for: ${carros["${i}"]!.modelo}'); // se ordenado por string ou num pode usar for

  }
    for (String chave in carros.keys) {
    final carro = carros[chave];
    print('forIn: $chave ${carro!.modelo}');
  }

  carros.forEach((chave, valor) => print('forEach: $chave ${valor.modelo}'));

  print('Map com Singletons');

  Pessoa p1 = Pessoa('Vinícius', idade: 26, peso: 81);
  Pessoa p2 = Pessoa('Maria', idade: 60, peso: 68);
  Pessoa.mostrarPessoas();
  Pessoa('Vinícius', idade: 50);
  Pessoa('Maria', idade: 15);
  Pessoa('Berlin');
  Pessoa.mostrarPessoas();
  p1.peso = 70;
  Pessoa.mostrarDetalhes('Vinícius');
  p2.peso = 61.1;
  Pessoa.alterarDetalhes('Berlin', idade: 1, peso: 4);
  Pessoa.mostrarPessoas();

}