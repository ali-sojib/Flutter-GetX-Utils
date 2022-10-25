import 'package:flutter/material.dart';

import 'controller_workers.dart';
import 'package:get/get.dart';

class UnderstandingGetXWorkers extends StatelessWidget {
  ControllerWorkers myController = Get.put(ControllerWorkers());

  ///https://www.youtube.com/watch?v=3iPUzlaFp2w&list=PLCaS22Sjc8YR32XmudgmVqs49t-eKKr9t&index=14&ab_channel=RipplesCode
  ///https://www.youtube.com/watch?v=mKFeOKsoYN4&ab_channel=SalmanBediya

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Workers")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Increment"),
              onPressed: () => myController.increment(),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                onChanged: (val) {
                  myController.increment();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
