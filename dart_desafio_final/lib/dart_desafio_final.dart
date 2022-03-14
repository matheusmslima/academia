import 'dart:convert';

import 'package:dart_desafio_final/models/cidade.dart';
import 'package:dart_desafio_final/models/estado.dart';
import 'package:http/http.dart' as http;
import 'package:mysql1/mysql1.dart';

import 'database.dart';

Future<void> main() async {
  // List<dynamic> cidades = await buscarCidade();
  // buscarEstado();
  final database = Database();
  var mySqlConnection = await database.openConnection();


  //! --------- PAREI AQUI --------- //
  await Future.delayed(Duration(seconds: 5));
  var resultado = await mySqlConnection
      .query('insert into cidade(id, id_uf, nome) values(?,?,?)', [
    null,
    null,
    'Matheus',
  ]);

  print(mySqlConnection.toString());

  // print(mySqlConnection);

  print(resultado.affectedRows);
  // // for (var i = 0; i < cidades.length; i++) {
  //   var resultado =
  //       mySqlConnection.query('insert into cidade(id, id_uf, nome) values(?,?,?)', [
  //         1, 2, 'testing'
  //   ]);
  // }
}

Future<void> buscarEstado() async {
  var url = 'https://servicodados.ibge.gov.br/api/v1/localidades/estados/11';
  var response = await http.get(Uri.parse(url));

  var estado = Estado.fromJson(response.body);

  print(estado.toMap());

  print(estado.toJson());
}

Future<List> buscarCidade() async {
  var url =
      'https://servicodados.ibge.gov.br/api/v1/localidades/estados/35/distritos/';
  var response = await http.get(Uri.parse(url));
  List<dynamic> listaCidade = jsonDecode(response.body);
  return listaCidade;

  // print(listaCidade[0]);
  // var cidadeJson = Cidade.fromMap(listaCidade[0]);
  // print(cidadeJson);
  // print(listaCidade.runtimeType);

  // var responseList = jsonDecode(response.body);
  // print(responseList);
  // print(responseList.runtimeType);
  // print(response.body);
  // print(response.body.runtimeType);
  // var cidade = Cidade.fromJson(response.body);
  // print(cidade.toMap());
}

Future<MySqlConnection> openConnection() {
  final settings = ConnectionSettings(
      host: '127.0.0.1',
      port: 3306,
      user: 'matheusmslima',
      password: 'barret50',
      db: 'dart_mysql');

  return MySqlConnection.connect(settings);
}
