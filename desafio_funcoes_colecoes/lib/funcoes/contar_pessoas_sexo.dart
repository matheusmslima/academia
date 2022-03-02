void contarPessoasPorSexo(List<String> dadosPessoas){
  var dadosPessoasLocal = [...dadosPessoas];
  int countMasculino = 0;
  int countFeminino = 0;
  var listaMasculino = [];
  var listaFeminino =[];

  for (var pessoa in dadosPessoasLocal) {
    var listaPessoa = pessoa.split('|');
    if (listaPessoa[2].toLowerCase() == 'masculino') {
      countMasculino += 1;
      listaMasculino.add(listaPessoa[0]);
    } else {
      countFeminino += 1;
      listaFeminino.add(listaPessoa[0]);
    }
  }
  
  print('O número de pessoas do sexo Masculino na lista é: $countMasculino');
  print('O número de pessoas do sexo Feminino na lista é: $countFeminino');
  listaMasculino.forEach(print);
  listaFeminino.forEach(print);

}