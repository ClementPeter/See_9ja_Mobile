import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Utils folders are used to store utility functions that are used in multiple places.

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
