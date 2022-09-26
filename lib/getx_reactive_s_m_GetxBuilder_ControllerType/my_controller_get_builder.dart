import 'package:get/get.dart';

class MyControllerGetXBuilder extends GetxController {
  var count = 0;
  void increment() {
    count++;
    update(); // Will update the count variable on UI which uses it
  }
}
