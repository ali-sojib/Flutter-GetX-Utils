import 'package:flutter/material.dart';
import 'package:flutter_getx_utils/getx_bottom_sheet_perm_view.dart';
import 'package:flutter_getx_utils/getx_dialog_all_perm_view.dart';
import 'package:flutter_getx_utils/getx_internationalization_lan/massages.dart';
import 'package:flutter_getx_utils/getx_route_navigation_unNamed/getx_mian.dart';
import 'package:flutter_getx_utils/getx_snackebar_all_perm_view.dart';
import 'package:get/get.dart';

import 'GetX_service/getx_service_controller.dart';
import 'GetX_service/getx_service_main.dart';
import 'getx_dependency_injection/main_dependency_injeciton.dart';
import 'getx_internationalization_lan/main_internationalization_lan.dart';
import 'getx_reactive_s_m_GetX_ControllerType/getx_r_s_m_controller_type.dart';
import 'getx_reactive_s_m_GetxBuilder_ControllerType/getx_builder_main.dart';
import 'getx_reactive_s_m_GetxBuilder_Controller_Life_cycle/getx_builder_life_cycle_main.dart';
import 'getx_reactive_s_m_GetxBuilder_Controller_UniqueID/main_getx.dart';
import 'getx_route_navigation_Named/getx_home.dart';
import 'getx_route_navigation_Named/getx_mian_named.dart';
import 'getx_route_navigation_Named/getx_next_screen.dart';
import 'getx_state_m_reactive_state_manager_obx_predefind_data_types.dart';
import 'getx_state_m_reactive_state_manager_obx_undefind_data_types.dart';
import 'getx_state_m_rective_s_m_obx_proper_way/getx_s_m_r_main.dart';
import 'getx_workeres/main_workers.dart';

// void main() {
//   runApp(const MyApp());
// }
///17
void main() async{
  await initServices();
  runApp(const MyApp());
}
Future<void> initServices() async {
  print('starting services ...');
  await Get.putAsync<GetXServiceController>(() async => await GetXServiceController());
  print('All services started...');
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
      ///Named route navigaiton utils
      /*
      ///https://www.youtube.com/watch?v=ykGNGm7zf2Y&list=PLCaS22Sjc8YR32XmudgmVqs49t-eKKr9t&index=6
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
      ///7th
      // home: StateManagementReactiveStateManagerObxPredefinedDataTypes(),
      ///8th
      // home: StateManagementReactiveStateManagerObxUndefindDataTypes(),
      ///9th
      // home: IntroducingGextController(),
      ///10th
      // home: GetXControllerTypeMain(),
      /**
      11th
      only deference no need to put obs on variable
      instead of call every time update() when you need to update UI
      GetXBuilder will auto update full Ui
      **/
      // home: GetXBuilderControllerType(),
      /// 12th
      /// NOT WORKED !!!!!!!!!!!!!
      // home: GetBuilderLifeCycle(),
      ///13th
      // home: GetBuilderUniqueId(),
      ///14th
      // home: UnderstandingGetXWorkers(),
      ///15th
      // translations: Messages(), // your translations
      // locale: Locale('en', 'US'), // default locale // to get device locale Get.deviceLocale
      // fallbackLocale: Locale('en', 'US'), // fallback locale if wrong locale found
      // home: GetXInternationalizationLan(),
      ///16
      // home: GetXDependencyInjection(),
      ///17
      home: GetXServiceView()

    );
  }
}
