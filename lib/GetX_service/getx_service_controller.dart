import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

//This class is like a GetxController.
// It shares the same lifecycle ( onInit(), onReady(), onClose()).
//It just notifies GetX Dependency Injection system,
// that this subclass can not be removed from memory.
class GetXServiceController extends GetxService {

  Future<void> incrementCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int counter = (prefs.getInt('counter') ?? 0) + 1;
    print('Pressed $counter times.');
    await prefs.setInt('counter', counter);
  }
}