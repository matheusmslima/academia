import 'package:http/http.dart';

import '../models/user.dart';

class UserRepository {
  Future<User?> findAllUsers(int id) async {
    var url = 'https://6228deb69fd6174ca8320739.mockapi.io/1/users/$id';
    var response = await get(Uri.parse(url));

    if (response.statusCode == 200) {
      return User.fromJson(response.body);
    } else {
      throw Exception();
    }
  }
}
