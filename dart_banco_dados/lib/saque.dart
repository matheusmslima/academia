import 'package:dart_banco_dados/database.dart';

Future<void> main() async {
  var database = Database();
  var conn = await database.openConnection();
  await Future.delayed(Duration(seconds: 1));

  await conn.transaction((_) async {

    var result = await conn.query('select * from conta_corrente');
    var saldo = result.first['saldo'] as double;
    var saque = 100.0;


    await conn
        .query('update conta_corrente set saldo = ? where id = ?', [saldo - saque, 1]);

    await conn.query('insert into tira_dinheiro(id, data_saque) values(?, ?)',
        [null, DateTime.now().toIso8601String()]);
  });

  var result = await conn.query('select * from conta_corrente');
  print('${result.first['saldo']}');
}
