import 'package:flutter/material.dart';

class GetXDependencyInjection extends StatelessWidget {
  const GetXDependencyInjection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // My Controller instance will be created even if it is not used
    // tag will be used to find the instance with tag name
    // Controller disposed when it is not used but if permanent is
    //true the instance will be alive throughout the app
    MyController myController = Get.put(MyController(), tag: "instance1", permanent: true);

    // Instance will be created when it is used
    //It is similar to "permanent", the difference is that the instance
    // is discarded when is not being used,
    // but when it's use is needed again, Get will recreate the instance
    //Get.lazyPut(() => MyController(),tag:"instance",fenix: false);

    // Get.putAsync<MyController>(() async => await MyController());

// Here permanent will be true by default and isSingleton is false
//    Get.Create<SomeClass>(() => SomeClass());
    //  Get.Create<LoginController>(() => LoginController());

    // TODO: implement build
    return GetMaterialApp(
      title: "Dependency Injection",
      home: Scaffold(
        appBar: AppBar(title: Text("Dependency Injection")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text("Click Me"),
                onPressed: () {
                  // Instance will be created
                  // Get.find<MyController>();
                  //Find instance with tag name
                  //Get.find<MyController>().incrementCounter();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
