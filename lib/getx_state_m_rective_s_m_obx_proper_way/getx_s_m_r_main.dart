import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'my_controller.dart';

class IntroducingGextController extends StatelessWidget {
  // Create the instance of Controller
  MyController myController = Get.put(MyController());
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
            Obx(() => Text(
                  "Name  is ${myController.student.value.name}",
                  style: TextStyle(fontSize: 25),
                )),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              child: Text("Upper"),
              onPressed: () {
                //If individual variables are observable
                // myController.convertToUpperCase();
                // If entire class is observable
                myController.convertUpperCase();
              },
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              child: Text("Lower"),
              onPressed: () {
                //If individual variables are observable
                // myController.convertToLowerCase();
                // If entire class is observable
                myController.convertLowerCase();
              },
            ),
          ],
        ),
      ),
    );
  }
}
