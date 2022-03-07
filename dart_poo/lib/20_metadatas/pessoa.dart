import 'dart:io';

import 'package:dart_poo/20_metadatas/fazer.dart';

@Fazer(
  quem: 'Matheus na class',
  oque: 'Lendo a anotacao da classe',
)
@gzip
class Pessoa {
  @Fazer(
    quem: 'Matheus no atributo',
    oque: 'Lendo a anotacao do atributo',
  )
  String? nome;

  @Fazer(
    quem: 'Matheus no método',
    oque: 'Lendo a anotacao do atributo',
  )
  void fazerAlgo() {
    print('faça alog');
  }
}
