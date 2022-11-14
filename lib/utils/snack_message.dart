import 'package:flutter/material.dart';
import 'package:see_9ja/constants.dart';

//Display snackbar / toast message on the app screen
void showMessage({String? message, BuildContext? context}) {
  ScaffoldMessenger.of(context!).showSnackBar(
    SnackBar(
      content: Text(
        message!,
        style: TextStyle(color: white),
      ),
      backgroundColor: primaryColor,
    ),
  );
}
