import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "This is Home Screen",
              style: TextStyle(color: Colors.purpleAccent, fontSize: 30),
            ),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.lightBlue),
              child: const Text(
                "Next Screen",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              onPressed: () {},
            ),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.lightBlue),
              child: const Text(
                "Back to Main",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              onPressed: () {
                Get.back();
                // Send data to previous screen must use result as name
                //TODO: its not work
                Get.back(result: 'This data is from Home Screen');
              },
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "${Get.arguments}",
              style: TextStyle(color: Colors.green, fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
