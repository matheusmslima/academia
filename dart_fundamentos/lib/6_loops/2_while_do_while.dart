void main(List<String> args) {
  // inicio     condicao      incremento
  //for(var i = 0; i<nomes.length; i++)

  var numero = 0;

  // While
  print('While convencional');
  while (numero <= 10) {
    print(numero);
    numero++;
  }

  // DoWhile
  print('Do While');
  var indice = 0;
  print('While nao sera executado');
  while (indice > 0) {
    print(numero);
    indice++;
  }

  do {
    print(indice);
    // indice++;
  } while (indice > 0);
}
