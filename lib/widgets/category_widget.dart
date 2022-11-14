import 'package:flutter/material.dart';

//Build Individual Category Widget for the dashboard screen
class CategoryWidget extends StatelessWidget {
  final String? category;
  final Color? color;
  final Function? onPressed;
  final AssetImage? image;

  const CategoryWidget({
    Key? key,
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
                  image: DecorationImage(
                    image: image!,
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
