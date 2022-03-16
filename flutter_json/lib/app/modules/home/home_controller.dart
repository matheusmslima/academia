
import 'package:flutter_json/app/models/user.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  var userList = <int>[].obs;
  
  void addUser(){
    int a = 1;
    userList.add(a);
    print(userList);
  }
}