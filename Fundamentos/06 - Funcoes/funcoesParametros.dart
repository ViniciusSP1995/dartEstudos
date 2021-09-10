// Funções com parametros posicionados devem obedecer a ordem declarada;
// Funções com parametros nomeados devem ser declarados;
// Os parametros posicionados ou nomeados devem começar pelo último parametro da função;

funcaoParametros() {
  print('Funções com parametros posicionados e default\t\n');

  void exibirDados1(String nome,[int? peso = 65, double? altura]) {
    print('Nome: $nome, Peso: $peso, Altura: $altura');

  }

  exibirDados1('Vinícius');
  exibirDados1('Vinícius', 80, 1.79); // deve passar todos os parametros ou nenhum;

  print('Funções com parametros nomeados e default\n');

  exibirDados2(String nome,{ int? peso = 65, double? altura}){
    print('Nome: $nome, Peso: $peso, Altura: ${altura ?? 'Não informada'}');

  }

  exibirDados2('Vinícius');
  exibirDados2('Vinícius', altura: 1.79, peso: 70); //pode declarar fora de ordem;

  print('Funções como parametros para outras funções');

  void falar() {
    print('Essa é uma função passada como parametro nomeado!');
  }

  void saudacao(String nome, {Function? funcaoFalar}) {
    print('Olá, eu sou $nome');
    funcaoFalar!();
  }

  saudacao('Vinícius', funcaoFalar: falar);
  saudacao('Vinícius', funcaoFalar: ()=>print('Essa é uma função anônima passada como parametro nomeado')); 
}

void main() {
  funcaoParametros();
}