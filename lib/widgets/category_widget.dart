// import 'package:flutter/material.dart';

// //Build Individual Category Widget
// class CategoryWidget extends StatefulWidget {
//   final String? category;
//   final Color? color;
//   final Function? onPressed;
//  // final String? image;
//   // final String?  title;

//   const CategoryWidget({
//     Key? key,
//     this.category,
//     this.color,
//     this.onPressed,
//    // this.image,
//   });

//   @override
//   State<CategoryWidget> createState() => _CategoryWidgetState();
// }

// class _CategoryWidgetState extends State<CategoryWidget> {

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {},
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 10.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               height: 100,
//               width: 100,
//               decoration: BoxDecoration(
//                 //image: Image(image: AssetImage(image!)),
//                 // image: DecorationImage(
//                 //   //image: AssetImage("$image!"),
//                 //   fit: BoxFit.fitWidth,
//                 // ),
//                 color: widget.color,
//                 borderRadius: BorderRadius.circular(10),
//               ),
//             ),
//             Center(child: Text("${widget.category}"))
//           ],
//         ),
//       ),
//     );
//   }

// }

import 'package:flutter/material.dart';

//Build Individual Category Widget for the dashboard screen
class CategoryWidget extends StatelessWidget {
  final String? category;
  final Color? color;
  final Function? onPressed;
  final AssetImage? image;
  // final String?  title;

  const CategoryWidget({Key? key, 
   // Key? key,
    this.category,
    this.color,
    this.onPressed,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  // image: Image(image: AssetImage(image!)),
                  image: DecorationImage(
                    image: image!,
                    // fit: BoxFit.fitWidth,
                    fit: BoxFit.fill,
                  ),
                  color: color,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Center(child: Text("$category"))
          ],
        ),
      ),
    );
  }
}
