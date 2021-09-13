class Usuario {
  bool alteracao = false;
  String? nome;
  String? _senha;

  Usuario(this.nome, String senha) {
    this._senha = senha;
  }


  //getter padrao

  String? get senha {
    return _senha;
  }

  //setter padrao

  set senha(String? senha) {
    if(alteracao) {
      _senha = senha;
      print('Senha alterada com sucesso');

    } else {
      print('Acesso negado!');
    }
  }
}