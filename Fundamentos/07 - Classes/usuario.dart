class Usuario {
  String? usuario;
  String? senha;

  void autenticar() {
    //Dados recuperados do banco de dados
    var usuario = 'vds1995sp@gmail.com';
    var senha = '123456';

    if (this.usuario == usuario && this.senha == senha) {
      print('Usuario autenticado!\n');
    } else {
      print('Usuario não autenticado!\n');
    }
  }
}
