import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'getbuilder_life_cycle_controller.dart';

class GetBuilderLifeCycle extends StatelessWidget {
  const GetBuilderLifeCycle({Key? key}) : super(key: key);

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
              // initState: (data)=>myController.increment(),
              //dispose: (_)=>myController.cleanUpTask(),

              builder: (controller) {
                return Text(
                  "GetBuilder life cycle \n The value is   ${controller.count}",
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
