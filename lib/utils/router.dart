
// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

// //Utils folders are used to store utility functions that are used in multiple places.

// //PageNavigator is a class used to navigate to different pages in the app.

// class PageNavigator {
//   //PageNavigator variable and  Constructor
//   BuildContext ctx;

//   PageNavigator({required this.ctx});

//   //Navigate to next page using Cupertino page Route
//   Future nextPage({Widget? page}) {
//     return Navigator.push(ctx, CupertinoPageRoute(builder: (context) => page!));
//   }

//   //Navigate to the next page and remove the previous from the stack
//   void nextPageOnly({Widget? page}) {
//     Navigator.pushAndRemoveUntil(
//         ctx, MaterialPageRoute(builder: (context) => page!), (route) => false);
//   }
// }










import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageNavigator {
  BuildContext ctx;

  PageNavigator({required this.ctx});

  //Does not remove the previous page after navigation
  Future nextPage({Widget? page}) {
    return Navigator.push(
        ctx, CupertinoPageRoute(builder: ((context) => page!)));
  }

  // Removes the next/previous page after navigation
  void nextPageOnly({Widget? page}) {
    Navigator.pushAndRemoveUntil(
        ctx, MaterialPageRoute(builder: (context) => page!), (route) => false);
  }
}


