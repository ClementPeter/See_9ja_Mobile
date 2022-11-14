import 'package:flutter/material.dart';

typedef void RatingChangeCallback(double rating);

//Custom Widgets for setting preset Star rating on Tourist Attraction
class StarRating extends StatelessWidget {
  final int starCount;
  final double rating;
  final RatingChangeCallback? onRatingChanged;
  final Color? color;

  StarRating(
      {this.starCount = 4,
      this.rating = 2.0,
      this.onRatingChanged,
      this.color});

  Widget buildStar(BuildContext context, int index) {
    Icon icon;
    icon = Icon(
      Icons.star,
      color: Colors.amber,
      size: 15.0,
    );

    return InkResponse(
      onTap:
          onRatingChanged == null ? null : () => onRatingChanged!(index + 1.0),
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        starCount,
        (index) => buildStar(context, index),
      ),
    );
  }
}
