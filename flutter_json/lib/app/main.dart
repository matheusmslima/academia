import 'package:flutter/cupertino.dart';
import 'package:flutter_json/app/routes/home_routers.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(
    GetMaterialApp(
      initialRoute: '/home',
      getPages: [
        ...HomeRouters.routers,
      ],
    )
  );
}