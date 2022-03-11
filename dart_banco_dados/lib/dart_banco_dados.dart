import 'package:dart_banco_dados/database.dart';
import 'package:mysql1/mysql1.dart';

void main() async {
  final database = Database();
  var mySqlConnection = await database.openConnection();
  //! IMPORTANTE
  await Future.delayed(Duration(milliseconds: 100));

  // print(mySqlConnection.toString());

  // var resultado = await mySqlConnection.query(
  //   'INSERT INTO aluno(id, nome) values(?,?)',
  //   [
  //     null,
  //     'Matheus Lima',
  //   ],
  // );

  // print(resultado.affectedRows);

  await mySqlConnection.query(
      'update aluno set nome = ? where id = ?', ['Academia do Flutter', 1]);

  var resultadoSelect = await mySqlConnection.query('select * from aluno');

  for (var row in resultadoSelect) {
    print('Resultado por indice:');
    print(row[0]);
    print(row[1]);

    print('Resultado pelo nome da coluna:');
    print(row['id']);
    print(row['nome']);
  }

  var resultadoSelectUnico =
      await mySqlConnection.query('select * from aluno where id = ?', [1]);
  print('Parâmetrs unicos.');

  if (resultadoSelectUnico.isNotEmpty) {
    var rowUnico = resultadoSelectUnico.first;
    print('Resultado por indice:');
    print(rowUnico[0]);
    print(rowUnico[1]);

    print('Resultado pelo nome da coluna:');
    print(rowUnico['id']);
    print(rowUnico['nome']);
  }

  try {
    await mySqlConnection.query(
        'update aluno set nome = ? where id = ?', [1, 'Academia do Flutter']);
  } on MySqlException catch (e, s) {
    print(e);
    print(s);
    print('Erro ao atualizar dados do aluno');
  }

  // COMMIT E ROLLBACK
  await mySqlConnection.transaction((conn){
    
  });

}
