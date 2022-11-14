import 'package:flutter/material.dart';
import 'package:see_9ja/screens/intro/intro.dart';
import 'package:see_9ja/utils/router.dart';

//App Splash Screeen that displays App Name and Logo
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetointro();
  }

  @override
  //Splash Screen
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0XFFFCFAFF),
          ),
          child: Center(
            child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/see9ja.png',
                    width: 250, height: 250,),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //Navigate to Intro Screen PageView
  void _navigatetointro() async {
    await Future.delayed(const Duration(milliseconds: 5000), () {});
    PageNavigator(ctx: context).nextPageOnly(page: const Intro());

    // Navigator.pushReplacement(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => const Intro(),
    //   ),
    // );
  }
}
