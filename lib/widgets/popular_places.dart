import 'package:flutter/material.dart';
import 'package:see_9ja/constants.dart';
import 'package:see_9ja/widgets/star_rating.dart';

//Build Individual Popular Places Widget for the Dashboard Screen
class PopularPlaces extends StatelessWidget {
  final String? attraction;
  final String? location;
  final Color? color;
  final Function? onPressed;
  final String? image;

  const PopularPlaces({
    Key? key,
    this.attraction,
    this.location,
    this.color,
    this.onPressed,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image!),
                  fit: BoxFit.fill,
                ),
                color: color!,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
              ),
            ),
            Container(
              height: 30,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0)),
                color: lightGrey,
              ),
              child: Align(
                alignment: Alignment.center,
                child: StarRating(
                  color: amber,
                  rating: 4,
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text("$attraction"),
                  ],
                ),
                Text("$location"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
