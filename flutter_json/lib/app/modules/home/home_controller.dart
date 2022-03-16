import 'package:flutter_json/app/repositories/user_repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var userList = <String>[].obs;

  void addNewUser(){
    UserRepository().findUser().then((value) => userList.add(value.firstName + ' ' + value.lastName));
  }

}
