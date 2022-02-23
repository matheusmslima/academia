String? nome;

void main(List<String> args) {
  var nomeCompleto = ((nome != null) ? nome! + 'Matheus' : 'Matheus Lima');
  print(nomeCompleto);

  String nomeCompleto2;

  if (nome != null) {
    nomeCompleto2 = nome! + 'Matheus';
  } else {
    nomeCompleto2 = 'Matheus Lima';
  }

  print(nomeCompleto2);

  var nomeLocal = nome;

  nomeLocal ??= 'Matheus';
  
  if (nomeLocal == null) {
    nomeLocal = 'Matheus';
  }

  var nomeCompleto3 = nomeLocal + 'Lima';

  print(nomeCompleto3);
}