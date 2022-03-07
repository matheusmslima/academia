void main() {
  final nomes = ['Matheus', 'Kauan', 'Marcelo', 'Carol'];

  final pessoasAntigo = nomes.map((nome) => Pessoa(nome)).toList();

  // final pessoas = nomes.map<Pessoa>(Pessoa.new).toList();
  final pessoas = nomes.map<Pessoa>(Pessoa.fromJson).toList();
  // final pessoas = nomes.map<Pessoa>(Pessoa.nome).toList();

  for (var pessoa in pessoas) {
    print('Olá ${pessoa.nome}');
  }
}


void funcaoQualquer(Pessoa Function(String) funcao){
  funcao('Rodrigo');
}

class Pessoa {
  String nome;

  Pessoa(this.nome);
  Pessoa.nome(this.nome);

  factory Pessoa.fromJson(String nome){
    return Pessoa(nome);
  }
}
