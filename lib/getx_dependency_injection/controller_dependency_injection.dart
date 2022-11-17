import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ControllerDependencyInjection extends GetxController{
  void incrementCounter() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    int counter = (preferences.getInt('counter')??0)+1;
    print('Pressed $counter times');
    await preferences.setInt('counter', counter);
  }
}