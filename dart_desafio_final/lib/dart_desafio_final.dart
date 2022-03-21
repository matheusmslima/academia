import 'package:dart_desafio_final/databases/database.dart';

import 'repositories/estado_repository.dart';

Future<void> main() async {
  var mySqlConnection = await Database().openConnection().then((value) => value);
  var estadoRepository = EstadoRepository();
  var listaEstados = estadoRepository.buscarEstados();
  listaEstados.then((estados) async{
    estadoRepository.addEstados(estados, mySqlConnection);
  });
}

// Future<List<Estado>> listaDeEstados = buscarEstados();
// // Future<List<Cidade>> listaDeCidades = buscarCidade();
// var listaEstadosIterable = <Estado>[];

// await listaDeEstados.then((estados){
//   for (var estado in estados) {
//     print(estado.runtimeType);
//     listaEstadosIterable.add(estado);
//   }
// });
// print(listaEstadosIterable[3]);
