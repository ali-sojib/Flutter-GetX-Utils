import 'package:flutter/material.dart';
import 'package:flutter_getx_utils/getx_dialog_all_perm_view.dart';
import 'package:get/get.dart';

import 'getx_bottom_sheet_perm_view.dart';
import 'getx_route_navigation/getx_mian.dart';
import 'getx_snackebar_all_perm_view.dart';

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
        home: RouteNavigationMain());
  }
}
