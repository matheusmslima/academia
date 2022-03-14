import 'dart:async';
import 'dart:convert';

import 'package:dart_desafio_final/models/cidade.dart';
import 'package:dart_desafio_final/models/estado.dart';
import 'package:http/http.dart' as http;

import 'models/database.dart';

Future<void> main() async {
  Future<List<Estado>> listaDeEstados = buscarEstado();
  // Future<List<Cidade>> listaDeCidades = buscarCidade();
  var listaEstadosIterable = <Estado>[];

  await listaDeEstados.then((estados){
    for (var estado in estados) {
      print(estado.runtimeType);
      listaEstadosIterable.add(estado);
    }
  });
  print(listaEstadosIterable[3]);

//   final database = Database();

//   var mySqlConnection = await database.openConnection();
//   await Future.delayed(Duration(seconds: 1));

//   for (var estado in listaDeEstados) {
    
//   }

//   // listaDeEstados.then((estados) {estados.forEach(estados, (estado) async {
//   //   await addEstados(estado, mySqlConnection);});});

//   // listaDeCidades.then((cidades) {
//   //   addCidades(cidades, mySqlConnection);
//   // });

//   await Future.delayed(Duration(seconds: 1));
//   await mySqlConnection.close();
// }
}
Future<List<Estado>> buscarEstado() async {
  var url = 'https://servicodados.ibge.gov.br/api/v1/localidades/estados/';
  var response = await http.get(Uri.parse(url));
  List<dynamic> listaEstados = jsonDecode(response.body);
  var listaEstadosClasses = <Estado>[];

  for (var estado in listaEstados) {
    listaEstadosClasses.add(Estado.fromMap(estado));
  }

  return listaEstadosClasses;
}

Future<List<Cidade>> buscarCidade() async {
  var listaCidadeClasses = <Cidade>[];

  var url =
      'https://servicodados.ibge.gov.br/api/v1/localidades/estados/35/distritos/';
  var response = await http.get(Uri.parse(url));

  List<dynamic> listaCidade = jsonDecode(response.body);

  for (var cidade in listaCidade) {
    listaCidadeClasses.add(Cidade.fromMap(cidade));
  }

  return listaCidadeClasses.toList();
}

Future<void> addCidades(cidades, mySqlConnection) async {
  for (var cidade in cidades) {
    await mySqlConnection.query(
      'insert into cidade(id, id_uf, nome) values(?,?,?)',
      [
        cidade.id,
        cidade.idUf,
        cidade.nome,
      ],
    );
  }
}

Future<void> addEstados(estados, mySqlConnection) async {
  for (var estado in estados) {
    await mySqlConnection.query(
      'insert into estado(id, uf,nome) values(?,?,?)',
      [
        estado.id,
        estado.uf,
        estado.nome,
      ],
    );
  }
}
