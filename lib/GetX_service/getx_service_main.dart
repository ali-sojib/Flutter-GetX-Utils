import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'getx_service_controller.dart';

class GetXServiceView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("GetX Service")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Increment"),
              onPressed: () {
                Get.find<GetXServiceController>().incrementCounter();
              },
            ),
          ],
        ),
      ),
    );
  }
}