import 'package:flutter/material.dart';
import 'package:see_9ja/screens/intro/splash.dart';
import 'package:see_9ja/theme.dart';

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
      theme: theme(),
      home: const SplashScreen(),
    );
  }
}




