void main() {
  //! Detalhe sobre a String
  //! A String é composta por 4 campos (Nome|Idade|Profissão|Estado onde mora)
  final pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];

  //! Baseado no array acima monte um relatório onde:
  //! 1 - Apresente os pacientes com mais de 20 anos e print o nome deles
  //! 2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)
  //! 3 - Apresente a quantidade de pacientes que moram em SP

  var listaDadosPacientes = [];
  var listaPacientesAcimaDeVinte = [];
  var countDesenvolvedor = 0;
  var countEstudante = 0;
  var countDentista = 0;
  var countJornalista = 0;
  var countPacientesDeSP = 0;

  for (var paciente in pacientes) {
    var dadosPacientes = paciente.split('|');
    listaDadosPacientes.add(dadosPacientes);
  }
  //print(listaDadosPacientes);

  //* 1 - PACIENTES ACIMA DE 20 ANOS

  for (var paciente in listaDadosPacientes) {
    if (int.parse(paciente[1]) > 20) {
      listaPacientesAcimaDeVinte.add(paciente);
    }
  }
  print('\n1 - Apresente os pacientes com mais de 20 anos e print o nome deles.');
  print('1 - Os seguintes pacientes são maiores de 20 anos:');
  for (var nome in listaPacientesAcimaDeVinte) {
    print('Nome do paciente: ${nome[0]}');
  }

  //* 2 - NÚMERO DE PACIENTES POR PROFISSÃO
  for (var paciente in listaDadosPacientes) {
    if (paciente[2].toString().toLowerCase() == 'desenvolvedor') {
      countDesenvolvedor += 1;
    } else if (paciente[2].toString().toLowerCase() == 'estudante') {
      countEstudante += 1;
    } else if (paciente[2].toString().toLowerCase() == 'dentista') {
      countDentista += 1;
    } else if (paciente[2].toString().toLowerCase() == 'jornalista') {
      countJornalista += 1;
    }
  }
  print('\n2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)');
  print('2 - Dentre a lista de pacientes tem-se: ');
  print('$countDesenvolvedor desenvolvedores.');
  print('$countEstudante estudantes.');
  print('$countDentista dentistas.');
  print('$countJornalista jornalistas.');


  //* NÚMERO DE PACIENTES QUE MORAM EM SP
  for (var paciente in listaDadosPacientes) {
    if (paciente[3].toString().toLowerCase() == 'sp') {
      countPacientesDeSP += 1;
    }
  }
  print('\n3 - Apresente a quantidade de pacientes que moram em SP');
  print('3 - O número de pacientes que moram em SP é $countPacientesDeSP.');
}
