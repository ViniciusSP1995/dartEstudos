
import 'Models/Pessoa.dart';
import 'Models/Proprietario.dart';
import 'Models/Vendedor.dart';



main() {
  print('List manipulando objetos\n');

  Pessoa p1 = Pessoa('Vinícius', 'da Silva', identidade: 12345678);
  Pessoa p2 = Pessoa('Iraci', 'da Silva', identidade: 87654321);

  List<Pessoa> pessoas = [p1, p2];

  pessoas.add(Pessoa('Berlin', 'da Silva'));

  for(var i = 0; i < pessoas.length; i++) {
    print('for: ${pessoas[i].nome} ${pessoas[i].sobrenome} id: ${pessoas[i].identidade}');
  }

  print('');

  for(var pessoa in pessoas) {
    print('for in: ${pessoa.nome} ${pessoa.sobrenome} id: ${pessoa.identidade}');
  }

  print('');
  pessoas.forEach((e) => print('foreach: ${e.nome} ${e.sobrenome} id: ${e.identidade}'));

  print('List ordenando objetos\n');

  List<Vendedor> vendedores = [];
  vendedores.add(Vendedor('Vinícius', [Venda('IphoneX', 4199.99),Venda('MacBookPro', 5300.0), Venda('GalaxyS10', 3500.25)]));

  vendedores.add(Vendedor('Iraci', [Venda('Iphone8', 3000.00), Venda('GalaxyS10', 3500.25), Venda('IphoneX', 4199.99)]));

  vendedores.add(Vendedor('Maria', [Venda('IphoneX', 4199.99), Venda('IphoneX', 4199.99), Venda('GalaxyS10', 3500.25)]));

  // organizar lista de vendas pela soma total

  vendedores.sort((b,a) => (a.vendas.fold(0, (anterior, atual) => double.parse(anterior.toString()) + atual.preco).compareTo(b.vendas.fold(0, (anterior, atual)=> double.parse(anterior.toString()) + atual.preco))));
  // organizar as vendas de cada vendedor
  vendedores.forEach((e) => e.vendas.sort((b,a)=>a.preco.compareTo(b.preco)));

  vendedores.forEach((e) => print('Vendedor #${e.nome} \t ${e.vendas.length} vendas \t totalizando ${e.vendas.fold(0, (anterior, atual) => double.parse(anterior.toString()) + atual.preco)} reais \t vendas: ${e.vendas.map((e)=> e.preco).toList()}'));

print('List escopo de loops em Objetos');

List<Proprietario> proprietarios = [];
proprietarios.add(Proprietario('Felipe', 'Rua Sul,0',[Carro('Honda', 'Civic', 'ABC1234', Caracteristicas('Passeio', 5, 130, 'Gasolina'), multas: [Multa('Excesso de Veocidade', 'Gravíssima', 7), Multa('Estacionar local Proibido', 'Grave', 5),
 ]),
 Carro('Fiat', 'Palio', 'CER23654', Caracteristicas('Passeio', 5, 103, 'Gasolina'), multas: [Multa('Excesso de Velocidade', 'Gravíssima', 7), Multa('Excesso de Velocidade', 'Grave', 5),
 ]),
]));

proprietarios.forEach((e)=>e.carros.forEach((e)=> e.multas!.sort((a,b)=> a.pontos.compareTo(b.pontos)))); // multas em ordem crescente

for(var i =0; i < proprietarios.length; i++) {
  var carros = proprietarios[i].carros;
  for (var carro in carros) {
    carro.multas!.forEach((e){
      print('${proprietarios[i].nome} \t ${carro.modelo} ${carro.placa} ${carro.caracteristica.tipo} \t ${e.descricao}${e.tipo} - ${e.pontos} pontos');
    });
  }
}
}