import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'getx_reactive_s_m_GetX_ControllerType/getx_r_s_m_controller_type.dart';
import 'getx_reactive_s_m_GetxBuilder_ControllerType/getx_builder_main.dart';
import 'getx_reactive_s_m_GetxBuilder_Controller_Life_cycle/getx_builder_life_cycle_main.dart';
import 'getx_route_navigation_Named/getx_home.dart';
import 'getx_route_navigation_Named/getx_mian_named.dart';
import 'getx_route_navigation_Named/getx_next_screen.dart';
import 'getx_state_m_reactive_state_manager_obx_predefind_data_types.dart';
import 'getx_state_m_reactive_state_manager_obx_undefind_data_types.dart';
import 'getx_state_m_rective_s_m_obx_proper_way/getx_s_m_r_main.dart';

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
      //7th
      // home: StateManagementReactiveStateManagerObxPredefinedDataTypes(),
      //8th
      // home: StateManagementReactiveStateManagerObxUndefindDataTypes(),
      //9th
      // home: IntroducingGextController(),
      //10th
      // home: GetXControllerTypeMain(),
      /*11th
      only deference no need to put obs on variable
      insted of call every time update() when you need to update UI
      GetXBuilder will auto update full Ui
      */
      // home: GetXBuilderControllerType(),
      //12th
      home:  GetBuilderLifeCycle(),
    );
  }
}
