import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

Future<void> main() async {
  buscarEstado();
}

Future<void> buscarEstado() async {
  var url = 'https://servicodados.ibge.gov.br/api/v1/localidades/estados/';
  var response = await http.get(Uri.parse(url));

  var responseData = convert.jsonDecode(response.body);

  print(responseData['sigla']);
  // print(responseData.runtimeType);
}
