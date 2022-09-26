import 'package:flutter_getx_utils/getx_state_m_rective_s_m_obx_proper_way/student.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  // var student = Student();
  //
  // void convertToUpperCase() {
  //   student.name.value = student.name.value.toUpperCase();
  // }
  // void convertToLowerCase() {
  //   student.name.value = student.name.value.toLowerCase();
  // }

  var student = Student(name: "Tom ali nine", age: 25).obs;
  void convertUpperCase() {
    student.update((student) {
      student!.name = student.name.toString().toUpperCase();
    });
  }

  void convertLowerCase() {
    student.update((student) {
      student!.name = student.name.toString().toLowerCase();
    });
  }
}
