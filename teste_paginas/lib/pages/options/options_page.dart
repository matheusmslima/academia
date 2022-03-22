import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'options_controller.dart';

class OptionsPage extends GetView<OptionsController> {
  const OptionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Alerts Page",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
