import 'package:dart_async/8_repositories/repositories/cidade_repository.dart';
import 'package:dart_async/8_repositories/repositories/user_repository.dart';

Future<void> main() async{
  var cidadeRepository = CidadeRepository();
  var userRepository = UserRepository();

  try {
    var cidade = await cidadeRepository.buscarCidade();
    print(cidade);

    var user = await userRepository.findAllUsers(164654654);

    print(user?.name ?? 'Usuário não encontrado.');

    // if(user != null){
    //   print(user.name);
    // } else {
    //   print('Usuario não encontrado.');
    // }

  } catch (e) {
    print('Erro ao buscar cidade');
  }
}