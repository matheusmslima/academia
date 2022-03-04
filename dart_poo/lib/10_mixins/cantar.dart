import 'package:dart_poo/10_mixins/artista.dart';

abstract class Cantar  {
  String cantar(){
    return 'Canta Rock.';
  }

  //* SOBRESCREVI o método de mesma assinatura
  //* no artista.dart
  String habilidade() {
    return 'Canta';
    
  }
}