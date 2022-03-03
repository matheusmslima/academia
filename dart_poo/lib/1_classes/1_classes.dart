import 'package:dart_poo/1_classes/camiseta.dart';

void main() {
  var camisetaNike = Camiseta();
  camisetaNike.tamanho = 'G';
  camisetaNike.cor = 'Preta';
  camisetaNike.marca = 'Nike';

  print(Camiseta.nome);
  print(Camiseta.recuperarNome());

  print('''
    Camiseta:
      Tamanho: ${camisetaNike.tamanho}
      Cor: ${camisetaNike.cor}
      Marca: ${camisetaNike.marca}
      tipoLavagem: ${camisetaNike.tipoDeLavagem()}
  ''');

  var camisetaAdidas = Camiseta();
  camisetaAdidas.tamanho = 'M';
  camisetaAdidas.cor = 'Verde';
  camisetaAdidas.marca = 'Adidas';

  print('''
    Camiseta:
      Tamanho: ${camisetaAdidas.tamanho}
      Cor: ${camisetaAdidas.cor}
      Marca: ${camisetaAdidas.marca}
      tipoLavagem: ${camisetaAdidas.tipoDeLavagem()}

  ''');
}
