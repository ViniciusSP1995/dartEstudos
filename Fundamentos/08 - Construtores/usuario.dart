class Usuario {
  String? user, senha, nome, cargo;

  Usuario(this.user, this.senha, {this.nome, String? cargo}) {
    this.nome = (nome == null) ? 'sem nome' : nome;
    this.cargo = (cargo == null) ? 'Usuario' : cargo;
    print('Construtor resumido com parametros nomeados default! ${this.toString()}');
  }

  Usuario.admin(this.user, this.senha, {this.nome, String? cargo}) {
    this.nome = (nome == null) ? 'sem nome' : nome;
    this.cargo = 'Administrador';
    print('Construtor resumido com parametros nomeados default! ${this.toString()}');
  }

  void autenticar() {
    //dados recuperados do banco de dados;

    var user = 'vds1995sp@gmail.com';
    var senha = '123456';

    (this.user == user && this.senha == senha) ? print('Usuario autenticado') : print('Usuario não autenticado');
  }
}
