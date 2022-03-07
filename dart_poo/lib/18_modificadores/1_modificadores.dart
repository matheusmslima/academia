import 'pessoa.dart';

void main() {
  var p1 = const Pessoa(nome: 'Matheus', idade: 26);
  var p2 = const Pessoa(nome: 'Matheus', idade: 26);
  var p3 = const Pessoa(nome: 'Matheus', idade: 26);

  print(p1 == p2);
  print(p1 == p2 && p2 == p3);
}
