import 'package:flutter/material.dart';

//Build Individual Category Widget
class PopularPlaces extends StatefulWidget {
  final String? category;
  final Color? color;
  final Function? onPressed;
  final String? image;
  // final String?  title;

  const PopularPlaces({
    Key? key,
    this.category,
    this.color,
    this.onPressed,
    this.image,
  });

  @override
  State<PopularPlaces> createState() => _PopularPlacesState();
}

class _PopularPlacesState extends State<PopularPlaces> {
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
              height: 100,
              width: 150,
              // padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  //image: Image(image: AssetImage(image)),
                  color: widget.color,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0))),
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
                color: widget.color,
                // borderRadius: BorderRadius.circular(20),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text("${widget.category}"),
                  ],
                ),
                const Text("Abeokuta ,Ogun state"),
              ],
            ),
      
          ],
        ),
      ),
    );
  }
}
