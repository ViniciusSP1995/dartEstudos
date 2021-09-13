import 'dart:math';

///
/// * Conceito:
/// - List é uma colecao dinamica e ordenada de elementos entre colchetes []
/// - forEach: Aplica a função anonima a cada elemento da nossa colecao
/// - Toda array e um List<?>
///
///
// ignore_for_file: deprecated_member_use

listForEach() {
  print('List ForEach\n');

  var array = [0, 2.5, 5, 7.5, 10];

  array.forEach((elemento) {
    print('foreach: $elemento');
  });
  List<int> inteiros = [1, 5, 10];

  List<double> doubles = [2.5, 7.25];

  List<bool> boleanas = [true, false, !true, !false];

  List<String> frutas = ['Morango', 'Banana', 'Tomate'];

  print('\nImplementação ${frutas.runtimeType}');

  print('\nboleanas[3]: ${(boleanas[inteiros.length]) ? 'Verdadeiro' : 'Falso'}');

  frutas.insert(0, 'Abacaxi');
  frutas.add('Laranja');
  frutas.forEach((e) => print('foreach: $e'));
  print(frutas);
  frutas.removeLast();
  frutas.removeWhere((e) => e == 'Banana');
  print(frutas);
  print(frutas.elementAt(2));
  print(frutas.contains('abacaxi')); //camelcase

  List<num> numeros = List.from(inteiros)
    ..addAll(doubles)
    ..shuffle()..sort();
  print('\n$numeros');

  List<dynamic> lista = List.filled(2, null, growable: false); //fixa o número de elementos
  lista = numeros.take(3).skip(1).take(2).toList();
  print('Lista: $lista');

  // geradores de lista

  List<String> listaPreenchida = List.filled(2, 'elemento');
  List<String> listaGerada = List.generate(2, (i)=> 'Nome ${i}');
  List<double> listaPrecos = List.generate(5, (i) => double.parse(((i+1) * Random().nextDouble()).toStringAsFixed(2)));
  print('listaPreenchida: $listaPreenchida \nListaGerada: $listaGerada \nListaPrecos: $listaPrecos');
  listaPrecos.forEach((e)=> print('foreach : $e'));
}

///
/// * Expand
/// Cria uma nova lista expandida ou concatenando os elementos
///

listExpand() {
  print('\nList Expand\n');

  var lista = [
    
    [1,2],
    [3,4]
  
    ];

  List<dynamic> listaFlat = lista.expand((elemento)=> elemento).toList();
  List<dynamic> listaDuplicada = listaFlat.expand((e) => [e,e]).toList(); 
  print('ListaFlat: $listaFlat\nListaDuplicada: $listaDuplicada');

  List<num> numeros = [1,2.5,5,7.25,10];
  List<int> inteiros = [1,5,10];
  List<double> doubles = [2.5,7.25];

  List<dynamic> listaDinamica = List.filled(1, null, growable: false);
  print('$listaDinamica');
  print(listaDinamica = [1,5,10] + [2,7]);
  print(listaDinamica = []..addAll(inteiros)..addAll(doubles));

  print(listaDinamica = [0, ...inteiros, 15]); //operador spread (espalhar)
  print(listaDinamica = [...[],...inteiros, if(doubles is List<double>) ...doubles]);
  print(listaDinamica = [...[], for(var numero in numeros) numero]);
}

///
/// * Map
/// - Tranforma/seleciona os elementos de ima coleção criando uma nova do mesmo tamanho:
///
///
listMap() {
  print('List Map\n');

  List<String> frutas = ["Morango", "Banana", 'Tomate'];

  List<String> frutasMapeadas = frutas.map ((e)=> '$e é uma fruta!').toList();
  print(frutasMapeadas);

  List<int> inteiros = [1,5,10];

  var incrementar = (int e) => ++e; //e++
  final dobro = (int e)=> e * 2;
  List<int> inteirosMapeados = inteiros.map(incrementar).map(dobro).toList();
  print(inteirosMapeados); // List<int> com operações, os elementos devem ser setados com o tipo int


  List<double> doubles = [2.75,5.5, 7.25];
  final triplo = (e) => e * 3;

  //final Function moeda = (e) => 'RS ${e.toDouble().toStringAsFixed(2).replaceFirst('.', ',')}';

  //Function porcentagem(desconto) => (valor) => desconto * valor; // closure

  List<dynamic> doublesMapeados = doubles.map(triplo).map((valor) => 0.9 * valor).map((e) =>'RS ${e.toDouble().toStringAsFixed(2).replaceFirst('.', ',')}').toList();
  
 // List<dynamic> doublesMapeados = doubles.map(triplo).map(porcentagem(0.9)).map(moeda).toList();

  print(doublesMapeados);
}
///
/// * Every:
/// - Faz o teste em todos elementos com o operador lógico '&&' retornando (true or false)
///

listEvery() {
  print('List Every');

  List<int> inteiros = [0,1,2,3,4,5];
  bool resultado = inteiros.every((e) => e >= 0);
  print(resultado);
  List<String> textos = List.from(['Vinícius', 'Maria','Berlin']);
  resultado = textos.every((e) => e.contains('i'));
  print(resultado);

}
///
/// * Where;
/// - Filtra os elementos da colecao criando uma nova do mesmo tamanho ou menor
///

listWhere() {
  print('List Where\n');

  List<int> idades = [36,12,18, 31, 17, 26];

  print(idades.where((e) => e is int).toList()); //retorno em Itarable
  print(idades.whereType<int>());
  List<int> adultos = idades.where((int e) => e > 17).toList();
  var crianca = idades.singleWhere((int e) => e < 12, orElse: () => 0);
  int menor = idades.lastWhere((e)=>e.toString().startsWith('1'), orElse: () => 0);
    print('Adultos: $adultos, Menor: $menor, Criança: $crianca');
}
///
/// * Reduce;
/// - Compara os elementos da colecao retornando 1 unico elemento resultante;
/// - Ao interagir com os elementos o indice 0 se torna o anterior, indice 1 se torna o atual;
///

listReduce() {
  print('List Reduce\n');

  List<int> numerosPares = List.generate(6, (i) => i * 2);
  print(numerosPares);
  int resultado = numerosPares.reduce((anterior, atual){
    print('$anterior + $atual');
    return anterior + atual; // o retorno será o próximo anterior;
  });
  print(resultado);

  List<bool> boleanas = [true, false, !true, !false];
  bool and = boleanas.reduce((anterior, atual) => anterior && atual);
  bool or = boleanas.reduce((anterior, atual)=> anterior || atual);
  print('and: $and or: $or');

  List<int> idades = [36,12,18,31,17,26];
  int maisNovo = idades.reduce((anterior, atual)=> (anterior > atual)? atual : anterior);
    int maisVelho = idades.reduce((anterior, atual) => (anterior < atual) ? atual : anterior);
    int media = idades.reduce((anterior, atual) => anterior + atual);
    print('Mais novo: $maisNovo, Mais velho : $maisVelho, Média: ${(media / idades.length).toStringAsFixed(1)};');
}
///
/// * Fold:
/// - Compara os elementos de colecao retornando 1 unico elemento resultante;
/// - O valor inicial se torna o anterior e o indice 0 se torna o atual

listFold() {
  print('List Fold');

    List<int> numerosPares = List.generate(6, (i) => i * 2);
    print(numerosPares);
    int valorInicial = 10;
    // ignore: unused_local_variable
    int resultado = numerosPares.fold(valorInicial, (anterior, atual) {
      print('$anterior + $atual');
      return anterior + atual;
    });
    print(resultado);

    valorInicial = 30;
    resultado = numerosPares.fold(valorInicial, (anterior, atual){
      print('$anterior - $atual');
      return anterior - atual;
    });
}

main() {
  listForEach();
  listExpand();
  listMap();
  listEvery();
  listWhere();
  listReduce();
  listFold();
}
