void main() {
  var idade = '26';
  String? nome;
  // int.parse(idade);

  try {
    print('inicio');
    //var idadeParse = int.parse(idade);
    // nome!.toLowerCase();

    // if (idadeParse == 26) {
    //   throw Exception();
    // }
    print('fim');
    // print(e);
  } on Exception{
    print('Erro idade == 26');
  } on FormatException catch (e, s) {
    print(s);
  } on TypeError{
    print('Erro ao tentar transformar string em lower case');
  } catch (e) {
    print('Erro ao executar programa.');
  } finally {
    print('Finally');
  }
}
