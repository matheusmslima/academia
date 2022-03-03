class Cliente {
  late final String nome;
  String? idade;
  Cliente({required String nome, String? idade});

  Cliente.comNome({required String nome}){
    nome = nome;
  }
}
