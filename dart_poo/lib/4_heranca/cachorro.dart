import 'package:dart_poo/4_heranca/animal.dart';

// ACOPLADO A CLASSE ANIMAL
class Cachorro extends Animal {
  Cachorro({
    required int idade,
    required String nome,
  }) : super(
          idade: idade,
          nome: nome,
        );

  @override
  int calcularIdadeHumana() {
    return idade * 7;
  }
}
