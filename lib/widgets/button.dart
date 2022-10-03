import 'package:flutter/material.dart';
import 'package:see_9ja/styles/colors.dart';
//import 'package:todo_provider_rest_api/styles/colors.dart';

//Custom Button for login and register with named parameters that returns a Gesture Detector
//tap : Navigate to next page
//status : checks the status of button -- status reacts based on the isLoading Value 
Widget customButton({
  VoidCallback? tap,
  bool status = false,
  String text = 'Save',
  BuildContext? context,
}) {
  return GestureDetector(
    onTap: status == true ? null : tap,
    child: Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      height: 48,
      width: MediaQuery.of(context!).size.width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: status == false ? primaryColor : grey,
        borderRadius: BorderRadius.circular(8),
      ),
      child:Text(
        status == false ? text : "Please wait...",
        style: TextStyle(color: white, fontSize: 18),
      )
    ),
  );
}
