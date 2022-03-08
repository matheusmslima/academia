Future<void> main() async {
  var nomes = ['Matheus', 'Marcelo', 'Kauan'];

  print('Inicio');

  //* await Future.forEach<String>(nomes, (nome) async {
  //*   print(await saudacao(nome));
  //* });

  // for (var nome in nomes) {
  //   print(await saudacao(nome));
  // }

  var nomesFuturo = nomes.map((nome) => saudacao(nome)).toList();

  var saudacoes = await Future.wait(nomesFuturo);
  print(saudacoes);

  var nomesFuturoNaMao = [saudacao('Marta'), saudacao('João')];

  var saudacoesNaMao = await Future.wait(nomesFuturoNaMao);
  print(saudacoesNaMao);
  
  print('Fim');
}

Future<String> saudacao(String nome) {
  print('Inicio $nome');
  return Future.delayed(Duration(seconds: 1), () {
    print('Fim $nome');
    return 'Olá $nome';
  });
}
