void pessoaMaisVelha(List<String> dadosPessoas) {
  var dadosPessoasLocal = [...dadosPessoas];
  var idades = [];
  var listaDados = [];
  var listaSorteada = [];

  for (var dado in dadosPessoasLocal) {
    listaDados.add(dado.split('|'));
  }

  for (var pessoa in listaDados) {
    listaDados.forEach((element) {
      int.parse(element[1]);
    });
    idades.add(pessoa[1]);
  }
  idades.sort();
  var idMaisVelha = idades.last;
  var pessoaMaisVelha = listaDados.forEach((element) {
    if (element[1] == idMaisVelha) {
      print('${element[0]}');
    }
    
  });
}
