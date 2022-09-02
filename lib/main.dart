import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'getx_route_navigation_Named/getx_home.dart';
import 'getx_route_navigation_Named/getx_mian_named.dart';
import 'getx_route_navigation_Named/getx_next_screen.dart';
import 'st_mn_reactive_state_manager_obx.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX',
      // home: SnackBarHomePage(),
      // home: DialogHomePage(),
      // home: BottomSheetPage(),
      // home: UnNamedRouteNavigationMain(),
      /*
      Named route navigaiton utils
      */
      /*
        title: "Navigation",
        initialRoute: "/",
        defaultTransition: Transition.zoom,
        getPages: [
          GetPage(name: '/', page: () => NamedRouteNavigationMain()),
          GetPage(name: '/home', page: () => Home()),
          // GetPage(
          //     name: '/nextScreen',
          //     page: () => NextScreen(),
          //     // To control the transition route wise
          //     // If specified will override the default transition
          //     transition: Transition.leftToRight),
          GetPage(
              name: '/nextScreen/:someValue',
              page: () => NextScreen(),
              // To control the transition route wise
              // If specified will override the default transition
              transition: Transition.leftToRight)
        ],
        // unknownRoute: GetPage(name: '/notfound', page: () => UnknownRoute()),
      */
      // home: NamedRouteNavigationMain(),
      home: StateManagementReactiveStateManagerObx(),
    );
  }
}
