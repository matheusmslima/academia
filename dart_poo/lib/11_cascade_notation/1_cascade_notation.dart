void main() {
  var pessoa = Pessoa()
    ..nome = 'Matheus Lima'
    ..email = 'matheusmslima@gmail.com'
    ..site = 'github.com/matheusmslima'
    ..printPessoa();

  // pessoa.nome = 'Matheus Lima';
  // pessoa.email = 'matheusmslima@gmail.com';
  // pessoa.site = 'github.com/matheusmslima';

  var mapa = Map<String, String>()
    ..putIfAbsent('nome', () => 'Matheus Lima')
    ..putIfAbsent('email', () => 'matheusmslima@gmail.com')
    ..putIfAbsent('site', () => 'github.com/matheusmslima');

  print(mapa);
}

class Pessoa {
  String? nome;
  String? email;
  String? site;

  void printPessoa() {
    print('''
                Pessoa:
      Nome: $nome
      Email: $email
      Site: $site
''');
  }
}
