import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogHomePage extends StatefulWidget {
  const DialogHomePage({Key? key}) : super(key: key);

  @override
  State<DialogHomePage> createState() => _DialogHomePageState();
}

///https://www.youtube.com/watch?v=5Vi3SBlZoAk&list=PLCaS22Sjc8YR32XmudgmVqs49t-eKKr9t&index=3

class _DialogHomePageState extends State<DialogHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Show Dialog"),
              onPressed: () {
                //Get.defaultDialog();
                Get.defaultDialog(
                  title: "Dialog Title",
                  titleStyle: TextStyle(fontSize: 25),
                  middleText: "This is middle text",
                  middleTextStyle: TextStyle(fontSize: 20),
                  backgroundColor: Colors.purple,
                  //radius: 80,

                  // To customize the middle text
                  // content: Row(
                  //   children: [
                  //     CircularProgressIndicator(),
                  //     SizedBox(
                  //       width: 16,
                  //     ),
                  //     Expanded(
                  //       child: Text("Data Loading"),
                  //     ),
                  //   ],
                  // ),

                  // Default cancel and confirm action
                  // textCancel: "Cancel",
                  // cancelTextColor: Colors.white,
                  // textConfirm: "Confirm",
                  // confirmTextColor: Colors.white,
                  // onCancel: () {},
                  // onConfirm: () {},
                  // color for default cancel and confirm button
                  // buttonColor: Colors.green,

                  //Customize the default cancel and confirm
                  //Override the default cancel and confirm
                  // cancel: Text(
                  //   "Cancels",
                  //   style: TextStyle(color: Colors.white),
                  // ),
                  // confirm: Text(
                  //   "Confirms",
                  //   style: TextStyle(color: Colors.white),
                  // ),

                  // actions: [
                  //   RaisedButton(
                  //     child: Text("Action-1"),
                  //     onPressed: () {
                  //       Get.back();
                  //     },
                  //   ),
                  //   RaisedButton(
                  //     child: Text("Action-2"),
                  //     onPressed: () {},
                  //   )
                  // ],
                  // barrierDismissible: true,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
