import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'getx_home.dart';
import 'getx_next_screen.dart';

class NamedRouteNavigationMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
        /* GetMaterialApp(
      title: "Navigation",
      initialRoute: "/",
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(name: '/', page: () => NamedRouteNavigationMain()),
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
      home: */
        Scaffold(
      appBar: AppBar(title: Text("Named Route Navigation")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            child: const Text("Go to Home"),
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
              //   "/home?channel=Ali's Codes for &content=Flutter GetX later usage ",
              // );
            },
          ),
        ],
      )),
    );
    // );
  }
}
