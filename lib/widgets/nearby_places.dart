import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:see_9ja/constants.dart';
import 'package:see_9ja/widgets/star_rating.dart';

//Build Individual Near-By places Widget for the Dashboard
class NearbyPlaces extends StatelessWidget {
  final String? category;
  final String? location;
  final Color? color;
  final Function? onPressed;
  final String? image;

  const NearbyPlaces({
    Key? key,
    this.category,
    this.color,
    this.onPressed,
    this.location,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
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
                color: color,
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
                  bottomRight: Radius.circular(10.0),
                ),
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
                    Text("$category"),
                  ],
                ),
                Text("$location"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
