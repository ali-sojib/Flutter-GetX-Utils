import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller_unique_id.dart';

class GetBuilderUniqueId extends StatelessWidget {
  GetBuilderUniqueId({Key? key}) : super(key: key);

  ControllerUniqueIdController controllerUniqueIdController = Get.put(ControllerUniqueIdController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Controller Unique Id')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetBuilder<ControllerUniqueIdController>(
              id: 'textId',
              builder: (controller) {
                return Text(
                  "GetBuilder Unique ID \n  value is   "
                  "${controller.count}",
                  style: TextStyle(fontSize: 25),
                );
              },
            ),
            GetBuilder<ControllerUniqueIdController>(
              builder: (controller) {
                return Text(
                  "GetBuilder Unique \n  value is   "
                  "${controller.count}",
                  style: TextStyle(fontSize: 25),
                );
              },
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              child: Text("Increment"),
              onPressed: () {
                controllerUniqueIdController.increment();
                // If instance of controller not created at top
                // Get.find<ControllerUniqueIdController>().increment();
              },
            ),
          ],
        ),
      ),
    );
  }
}
