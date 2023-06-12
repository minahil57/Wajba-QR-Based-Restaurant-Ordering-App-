import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wajba/main_splash_drawer/splash_screen.dart';
import 'package:wajba/user_authentication_module/sign_up.dart';




Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Login Page",
      home:  const MyHomePage(),
      theme: ThemeData(
        colorScheme: defaultColorScheme,
        textTheme: GoogleFonts.nunitoSansTextTheme(
          Theme.of(context).textTheme,
        ),
        // textTheme: GoogleFonts.nunitoSansTextTheme(Theme.of(context).textTheme),
      ),
    );
  }

}

class AuthenticationWrapper extends StatelessWidget{
  const AuthenticationWrapper({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const RegisterPage();
  }

}





ColorScheme defaultColorScheme = const ColorScheme(
  primary: Color(0xfff08100),
  secondary: Color(0xffffffff),
  surface: Color(0xff030000),
  background: Color(0xffffffff),
  error: Color(0xffe70a0a),
  onPrimary: Color(0xfff7ece6),
  onSecondary: Color(0xfff3a87c),
  onSurface: Color(0xfff37121),
  onError: Color(0xffe70a0a),
  onBackground: Color(0xfff3a87c),

  brightness: Brightness.light,
);
