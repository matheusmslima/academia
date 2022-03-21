import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/cidade.dart';


class CidadeRepository {
  Future<List<Cidade>> buscarCidades() async {
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
}