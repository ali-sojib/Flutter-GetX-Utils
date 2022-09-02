import 'package:flutter/material.dart';
import 'package:get/get.dart';

// state_management_reactive State Manager Obx

/* If we want that every time the value of count variable changes
  then all the widgets which uses the count variable must update itself
  then the count variable must be reactive or observable and to make it
  Reactive(Rx) .obs is used with variable value.
  To update the widget which uses Rx variable must be placed inside
  Obx(() => Your widget which uses Rx)
  The widget will only update if and only if the Rx variable value changes.
  Other ways of making the variable Rx
  
  1 - The first is using Rx{Type}.
  ===============================
    initial value is recommended, but not mandatory
    final name = RxString('');
    final isLogged = RxBool(false);
    final count = RxInt(0);
    final balance = RxDouble(0.0);
    final items = RxList<String>([]);
    final myMap = RxMap<String, int>({});
    
  2- use Darts Generics, Rx<Type>
  ===============================
    final name = Rx<String>('');
    final isLogged = Rx<Bool>(false);
    final count = Rx<Int>(0);
    final balance = Rx<Double>(0.0);
    final number = Rx<Num>(0)
    final items = Rx<List<String>>([]);
    final myMap = Rx<Map<String, int>>({});
    // Custom classes - it can be any class, literally
    final user = Rx<User>();
  */

class StateManagementReactiveStateManagerObx extends StatelessWidget {
  var count = 0.obs;

  void increment() {
    count++;
  }

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
                  "Count value is $count",
                  style: TextStyle(fontSize: 25),
                )),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              child: const Text("Increment"),
              onPressed: () {
                increment();
              },
            ),
          ],
        ),
      ),
    );
  }
}
