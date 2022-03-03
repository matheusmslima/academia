import 'package:dart_poo/2_construtores/pessoa.dart';

void main() {
  var pessoa = Pessoa(
    nome: 'Matheus',
    idade: 26,
    sexo: 'Masculino',
  );
  print(pessoa.nome);

  // Construtor nomeado
  var pessoaNomeado = Pessoa.semNome(
    sexo: pessoa.sexo,
    idade: pessoa.idade,
  );
  print(pessoaNomeado.idade);

  // Construtor factory
  var pessoaFabrica = Pessoa.fabrica('Matheus Lima');
}
