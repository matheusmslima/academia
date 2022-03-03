import 'package:dart_poo/4_heranca/cachorro.dart';

void main(){
  var cachorro = Cachorro(idade: 10, nome: 'Rodolfo');
  cachorro.tamanho = 'Pequeno';
  print(cachorro.calcularIdadeHumana());
  print(cachorro.recuperarIdade());
  print('''
    Cachorro:
      Tamanho: ${cachorro.tamanho}
      Idade: ${cachorro.idade}
      Idade Humana: ${cachorro.calcularIdadeHumana()}
  ''');
}