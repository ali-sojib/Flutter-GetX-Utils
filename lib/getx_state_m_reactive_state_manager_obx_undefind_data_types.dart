import 'package:get/get.dart';
import 'package:flutter/material.dart';

class StateManagementReactiveStateManagerObxUndefindDataTypes
    extends StatelessWidget {
  var student = Student();

  // For making the entire class observable
  //final  student=Student( name:"tom",age:25).obs;
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
                  "Name  is ${student.name.value}",
                  style: TextStyle(fontSize: 25),
                )),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              child: Text("Upper"),
              onPressed: () {
                //If individual variables are observable
                student.name.value = student.name.value.toUpperCase();
                // If entire class is observable
                // student.update((student) {
                //   student.name=student.name.toString().toUpperCase();
                // });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Student {
  /* Classes can be made observable by making individuals variables Rx
  or by making the entire class observable.
   */
  // Individuals variables Rx
  var name = "Tom".obs;
  var age = 25.obs;

// To make the entire class observable
// var name;
// var age;
// Student({this.name, this.age});
}
