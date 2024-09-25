import 'package:flutter/material.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:saphir/pages/login.dart';



class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.gif(
          gifPath: 'assets/gif/gifsaphir.gif',
          gifWidth: MediaQuery.of(context).size.height * 100,
          gifHeight: MediaQuery.of(context).size.width * 100,
          nextScreen: const Login(),
          duration: const Duration(milliseconds: 3515),
          onInit: () async {
            debugPrint("onInit");
          },
          onEnd: () async {
            debugPrint("onEnd 1");
          },
        );;
  }
}