void main() {
  var numeros = List.generate(10, (index) => index);
  numeros.forEach(printAcademia);

  //* Expand
  //* Array Bidimensional
  var lista = [
    [1, 2],
    [3, 4]
  ];

  print(lista[0][1]);

  var novaLista1 = [...lista[0], ...lista[1]];
  var novaLista2 = lista.expand((numeros) => numeros).toList();
  print(novaLista1);
  print(novaLista2);

  //* any
  print('.any');
  final listaBusca = ['Matheus', 'João', 'Maria', 'José'];

  if (listaBusca.any((nome) => nome == 'João')) {
    print('João está na lista.');
  } else {
    print('João não está na lista.');
  }

  //* every
  print('.every');
  final listaBusca2 = ['Matheus', 'Marcelo', 'Kauan'];

  //! every tem que ser todos os itens verdadeiros
  if (listaBusca2.every((nome) => nome.toLowerCase().contains('a'))) {
    print('Todos os nomes tem a letra A');
  } else {
    print('Nem todos os nomes tem a letra A');
  }

  //* sort
  print('.sort');
  var listaParaOrdenacao = [99, 22, 10, 9, 0, 765, 1, 2, 3, 100, 300];
  listaParaOrdenacao.sort();
  print(listaParaOrdenacao);

  var listaNomesOrdenacao = ['Matheus', 'Kauan', 'Marcelo', 'Angelo'];
  listaNomesOrdenacao.sort();
  print(listaNomesOrdenacao);

  var listaPacientes = [
    'Matheus Lima|26',
    'Carol Stein|27',
    'Antonio|65',
    'Guilherme|18',
    'Marcos|18'
  ];
  var novaListaPacientes = [...listaPacientes];
  //! cuidar pois o método sort altera a lista
  novaListaPacientes.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    if (idadePaciente1 > idadePaciente2) {
      return 1;
    } else if (idadePaciente1 == idadePaciente2) {
      return 0;
    } else {
      return -1;
    }
  });
  print(listaPacientes);
  print(novaListaPacientes);

  //* CompareTo
  print('.sort com CompareTo');
  var listaPacientes2 = [
    'Matheus Lima|26',
    'Carol Stein|27',
    'Antonio|65',
    'Guilherme|18',
    'Marcos|18'
  ];
  final listaPacientes3 = [...listaPacientes2];

  listaPacientes2.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    return idadePaciente1.compareTo(idadePaciente2);
  });
  print(listaPacientes);

  print('Antes');
  print(listaPacientes3);
  funcaoQualquer(listaPacientes3);
  print('Depois');
  print(listaPacientes3);
}

void printAcademia(int valor) {
  print(valor);
}

void funcaoQualquer(List<String> pacientes) {
  final localPacientes = [
    ...pacientes
  ]; //! sempre criar outra lista para ser modificada internamente
  localPacientes.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    return idadePaciente1.compareTo(idadePaciente2);
  });
  print(localPacientes);
}
