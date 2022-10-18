import 'package:get/get.dart';

class LifeCycleController extends GetxController {
  var count = 0;

  /// problem with auto increment the count variable
  /// it should be auto update after 2sec but
  /// it's not updating
  ///
  /// putting increment() method inside onInit() worked for once
  /// not updating continuously
  ///
  /// HAVE TO FIND A WAY TO UPDATE UI COUNT VARIABLE
  /// AUTO WHEN CONTROLLER IS ON MEMORY ---

  void increment() async {
    print("increment  j ");
    await Future<int>.delayed(const Duration(seconds: 2));
    count++;
    update();
  }

  void cleanUpTask() {
    print("Clean up task");
  }

  //Better Approach
  @override
  void onInit() {
    print("Init Called");
    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
