import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:get/get.dart';
import 'controller_internationalization.dart';

class GetXInternationalizationLan extends StatelessWidget {
  GetXInternationalizationLan({Key? key}) : super(key: key);

  ControllerInternationalization controllerInternationalization = Get.put(ControllerInternationalization());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Internationalization")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'hello'.tr,
              style: TextStyle(fontSize: 25, color: Colors.purple),
            ),
            ElevatedButton(
              child: Text('Hindi'.tr),
              onPressed: () {
                controllerInternationalization.changeLanguage('hi', 'IN');
              },
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              child: Text("Bangla"),
              onPressed: () {
                controllerInternationalization.changeLanguage('bd', 'BD');
              },
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              child: Text("French"),
              onPressed: () {
                controllerInternationalization.changeLanguage('fr', 'FR');
              },
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              child: Text("English"),
              onPressed: () {
                controllerInternationalization.changeLanguage('en', 'US');
              },
            ),
          ],
        ),
      ),
    );
  }
}
