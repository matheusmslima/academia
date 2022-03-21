import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/estado.dart';


class EstadoRepository {
  Future<List<Estado>> buscarEstados() async {
  var url = 'https://servicodados.ibge.gov.br/api/v1/localidades/estados/';
  var response = await http.get(Uri.parse(url));
  List<dynamic> listaEstados = jsonDecode(response.body);
  var listaEstadosClasses = <Estado>[];

  for (var estado in listaEstados) {
    listaEstadosClasses.add(Estado.fromMap(estado));
  }

  return listaEstadosClasses;
}

Future<void> addEstados(List<Estado>estados, mySqlConnection) async {
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
}