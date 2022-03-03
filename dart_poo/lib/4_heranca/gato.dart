import 'package:dart_poo/4_heranca/animal.dart';

// ACOPLADO A CLASSE ANIMAL
class Gato extends Animal {
  Gato({
    required int idade,
    required String nome,
  }) : super(
          idade: idade,
          nome: nome,
        );

  @override
  int calcularIdadeHumana() {
    return idade * 15;
  }
}
