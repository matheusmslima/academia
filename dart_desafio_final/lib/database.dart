import 'package:mysql1/mysql1.dart';

class Database {
  
  Future<MySqlConnection> openConnection() {

    final settings = ConnectionSettings(
      host: '127.0.0.1',
      port: 3306,
      user: 'matheusmslima',
      password: 'barret50',
      db: 'dart_desafio_final'
    );

    return MySqlConnection.connect(settings);
    
  }

}