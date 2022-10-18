import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller_tenth.dart';

class GetXControllerTypeMain extends StatelessWidget {
  // If init property is not used in GetX<Type of Controller> then
  //create the instance of controller as follows.
  //MyControllerTenth myController = Get.put(MyControllerTenth());

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
            GetX<MyControllerTenth>(
              init: MyControllerTenth(),
              builder: (controller) {
                return Text(
                  "tenth \n The value is  ${controller.count}",
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
                // myController.increment();

                // If instance of controller not created at top
                Get.find<MyControllerTenth>().increment();
              },
            ),
          ],
        ),
      ),
    );
  }
}
