import 'package:flutter/material.dart';

//Build Individual Category Widget
class NearbyPlaces extends StatefulWidget {
  final String? category;
  final String? location;
  final Color? color;
  final Function? onPressed;
  //final String? image;
  // final String?  title;

  const NearbyPlaces({
    Key? key,
    this.category,
    this.color,
    this.onPressed,
    this.location,
    //this.image,
  });

  @override
  State<NearbyPlaces> createState() => _NearbyPlacesState();
}

class _NearbyPlacesState extends State<NearbyPlaces> {
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
                color: widget.color,
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
                color: widget.color,
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text("${widget.category}"),
                  ],
                ),
                Text("${widget.location}"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
