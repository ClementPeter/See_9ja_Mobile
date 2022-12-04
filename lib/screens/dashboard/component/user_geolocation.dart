import 'package:flutter/material.dart';
import 'package:see_9ja/constants.dart';
import 'package:see_9ja/core/location.dart';

class UserGeolocation extends StatefulWidget {
  const UserGeolocation({
    Key? key,
  }) : super(key: key);

  @override
  State<UserGeolocation> createState() => _UserGeolocationState();
}

class _UserGeolocationState extends State<UserGeolocation> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    setState(() {
      is_location_refresh = true;
    });
  }

  bool? is_location_refresh;

  @override
  Widget build(BuildContext context) {
    return is_location_refresh == true
        ? InkWell(
            onTap: (() {
              setState(() {
                is_location_refresh = false;
              });
            }),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.2,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(
                  image: AssetImage(
                    "assets/images/abuja.jpg",
                  ),
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Row(
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          'Abuja City Gate',
                          style: TextStyle(
                            color: white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15),
                  // image: const DecorationImage(
                  //   image: AssetImage(
                  //     "assets/images/abuja.jpg",
                  //   ),
                  //   fit: BoxFit.fitWidth,
                  // ),
                ),
                child: const Center(
                  child: Text(
                    "Tap to update with a landmark in your current locations",
                  ),
                ),
              ),
            ],
          );
  }
}




// is_location_refresh
//         ? InkWell(
//           child: Container(
//               width: MediaQuery.of(context).size.width,
//               height: MediaQuery.of(context).size.height * 0.2,
//               decoration: BoxDecoration(
//                 color: Colors.grey,
//                 borderRadius: BorderRadius.circular(15),
//                 image: const DecorationImage(
//                   image: AssetImage(
//                     "assets/images/abuja.jpg",
//                   ),
//                   fit: BoxFit.fitWidth,
//                 ),
//               ),
//               child: Stack(
//                 children: [
//                   Positioned(
//                     bottom: 10,
//                     left: 10,
//                     child: Row(
//                       children: [
//                         const Icon(
//                           Icons.location_on_outlined,
//                           color: Colors.white,
//                         ),
//                         Text(
//                           'Abuja City Gate',
//                           style: TextStyle(
//                             color: white,
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//         )
//         : Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 width: MediaQuery.of(context).size.width,
//                 height: MediaQuery.of(context).size.height * 0.2,
//                 decoration: BoxDecoration(
//                   color: Colors.grey,
//                   borderRadius: BorderRadius.circular(15),
//                   // image: const DecorationImage(
//                   //   image: AssetImage(
//                   //     "assets/images/abuja.jpg",
//                   //   ),
//                   //   fit: BoxFit.fitWidth,
//                   // ),
//                 ),
//                 child: const Center(
//                   child: Text(
//                     "Tap to update with a landmark in your current locations",
//                   ),
//                 ),
//               ),
//             ],
//           );