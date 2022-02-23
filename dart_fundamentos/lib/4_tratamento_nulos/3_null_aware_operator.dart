String? nome;

void main(List<String> args) {
  var sobrenome = 'Lima';

  // var nomeCompleto = ((nome != null) ? nome! + 'Matheus' : 'Matheus Lima');

  var nomeCompleto = (nome ?? 'Matheus') + ' ' + sobrenome; // OR OPERATOR ?? 

  print(nomeCompleto);

  String? nomeCompleto2;

  print(nomeCompleto2 ?? 'Matheus Lima');
}