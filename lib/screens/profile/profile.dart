import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:see_9ja/constants.dart';
import 'package:see_9ja/screens/dashboard/drawer.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        //backgroundColor: Colors.transparent,
        backgroundColor: lightGreen,
        title: const Text(
          "User Profile",
          // style: TextStyle(color: lightGreen),
        ),
        centerTitle: true,
        //leading: drawer(context),
      ),
      // appBar: AppBar(
      //   elevation: 0,
      //   title: Text(
      //     "Profile",
      //     style: TextStyle(color: lightGreen),
      //   ),
      //   centerTitle: true,
      //   backgroundColor: Colors.transparent,
      //   leading: Builder(
      //     builder: (BuildContext context) {
      //       return IconButton(
      //         icon: Icon(
      //           Icons.menu,
      //           color: lightGreen, // Change Custom Drawer Icon Color
      //         ),
      //        /// onPressed:
      //           //Scaffold.of(context);
      //         },
      //         tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      //       );
      //     },
      //   ),
      // ),
      body: Container(),
    );
  }
}
