void main(List<String> args) {
  // Declaração 'normal'
  List<int> listNumeros = [1, 2, 3, 4, 5, 6]; //<> generics

  var listNumero2 = [1,2,3];

  List<int> listSemDados = [];

  var listSemDados3 = []; // Cria uma lista com tipo dynamic

  var listSemDados2 = <int>[]; // Jeito mais certo, declarando o tipo na frente da lista vazia

  List<String> listString = ['1', '2', '3', '4', '5', '6']; //<> generics

  var listString2 = [1,2,3];

  List<String> listStringSemDados = [];

  var listStringSemDados3 = []; // Cria uma lista com tipo dynamic ERRADO

  var listStringSemDados2 = <String>[];
}