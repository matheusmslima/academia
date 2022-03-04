import 'package:dart_poo/7_polimorfismo/anestesista.dart';
import 'residente_anestesista.dart';
import 'package:dart_poo/7_polimorfismo/obstetra.dart';
import 'package:dart_poo/7_polimorfismo/pediatra.dart';

import 'medico.dart';

void main(){
  // Parto 

  var medicos = <Medico>[
    ResidenteAnestesista(),
    Obstetra(),
    Pediatra(),
  ];

  // Realizar um parto

  for(var medico in medicos){
    medico.operar();
  }
}
