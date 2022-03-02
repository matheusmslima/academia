List<String> removerDuplicados(List<String> dadosPessoas){
  var dadosPessoasLocal = [...dadosPessoas];
  var dadosSemDuplicados = dadosPessoasLocal.toSet().toList();
  dadosSemDuplicados.forEach(print);
  return dadosSemDuplicados;
}