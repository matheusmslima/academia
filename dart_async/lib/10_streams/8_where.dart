import 'dart:async';

Future<void> main(List<String> args) async {
  print('START');

  final interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(
    interval,
    callback,
  );

  //* Lembrar que a funcao where tem que retornar verdadeiro
  stream = stream.where((numero) => numero % 6 == 0).take(3);

  stream.listen((numero) { 
    print('Valor no listen: $numero.');
  });

  print('END');
}

int callback(int value) {
  print('Valor que chega na funcao callback: $value.');
  return (value + 1) * 2;
}
