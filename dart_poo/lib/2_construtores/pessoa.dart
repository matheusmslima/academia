class Pessoa {
  String? nome;
  int? idade;
  String? sexo;

  // construtor default todas as classes tem
  // automaticamente
  Pessoa({
    required this.nome,
    required this.idade,
    required this.sexo,
  });

  Pessoa.semNome({
    required this.sexo,
    required this.idade,
  });

  Pessoa.vazia();

  // Construtor do tipo factory
  // é utilizado quando temos uma regra de negocio
  // para criação da nossa classe
  factory Pessoa.fabrica(String nomeConstruc) {
    var nome = nomeConstruc + '_fabrica';
    var pessoa = Pessoa.vazia();
    pessoa.nome = nome;
    return pessoa;
  }
}
