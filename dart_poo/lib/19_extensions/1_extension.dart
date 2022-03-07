import 'package:dart_poo/19_extensions/pessoa_saudacao_extension.dart';
import 'package:dart_poo/19_extensions/saudacao_string_extension.dart';
import 'pessoa.dart';

void main() {
  var nome = 'Matheus Lima';
  print(nome.saudacao());

  var p1 = Pessoa(nome: 'Matheus');
  
  print(p1.saudacao());
}