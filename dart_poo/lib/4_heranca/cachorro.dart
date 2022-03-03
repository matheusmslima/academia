import 'package:dart_poo/4_heranca/animal.dart';

// ACOPLADO A CLASSE ANIMAL
class Cachorro extends Animal {
  Cachorro({required int idade}) : super(idade: idade);

  @override
  int calcularIdadeHumana() {
    return idade * 7;
  }
}
