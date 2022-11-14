import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Muli",
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
           colorScheme: ColorScheme.fromSwatch(
          accentColor: lightGreen, 
        ),
 
    visualDensity: VisualDensity.adaptivePlatformDensity,
    
  );
}


TextTheme textTheme() {
  return const TextTheme(
    //bodyText1: TextStyle(color: kTextColor),
    //bodyText2: TextStyle(color: kTextColor),
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    color: Colors.white,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.black),
    systemOverlayStyle: SystemUiOverlayStyle.dark,
    // toolbarTextStyle: const TextTheme(
    //   headline6: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
    // ).bodyText2,
    // titleTextStyle: TextTheme(
    //   headline6: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
    // ).headline6,
  );
}