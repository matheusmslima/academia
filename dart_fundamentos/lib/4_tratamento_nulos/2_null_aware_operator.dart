String? nome;

void main(List<String> args) {
  var nomeCompleto = ((nome != null) ? nome! + 'Matheus' : 'Matheus Lima');

  String nomeCompleto2;

  if (nome != null) {
    nomeCompleto2 = nome! + 'Matheus';
  } else {
    nomeCompleto2 = 'Matheus Lima';
  }
}