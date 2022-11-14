import 'package:flutter/material.dart';

enum ScreenNumber { first, second, third, fourth }

//Page View Child Widget
//Displaying PageView Children using Enums other than new screens

class ChildWidget extends StatelessWidget {
  final ScreenNumber number;
  final String description;
  final String subDescription;

  // ignore: use_key_in_widget_constructors
  ChildWidget({
    required this.number,
    required this.description,
    required this.subDescription,
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Flexible(
              child: SizedBox(
                height: 200,
                width: 200,
                child: Image.asset("assets/images/$file.png"),
              ),
            ),
            Column(
              children: [
                Text(
                  description,

                  style: const TextStyle(
                    color: Color(0XFF008B2C),
                    fontFamily: "Muli",
                    fontSize: 22.0,
                    letterSpacing: 0.5,
                  ),
                  // ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  subDescription,
                  style: const TextStyle(
                    fontFamily: "Muli",
                    fontSize: 16.0,
                    letterSpacing: 0.5,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
