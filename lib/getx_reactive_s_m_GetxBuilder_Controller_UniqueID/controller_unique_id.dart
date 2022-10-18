import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ControllerUniqueIdController extends GetxController {
  var count = 0;

  void increment() {
    count++;
    update(['textId']);
  }
}
