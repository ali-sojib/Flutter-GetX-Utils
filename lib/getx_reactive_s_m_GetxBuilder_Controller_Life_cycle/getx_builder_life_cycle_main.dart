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
