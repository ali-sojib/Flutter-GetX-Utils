import 'package:flutter/material.dart';
import 'package:flutter_getx/next_screen.dart';
import 'package:flutter_getx/unknown_route.dart';
import 'package:get/get.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetMaterialApp(
      title: "Navigation",
      initialRoute: "/",
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(name: '/', page: () => MyApp()),
        GetPage(name: '/home', page: () => Home()),
        GetPage(
            name: '/nextScreen',
            page: () => NextScreen(),
            // To control the transition route wise
            // If specified will override the default transition
            transition: Transition.leftToRight),
        // GetPage(
        //     name: '/nextScreen/:someValue',
        //     page: () => NextScreen(),
        //     // To control the transition route wise
        //     // If specified will override the default transition
        //     transition: Transition.leftToRight)
      ],
      //unknownRoute: GetPage(name: '/notfound', page: () => UnknownRoute()),
      home: Scaffold(
        appBar: AppBar(title: Text("Bottom Sheet")),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("Go to Home"),
              onPressed: () {
                Get.toNamed(
                  "/home",
                );
                // Go to home screen but no option to return to previous screen
                // Get.offNamed("/home");
                // Go to home screen and cancel all previous screens/routes
                //Get.offAllNamed("/home");
                // Dynamic URL link
                // Get.toNamed(
                //   "/home?channel=Ripples Code&content=Flutter GetX",
                // );
              },
            ),
          ],
        )),
      ),
    );
  }
}
