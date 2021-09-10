///
/// Uma closure ocorre quando uma função é declarada dentro do corpo de uma função
/// Podendo retornar as variaveis locais e da função superior
///



funcaoClosures() {
  print('Closures sem retorno');

  var saudacao = (String nome) {
    var mensagem = (cumprimento) => print('Olá $nome! $cumprimento');
    mensagem('Seja Bem-Vindo!');
  };

  print(saudacao);
  saudacao('Vinícius');

  print('Colsures com retorno\n');

  Function somar(int valorA) {
    print(valorA);
    return (valorB) {
      print(valorB);
      return valorA + valorB;
    };
  }
  var somarDez = somar(10);
  print(somarDez(5));

  Function porcentagem(desconto) => (valor) => desconto * valor;
  var descontarDez = porcentagem(.9); // 0.90 ou descontar 10%
  var descontarVinte = porcentagem(.8); // 0.80 ou descontar 20%
  print(descontarDez(100));
  print(descontarVinte(200));

  print('Colsures com Objetos\n');

  var novoObjeto = () {
    var id = 0;
    var objetoCriado = (String nome, descricao) {
      return 'id: ${(++id).toString().padLeft(2, '0')} Nome: $nome, $descricao';  //retorna array
    };
  return objetoCriado;
  };

  var objeto = novoObjeto();
  print(objeto);

  var listaDeObjetos = [objeto('Vinícius', 1.99)];
  listaDeObjetos.add(objeto('Iphone', 3000.00));
  listaDeObjetos.add(objeto('Fones', 100.00));

  for (var objeto in listaDeObjetos) {
    print(objeto.substring(7));
  }
}

void main() {
  funcaoClosures();
}