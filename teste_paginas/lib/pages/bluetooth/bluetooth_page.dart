import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bluetooth_controller.dart';

class BluetoothPage extends GetView<BluetoothController> {
  const BluetoothPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: TORNAR O LIST VIEW BUILDER OBSERVÁVEL PELO GET PARA QUE A LISTA FIQUE ATUALIZADA NA TELA
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: const Icon(Icons.mobile_friendly),
            title: Text(
              'Dispositivo $index',
              textAlign: TextAlign.justify,
            ),
            trailing: IconButton(
              onPressed: () {
                Get.snackbar(
                  'Sucesso!',
                  'Dispositivo $index removido com sucesso',
                  titleText:
                      Text('Item $index!', textAlign: TextAlign.center),
                  messageText: const Text('data', textAlign: TextAlign.center),
                  backgroundColor: Colors.red,
                  // barBlur: 100,
                  // animationDuration: const Duration(seconds: 1),
                  // duration: Duration(seconds: 1),
                );
              },
              icon: const Icon(
                Icons.delete_outline,
                color: Colors.redAccent,
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.bluetooth),
      ),
    );
  }
}
