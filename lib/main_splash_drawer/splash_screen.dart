import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:wajba/user_authentication_module/sign_in.dart';
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'assets/images/logo/wajba-logo-color-orange.png',
      nextScreen: const LoginPage(title: 'login'),
      splashIconSize: 300,
      splashTransition: SplashTransition.sizeTransition,
        backgroundColor: Colors.white,
    );
  }
}