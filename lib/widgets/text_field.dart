import 'package:flutter/material.dart';
import 'package:see_9ja/constants.dart';

//Custom Textfield that builds a textfield with essential features
Widget customTextField({
  String? title,
  String? hint,
  TextEditingController? controller,
  int maxLines = 1,
}) {
  return Column(
    children: [
      //Textfield Title section
      Container(
        alignment: Alignment.centerLeft,
        child: Text(
          title!,
          style: TextStyle(fontWeight: FontWeight.bold, color: black),
        ),
      ),
      //TextField Section
      Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: lightGrey,
        ),
        child: TextFormField(
          controller: controller,
          maxLines: maxLines,
          decoration: InputDecoration(hintText: hint, border: InputBorder.none),
        ),
      ),
    ],
  );
}
