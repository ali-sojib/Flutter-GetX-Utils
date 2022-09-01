import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'getx_home.dart';

class RouteNavigationMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Navigation")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text("Go to Home"),
              onPressed: () async {
                // Get.to(
                //   Home(),
                //   // To make the screen full dialog
                //   // fullscreenDialog: true,
                //   // To provide animations
                //   transition: Transition.fade,
                //   // Duration for transition animation
                //   // duration: Duration(milliseconds: 4000),
                //   // Curve Animation
                //   curve: Curves.bounceOut,
                // );
                // Go to home screen but no option to return to previous screen
                // Get.off(Home());
                // Go to home screen and cancel all previous screens/routes
                //Get.offAll(Home());
                // Go the next screen with some data
                // Get.to(Home(), arguments: "arguments Data from Main");

                // Go to next screen and receive data sent from home screen
                //TODO: its not work
                var data = await Get.to(Home());
                //TODO: dat gets null
                print('printing Received data is :=  $data');
              },
            )
          ],
        ),
      ),
    );
  }
}
