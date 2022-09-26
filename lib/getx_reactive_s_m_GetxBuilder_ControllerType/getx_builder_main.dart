import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'my_controller_get_builder.dart';

class GetXBuilderControllerType extends StatelessWidget {
  // If init property is not used in GetX<Type of Controller> then
  //create the instance of controller as follows.
  MyControllerGetXBuilder myController = Get.put(MyControllerGetXBuilder());

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("State Management")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetBuilder<MyControllerGetXBuilder>(
              // init: MyControllerGetXBuilder(),
              builder: (controller) {
                return Text(
                  "eleventh \n The value is  ${controller.count}",
                  style: const TextStyle(fontSize: 25),
                );
              },
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              child: const Text("Increment"),
              onPressed: () {
                myController.increment();
                // If instance of controller not created at top
                // Get.find<MyControllerGetXBuilder>().increment();
              },
            ),
          ],
        ),
      ),
    );
  }
}
