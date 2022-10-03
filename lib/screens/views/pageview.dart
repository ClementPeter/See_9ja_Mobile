
// ignore_for_file: file_names
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

enum ScreenNumber { first, second, third, fourth }

//Page View Child Widget
//Displaying PageView Children using Enums other than new screens

class ChildWidget extends StatelessWidget {
  final ScreenNumber number;
  final String description;
  final String subDescription;
  Image image;

  // ignore: use_key_in_widget_constructors
  ChildWidget({
    required this.number,
    required this.description,
    required this.subDescription,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    String file = "";
    if (number == ScreenNumber.first) {
      file = "image1";
    } else if (number == ScreenNumber.second) {
      file = "image2";
    } else if (number == ScreenNumber.third) {
      file = "image3";
    } else {
      file = "image4";
    }

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 40.0, left: 8.0, right: 8.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 40.0),
            Flexible(
              child: SizedBox(
                height: 290,
                width: 290,
                child: Image.asset("images/$file.png"),
              ),
            ),
            Text(
              description,
              // style: GoogleFonts.poppins(
              style: const TextStyle(
                color: Color(0XFF008B2C),
                fontSize: 24.0,
                letterSpacing: .5,
              ),
              // ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20.0),
            Text(
              subDescription,
              style: const TextStyle(
                fontSize: 18.0,
                letterSpacing: .5,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

