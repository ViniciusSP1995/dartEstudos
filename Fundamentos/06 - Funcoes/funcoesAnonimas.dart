///
///Funções anônimas não possuem nomes
///

funcoesAnonimas() {
  print('Funções anônimas');

  print(''''SINTAXE
  () {
    print('Função anônima');

    () => print('Função anônima usando sintaxe arrow!');
    }''');

    print('Funções anônimas como variaveis\n');

    var variavelAnonima = () => print('Variável anônima');
    variavelAnonima();

    var variavelAnonimaParametro = (String? msg) => print('Variavel anônima $msg');
    variavelAnonimaParametro('com parâmetro');

    print('Funções anônimas como parâmetro\n');

    void executarFuncao(Function funcao) => funcao();
      executarFuncao(() => print('função anônima passada como parâmetro'));


}

void main() {
  funcoesAnonimas();
}