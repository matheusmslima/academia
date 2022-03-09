import 'package:dart_async/7_modelos/cidade.dart';
import 'package:dart_async/7_modelos/user.dart';
import 'package:dart_async/7_modelos/user_mais_facil.dart';
import 'package:http/http.dart';

void main() {
  // buscarCep();
  buscarUser();
}


Future<void> buscarCep() async {
  var url = 'https://viacep.com.br/ws/95070420/json/';
  var response = await get(Uri.parse(url));

  if (response.statusCode == 200) {
    var cidade = Cidade.fromJson(response.body);
    print(cidade);
    print(cidade.runtimeType);
    print(cidade.toMap());
    print(cidade.toMap().runtimeType);
    print(cidade.toJson());
    print(cidade.toJson().runtimeType);
  }
}

Future<void> buscarUser() async {
    var url = 'https://6228deb69fd6174ca8320739.mockapi.io/1/users/1';
    var response = await get(Uri.parse(url));

      if (response.statusCode == 200) {
        var user = UserMaisFacil.fromJson(response.body);
        print(user);
      }

}