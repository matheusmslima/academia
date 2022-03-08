import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

Future<void> main() async {
  // await buscarCep();
  // await buscarPosts();
  // await buscarCepErro();
  await atualizarPost();
}

Future<void> atualizarPost() async {
  var url = 'https://jsonplaceholder.typicode.com/posts/1';
  var mapaRequest = {
    'id': 1,
    'title': 'Post novo',
    'body': 'Descricao do post',
    'userId': 1
  };
  var response =
      await http.put(Uri.parse(url), body: convert.jsonEncode(mapaRequest));
  print(response.statusCode);
  print(response.body);
}

Future<void> salvarPost() async {
  var url = 'https://jsonplaceholder.typicode.com/posts/';
  var mapaRequest = {
    'title': 'Post novo',
    'body': 'Descricao do post',
    'userId': 1
  };
  var response =
      await http.post(Uri.parse(url), body: convert.jsonEncode(mapaRequest));
  print(response.statusCode);
  print(response.body);
}

Future<void> buscarPosts() async {
  var url = 'https://jsonplaceholder.typicode.com/posts/';
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    var responseData = convert.jsonDecode(response.body);
    if (responseData is List) {
      responseData.forEach((element) => print(element['id']));
    }
  }
}

Future<void> buscarCep() async {
  var url = 'https://viacep.com.br/ws/01001000/json/';

  var response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    var responseData = convert.jsonDecode(response.body);
    if (responseData is Map) {
      print(response.body.runtimeType);
      print(responseData.runtimeType);
      print(responseData['cep']);
      print(responseData['logradouro']);
      print(responseData['localidade']);
    }
  }
}

Future<void> buscarCepErro() async {
  var url = 'https://viacep.com.br/ws/9999999/json/';

  var response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    var responseData = convert.jsonDecode(response.body);
    if (responseData is Map) {
      print(response.body.runtimeType);
      print(responseData.runtimeType);
      print(responseData['cep']);
      print(responseData['logradouro']);
      print(responseData['localidade']);
    }
  } else {
    print('Ocorreu um erro: ${response.reasonPhrase}.');
    print('Código do erro: ${response.statusCode}.');
    print(response.statusCode);
    print(response.body);
    print(response.reasonPhrase);
  }
}
