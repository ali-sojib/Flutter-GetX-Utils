import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'getbuilder_life_cycle_controller.dart';

class GetBuilderLifeCycle extends StatelessWidget {
  LifeCycleController controller = Get.put(LifeCycleController());

  /// NOT WORKED !!!!!!!!!!!!!
  /// auto increment count varibale form controller
  ///

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('State Management')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // GetBuilder<LifeCycleController>(
            //   // init: MyControllerGetXBuilder(),
            //   builder: (controller) {
            //     return Text(
            //       "life cycle \n The value is  ${controller.count}",
            //       style: const TextStyle(fontSize: 25),
            //     );
            //   },
            // ),
            // const SizedBox(
            //   height: 16,
            // ),
            // ElevatedButton(
            //   child: const Text("Increment"),
            //   onPressed: () {
            //     controller.increment();
            //     // If instance of controller not created at top
            //     // Get.find<MyControllerGetXBuilder>().increment();
            //   },
            // ),
            GetBuilder<LifeCycleController>(
              // initState: (data) => controller.increment(),
              // dispose: (_) => controller.cleanUpTask(),
              builder: (controller) {
                return Text(
                  "GetBuilder life cycle \n The value is   "
                  "${controller.count}",
                  style: TextStyle(fontSize: 25),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
