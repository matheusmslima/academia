void main() {
  print('Inicio do P1');

  processo2();

  //* 2 Status (incompleto, concluido(com valor, com erro))
  //* Concluido com valor -> Then
  //* Concluido com Erro -> CatchErro ou OnError
  //*! WhenComplete sempre será executado!!!


  // processo3().then((mensagem) {
  //   print(mensagem);
  //   // throw Exception();
  // }, onError: (error) {
  //   print('Erro de dentro do then');
  // });

  processo4()
      .then((mensagem) => print('Mensagem do P4 $mensagem.'))
      .catchError((erro) => print('Erro ao executar o P4.'))
      .whenComplete(() => print('Finalizou com Erro P4'));

  processo3()
      .then((value) => print(value))
      .whenComplete(() => print('Finalizou com sucesso P3'));

  print('Fim do P1');
}

Future<String> processo4() {
  print('Inicio P4');
  return Future.delayed(Duration(seconds: 3), () => throw Exception());
}

Future<String> processo3() {
  print('Inicio P3');
  return Future.delayed(Duration(seconds: 3), () => 'Fim do P3.');
}

Future<void> processo2() async {
  print('Inicio do P2');
  Future.delayed(Duration(seconds: 2), (() {
    var i = 0;
    while (i < 3) {
      print(i);
      i++;
    }
    print('Fim do P2');
  }));
}
