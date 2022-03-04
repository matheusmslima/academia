import 'package:dart_poo/8_interfaces/gol.dart';
import 'package:dart_poo/8_interfaces/uno.dart';

import 'carro.dart';

void main() {
  var uno = Uno();
  var gol = Gol();

  Carro golCarro = Gol();

  printarCarro(uno);
  printarCarro(gol);

  print(uno.tipoDeRodas());
}


void printarCarro (Carro carro) {
  print('''
    Carro:
      Tipo: ${carro.runtimeType}
      Portas: ${carro.portas}
      Rodas: ${carro.rodas}
      Motor: ${carro.motor}
      Velocidade Máxima: ${carro.velocidadeMaxima()}
''');
}