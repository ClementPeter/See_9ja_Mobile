// import 'package:flutter/material.dart';

// //Build Individual Category Widget
// class PopularPlaces extends StatefulWidget {
//   final String? category;
//   final Color? color;
//   final Function? onPressed;
//   final String? image;
//   // final String?  title;

//   const PopularPlaces({
//     Key? key,
//     this.category,
//     this.color,
//     this.onPressed,
//     this.image,
//   });

//   @override
//   State<PopularPlaces> createState() => _PopularPlacesState();
// }

// class _PopularPlacesState extends State<PopularPlaces> {
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {},
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 10.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               //margin: const EdgeInsets.only(right: 20),
//               // height: 100,
//               // width: 150,
//               // // padding: const EdgeInsets.all(10),
//               // decoration: BoxDecoration(
//               //   //image: Image(image: AssetImage(image)),
//               //   color: widget.color,
//               //   borderRadius: const BorderRadius.only(
//               //     topLeft: Radius.circular(10.0),
//               //     topRight: Radius.circular(10.0),
//               //   ),
//               // ),
//               child:
//                     ClipRRect(
//               borderRadius: const BorderRadius.all(Radius.circular(20)),
//               child: Container(
//                 height: 100,
//                 width: 100,
//                 decoration: BoxDecoration(
//                   // image: Image(image: AssetImage(image!)),
//                   image: const DecorationImage(
//                     //image: const Image(image: AssetImage("assetName")),
//                     image: AssetImage(""),
//                     //image: Image(image: AssetImage(widget.image!)),
//                     // fit: BoxFit.fitWidth,
//                     fit: BoxFit.fill,
//                   ),
//                   color: widget.color!,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),
//             ),
//             ),
//             Container(
//               // margin: const EdgeInsets.only(right: 20),
//               height: 30,
//               width: 150,
//               // padding: const EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                 borderRadius: const BorderRadius.only(
//                     bottomLeft: Radius.circular(10.0),
//                     bottomRight: Radius.circular(10.0)),
//                 //image: Image(image: AssetImage(image)),
//                 color: widget.color,
//                 // borderRadius: BorderRadius.circular(20),
//               ),
//             ),
//             Column(
//               children: [
//                 Row(
//                   children: [
//                     Text("${widget.category}"),
//                   ],
//                 ),
//                 const Text("Abeokuta ,Ogun state"),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

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
  // final String?  title;

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
              //margin: const EdgeInsets.only(right: 20),
              // height: 100,
              // width: 150,
              // // padding: const EdgeInsets.all(10),
              // decoration: BoxDecoration(
              //   //image: Image(image: AssetImage(image)),
              //   color: widget.color,
              // borderRadius: const BorderRadius.only(
              //   topLeft: Radius.circular(10.0),
              //   topRight: Radius.circular(10.0),
              // ),
              // ),
              child: Container(
                height: 100,
                width: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    //image: const Image(image: AssetImage("assetName")),
                    image: AssetImage(image!),
                    //image: Image(image: AssetImage(widget.image!)),
                    // fit: BoxFit.fitWidth,
                    fit: BoxFit.fill,
                  ),
                  color: color!,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                  ),
                ),
              ),
            ),
            Container(
              // margin: const EdgeInsets.only(right: 20),
              height: 30,
              width: 150,
              // padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0)),
                //image: Image(image: AssetImage(image)),
                //color: color,
                color: lightGrey,
                // borderRadius: BorderRadius.circular(20),
              ),
              child: Align(
                alignment: Alignment.center,
                child: StarRating(
                  color: amber,
                  rating: 4,
                  //onRatingChanged: (rating) => setState(() => this.rating = rating),
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
