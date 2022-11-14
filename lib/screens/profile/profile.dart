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
        backgroundColor: lightGreen,
        title: const Text(
          "User Profile",
        ),
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}
