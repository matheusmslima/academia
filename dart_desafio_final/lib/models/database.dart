import 'package:mysql1/mysql1.dart';

class Database {
  Future<MySqlConnection> openConnection() {
    //* Conexao com base de dados senai
    final settings = ConnectionSettings(
      host: '127.0.0.1',
      port: 3306,
      user: 'matheusmslima',
      password: '@senai762',
      db: 'dart_desafio_final',
    );

    //* Conexao com base de dados de casa
    // final settings = ConnectionSettings(
    //     host: '127.0.0.1',
    //     port: 3306,
    //     user: 'matheusmslima',
    //     password: 'barret50',
    //     db: 'dart_desafio_final');

    return MySqlConnection.connect(settings);
  }

}
