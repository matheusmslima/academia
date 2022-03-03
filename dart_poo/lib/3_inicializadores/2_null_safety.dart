import 'package:dart_poo/3_inicializadores/cliente.dart';

// TOMAR MUITO CUIDADO COM
// LATE E O ! (FORCE NON-NULL)

void main() {
  var cliente = Cliente(nome: 'Matheus');
  print(cliente.nome);

  // se vier nulo
  if (cliente.idade != null) {
    print(cliente.idade!.toLowerCase());
  }
  
}
