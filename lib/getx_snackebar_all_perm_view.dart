import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackBarHomePage extends StatefulWidget {
  const SnackBarHomePage({Key? key}) : super(key: key);

  @override
  State<SnackBarHomePage> createState() => _SnackBarHomePageState();
}

///https://www.youtube.com/watch?v=ou4iTI3YP_A&list=PLCaS22Sjc8YR32XmudgmVqs49t-eKKr9t&index=2

class _SnackBarHomePageState extends State<SnackBarHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.snackbar(
                    "Snackbar Title",
                    "This will be snackbar message",
                    titleText: Text("Another Title"),
                    messageText: Text("Another Message"),
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.white70,
                    borderRadius: 30.0,
                    margin: EdgeInsets.all(30.0),
                    maxWidth: double.infinity,
                    backgroundGradient: const LinearGradient(colors: [Colors.red, Colors.green]),
                    borderColor: Colors.yellow,
                    borderWidth: 4,
                    boxShadows: [
                      const BoxShadow(color: Colors.black, offset: Offset(30, 50), spreadRadius: 20.0, blurRadius: 8.0),
                    ],
                    isDismissible: true,
                    dismissDirection: DismissDirection.horizontal,
                    forwardAnimationCurve: Curves.bounceInOut,
                    duration: Duration(milliseconds: 8000),
                    icon: Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                    shouldIconPulse: true,
                    leftBarIndicatorColor: Colors.red,
                    mainButton: TextButton(
                      onPressed: () {},
                      child: Text("Retry"),
                    ),
                    onTap: (val) {
                      print("Snackbar Clicked");
                    },
                    overlayBlur: 5.0,
                    overlayColor: Colors.black,
                    padding: EdgeInsets.all(50),
                    showProgressIndicator: true,
                    progressIndicatorBackgroundColor: Colors.deepOrange,
                    progressIndicatorValueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                    reverseAnimationCurve: Curves.bounceInOut,
                    snackbarStatus: (val) {
                      print(val);
                    },
                    // This overrides the entire UI elements:
                    // userInputForm: Form(
                    //   child: Row(
                    //     children: [
                    //       Expanded(child: TextField(
                    //       ))
                    //     ],
                    //   ),
                    // )
                  );
                },
                child: const Text('Show Snackbar')),
          ],
        ),
      ),
    );
  }
}
