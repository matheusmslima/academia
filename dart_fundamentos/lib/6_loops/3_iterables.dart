void main(List<String> args) {
  var numeros = List.generate(10, (index) => index);

  // for (var i = 0; i < numeros.length; i++) {
  //   if (i == 5) {
  //     continue;
  //   }
  //   print(numeros[i]);
  // }
 
  numeros
    .where((numero) => numero != 5)
    .forEach((numero) => print(numero));

  final numerosAte5 = numeros
                        .takeWhile((numero) => numero<6);
  print(numerosAte5);
}