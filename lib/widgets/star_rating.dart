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
      //color: Theme.of(context).buttonColor,
    );
    //if (index >= rating) {
    //   icon = Icon(
    //     Icons.star_border,
    //     size: 5.0,
    //     color: Theme.of(context).buttonColor,
    //   );
    // } else if (index > rating - 1 && index < rating) {
    //   icon = Icon(
    //     Icons.star_half,
    //     color: color ?? Theme.of(context).primaryColor,
    //   );
    // } else {
    //   icon = Icon(
    //     Icons.star,
    //     color: color ?? Theme.of(context).primaryColor,
    //   );
    // }
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
