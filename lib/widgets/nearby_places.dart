// import 'package:flutter/material.dart';

// //Build Individual Category Widget
// class NearbyPlaces extends StatefulWidget {
//   final String? category;
//   final String? location;
//   final Color? color;
//   final Function? onPressed;
//   //final String? image;
//   // final String?  title;

//   const NearbyPlaces({
//     Key? key,
//     this.category,
//     this.color,
//     this.onPressed,
//     this.location,
//     //this.image,
//   }) : super(key: key);

//   @override
//   State<NearbyPlaces> createState() => _NearbyPlacesState();
// }

// class _NearbyPlacesState extends State<NearbyPlaces> {
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {},
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 10.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               height: 100,
//               width: 150,
//               decoration: BoxDecoration(
//                 //image: Image(image: AssetImage(image)),
//                 color: widget.color,
//                 borderRadius: const BorderRadius.only(
//                   topLeft: Radius.circular(10.0),
//                   topRight: Radius.circular(10.0),
//                 ),
//               ),
//             ),
//             Container(
//               height: 30,
//               width: 150,
//               // padding: const EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                 borderRadius: const BorderRadius.only(
//                     bottomLeft: Radius.circular(10.0),
//                     bottomRight: Radius.circular(10.0)),
//                 //image: Image(image: AssetImage(image)),
//                 color: widget.color,
//               ),
//             ),
//             Column(
//               children: [
//                 Row(
//                   children: [
//                     Text("${widget.category}"),
//                   ],
//                 ),
//                 Text("${widget.location}"),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

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
  // final String?  title;

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
                //image: Image(image: AssetImage(image)),
                image: DecorationImage(
                  //image: const Image(image: AssetImage("assetName")),
                  image: AssetImage(image!),
                  //image: Image(image: AssetImage(widget.image!)),
                  // fit: BoxFit.fitWidth,
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
              // padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0)),
                //image: Image(image: AssetImage(image)),
                color: lightGrey,
              ),
              child: Align(
                alignment: Alignment.center,
                child: StarRating(
                  color: amber,
                  rating: 4,
                  //onRatingChanged: (rating) => setState(() => this.rating = rating),
                ),
              ),
              // child: SizedBox(
              //   height: 8,
              //   width: 8,
              //   child: RatingBar.builder(
              //     initialRating: 4,
              //     minRating: 1,
              //     direction: Axis.horizontal,
              //     // allowHalfRating: true,
              //     itemCount: 5,
              //     //itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              //     itemBuilder: (context, _) => Icon(
              //       Icons.star,
              //       size: 2.0,
              //       color: Colors.amber,
              //     ),
              //     onRatingUpdate: (rating) {
              //       print(rating);
              //     },
              //   ),
              // ),
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
