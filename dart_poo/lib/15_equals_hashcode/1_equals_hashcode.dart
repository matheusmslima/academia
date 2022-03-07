import 'pessoa.dart';

void main() {
  var p1 = Pessoa(
    nome: 'Matheus Lima',
    email: 'matheusmslima@gmail.com',
    telefone: '2342432342',
  );
  var p2 = Pessoa(
    nome: 'Matheus Lima',
    email: 'matheusmslima@gmail.com',
    telefone: '2342432342',
  );

  print(p1);
  print(p2.hashCode);

  if (p1 == p2) {
    print('É igual');
  } else {
    print('Não é igual');
  }
}


/* Igualdade por referência de memória
  nome = 'Rodrigo';
  nome2 = 'Rodrigo2';

  Não utilizam referencia de memória
  1 - p1 = Pessoa()
  2 - p2 = Pessoa()


*/