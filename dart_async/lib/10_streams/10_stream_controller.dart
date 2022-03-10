import 'dart:async';

Future<void> main() async {
  print('START');
  final streamController = StreamController<int>.broadcast();
  final inStream = streamController.sink;
  final outStream = streamController.stream;

  outStream
      .skip(1)
      .where((numero) => numero % 2 == 0)
      .map((numero) => 'O valor par enviado é $numero.')
      .listen((stringConvertida){
        print('String RECEBIDA.');
        print(stringConvertida);
      });

  var numeros = List.generate(20, (index) => index);

  for (var numero in numeros) {
    print('Enviando numero: $numero.');
    inStream.add(numero);
    // await Future.delayed(Duration(milliseconds: 500));
  }

  print('END');
  await streamController.close();
}
