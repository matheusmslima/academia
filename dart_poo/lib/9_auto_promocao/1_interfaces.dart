import 'gol.dart';
import 'uno.dart';
import 'carro.dart';

//* Variáveis de tipo superior e atributos de classe
//* Não são autopromovidas para o tipo checado

Carro golCarro2 = Gol();
void main() {
  var uno = Uno();
  var gol = Gol();

  Carro golCarro = Gol();

  //* Quando checamos se a
  //* variável is (é) de um tipo
  //* caso seja o dart converte automaticamente
  //* essa instancia para a classe do tipo

  if (golCarro is Gol) {
    golCarro.tipoDeRodas();
  }

  if (golCarro2 is Gol) {
    //! golCarro2.tipoDeRodas();
    (golCarro2 as Gol).tipoDeRodas();
  }
  // var tipoDeRodas = (golCarro as Gol).tipoDeRodas();
  // print('Var tipo de rodas: $tipoDeRodas');

  // print(golCarro);
  // print(golCarro.runtimeType);

  //print((golCarro as Gol).tipoDeRodas());

  //print(golCarro.runtimeType);

  printarDadosDoCarro(uno);
  printarDadosDoCarro(gol);
}

// String? nome;

// if (nome != null) {
//   nome.toLowerCase();
// }

void printarDadosDoCarro(Carro carro) {
  print('''
    Carro:
      Tipo: ${carro.runtimeType}
      Portas: ${carro.portas}
      Rodas: ${carro.rodas}
      Motor: ${carro.motor}
      Velocidade Máxima: ${carro.velocidadeMaxima()}
      Tipo de Rodas: ${carro is Gol ? carro.tipoDeRodas() : 'Não disponível.'}
''');
}
