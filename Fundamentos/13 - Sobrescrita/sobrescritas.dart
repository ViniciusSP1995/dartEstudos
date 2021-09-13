/*
*Metodos (override/sobreposicao != overload/sobrecarga)
- Override: Temos sobrescrita dos metodos da clsase pai na classe herdeira

* Construtores
- Super se refere ao construtor da classe herdeira

* Classes Abstratas
- Não podem ser instanciadas servem como modelo
- Metodos sem escopo devem ser sobrescritos nas class herdeiras;

*/






import 'cao.dart';

void main() {
  print('Sobrescritas de Metodos Atributos e construtores\n');

var cao = Cao.domestico('Berlin', 'Yorkshire', 'Macho');
print('nome: ${cao.nome} raça: ${cao.raca} sexo: ${cao.sexo} idade ${cao.idade} docil: ${cao.docil}');
print('desenvolvimento: ${cao.desenvolvimento} tipo: ${cao.coluna ? 'Vertebrado' : 'Invertebrado'}');
cao..dormir..alimentar..reproduzir();
print(cao);


print('${cao.nome} ${cao.docil ? 'esta amigavel' : 'não está amigavel'}' );
}

//? Desafio: Criar uma classe Abelha que herda de Artropodes com os construtores(insetos, arcnideos e crustaceos);
//? que herde de Animal no construtor Invertebrados;