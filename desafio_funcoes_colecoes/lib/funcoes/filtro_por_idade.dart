void filtrarPessoasPorIdade(List<String> dadosPessoas){
  var dadosPessoasLocal = [...dadosPessoas];
  var listaMaioresDeIdade = [];
  for (var pessoa in dadosPessoasLocal) {
    var listaPessoas = pessoa.split('|');
    if (int.parse(listaPessoas[1]) > 18) {
      listaMaioresDeIdade.add(listaPessoas[0]);
    }
  }
  listaMaioresDeIdade.forEach(print);
}