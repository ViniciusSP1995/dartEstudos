
///Funções arrow tem o retorno implícito;

funcaoArrow() {
  print('Funções arrow');

  String conceito() => 'Função arrow com o retorno implícito';
  
  String somarValores(int valorA, int valorB) => 'Soma $valorA + $valorB + ${valorA + valorB}';

  String verificarMaiorIdade(String nome, int idade) => (idade >= 18) ? '$nome é maior que idade' : '$nome não é maior de idade';

  String calcularAreaDoCirculo(double raio) => 'Área do Circulo : ${3.14 * raio * raio}';

  double desconto(int faltas) => (faltas > 1) ? 0.8 : (faltas == 1) ? 0.9 : 0;

  void calcularSalario(String nome, double salario, double bonus, int faltas) {
    var total = (salario * desconto(faltas)) + bonus;
    print('Empregado: $nome, Salário: $total');
  }

  print(conceito());
  print(somarValores(2,3));
  print(verificarMaiorIdade('Vinícius', 26));
  print(calcularAreaDoCirculo(2));
  calcularSalario('Vinícius', 5000, 500.00, 3);
}
void main() {
  funcaoArrow();

}