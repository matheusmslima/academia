import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Controller controller = Get.put(Controller());

    return Scaffold(
      appBar: AppBar(title: Obx(() => Text('Clicks: ${controller.count}'))),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: controller.increment,
      ),
      body: Obx(() { 
              return ListView.builder(
              itemCount: controller.count.toInt(),
              itemBuilder: (BuildContext context, _){
                return ListTile(
                  leading: const Icon(Icons.add),
                  trailing: const Text("GFG"),
                  title: Text('List item ${controller.count}'),
                );
              },
            );
          }
        )
    );
  }
}

class Controller extends GetxController {
  var count = 0.obs;
  increment() => count++;
}
