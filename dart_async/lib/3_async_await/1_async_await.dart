Future<void> main() async {
  print('Inicio main');

  try {
    var mensagem = await processo1();
    print(mensagem);

    var mensagem2 = await processo2();
    print(mensagem2);

    await processo3();
  } on Exception catch (e) {
    print('Erro na chamada do processo 3 $e');
  }

  print('Fim main');
}

Future<String> processo1() {
  print('Inicio P1');
  return Future.delayed(Duration(seconds: 3), () => 'Fim do P1.');
}

Future<String> processo2() {
  print('Inicio P2');
  return Future.delayed(Duration(seconds: 3), () => 'Fim do P2.');
}

Future<String> processo3() {
  print('Inicio P3');
  return Future.delayed(Duration(seconds: 3), () => throw Exception());
}
