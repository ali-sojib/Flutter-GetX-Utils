import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'controller_dependency_injection.dart';


class GetXDependencyInjection extends StatelessWidget {
  const GetXDependencyInjection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // My Controller instance will be created even if it is not used
    // tag will be used to find the instance with tag name
    // Controller disposed when it is not used but if permanent is
    //true the instance will be alive throughout the app
    // ControllerDependencyInjection myController = Get.put(ControllerDependencyInjection(), tag: "instance1", permanent: true);

    // Instance will be created when it is used
    //It is similar to "permanent", the difference is that the instance
    // is discarded when is not being used,
    // but when it's use is needed again, Get will recreate the instance
    // Get.lazyPut(() => ControllerDependencyInjection(),tag:"instance",fenix: false);

    Get.putAsync<ControllerDependencyInjection>(() async => await ControllerDependencyInjection());

// Here permanent will be true by default and isSingleton is false
//    Get.Create<SomeClass>(() => SomeClass());
    //  Get.Create<LoginController>(() => LoginController());

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Dependency Injection")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Click Me"),
              onPressed: () {
                // Instance will be created with tag name
                // Get.find<ControllerDependencyInjection>(tag: 'instance1');
                // Instance will be created
                // Get.find<ControllerDependencyInjection>();
                //Find instance with tag name
                Get.find<ControllerDependencyInjection>().incrementCounter();
              },
            ),
          ],
        ),
      ),
    );
  }
}
