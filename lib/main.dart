import 'package:flutter/material.dart';
import 'package:see_9ja/screens/dashboard/dashboard.dart';
//import 'package:see_9ja_/screens/views/intro.dart';
import 'package:see_9ja/screens/views/splash.dart';
import 'package:see_9ja/styles/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'See_9ja',
      theme: ThemeData(accentColor: lightGreen),
      //home: SplashScreen(),
      home: Dashboard(),

      //initialRoute: Dashboard.id,
      // routes: {
      //   Splash.id: (context) => const Splash(),
      //   Intro.id: (context) => const Intro(),
      //   Dashboard.id: (context) => const Dashboard(),
      //   //  RegistrationScreen.id: (context) => RegistrationScreen(),
      //   //LoginScreen.id: (context) => LoginScreen(),
      // },
    );
  }
}
