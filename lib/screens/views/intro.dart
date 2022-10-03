import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
//import 'package:see_9ja_/screens/views/login.dart';
import 'package:see_9ja/styles/colors.dart';
import 'package:see_9ja/screens/views/pageView.dart';
import 'package:see_9ja/utils/router.dart';
import 'package:see_9ja/screens/authentication/login.dart';
//lib\screens\authentication\login.dart

//Intro Screen shows a Page View of different toursit attraction and their brief
class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);
  //
  static String id = "Intro_screen";

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  //
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  //

  final PageController _pageController = PageController(initialPage: 0);
  int _currentIndex = 0;

  //
  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.transparent,
      backgroundColor: const Color(0XFFFCFAFF),
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: () {
              _pageController.animateToPage(
                2,
                duration: const Duration(milliseconds: 200),
                curve: Curves.linear,
              );
              _pageController.jumpToPage(_currentIndex = 3);
              print('Skip');
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0, right: 20.0),
              child: Container(
                //height: 3.0,
                width: 80.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "skip",
                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                      // ),
                    ),
                    SizedBox(width: 5.0),
                    Icon(Icons.arrow_forward_ios, size: 12.0),
                  ],
                ),
                decoration: BoxDecoration(
                  color: lightGreen,
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
          ), //
        ],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),

      body: Stack(
        children: [
          // Scaffold(
          //   backgroundColor: Colors.transparent,
          // ),
          PageView(
            controller: _pageController,
            onPageChanged: (page) {
              setState(() {
                _currentIndex = page;
              });
            },
            children: [
              ChildWidget(
                  // image: Image(image: image)
                  image: Image.asset('images/image1.png'),
                  number: ScreenNumber.first,
                  description: "Explore Nigeria With Us",
                  subDescription:
                      "Check out different attraction centres in \n Nigeria and decide where you’ll like to visit"),
              ChildWidget(
                image: Image.asset('images/image2.png'),
                number: ScreenNumber.second,
                description: "Discover Beautiful Places",
                subDescription:
                    "Go sight-seeing and discover different \n natural and man-made attraction sites",
              ),
              ChildWidget(
                image: Image.asset('images/image3.png'),
                number: ScreenNumber.third,
                description: "Google Maps Coordination ",
                subDescription:
                    "Get clear and concise directions with the \n Google Maps Coordination",
              ),
              ChildWidget(
                image: Image.asset('images/image4.png'),
                number: ScreenNumber.fourth,
                description: "Connect With Other Tourists",
                subDescription:
                    "Join the explorers community and share your \n experience with others",
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
                //top: 5.0,
                ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: DotsIndicator(
                    decorator: DotsDecorator(
                      activeColor: lightGreen,
                    ),
                    dotsCount: 4,
                    position: _currentIndex.toDouble(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20, left: 50, right: 50, bottom: 30.0),
                  child: Column(
                    children: [
                      // GestureDetector(
                      //   onTap: () {
                      //     print('Sign up');
                      //     print('GO TO REG SCREEN');
                      //     //Navigator.pushNamed(context, RegistrationScreen.id);
                      //   },
                      //   child: Container(
                      //     height: 44.0,
                      //     child: const Center(
                      //       child: Text(
                      //         "Register",
                      //         // style: GoogleFonts.poppins(
                      //         //   textStyle: TextStyle(
                      //         //       color: Color(0XFFFCFAFF),
                      //         //       fontSize: 16.0,
                      //         //       fontWeight: FontWeight.w500),
                      //         // ),
                      //       ),
                      //     ),
                      //     decoration: const BoxDecoration(
                      //       color: Colors.teal,
                      //       borderRadius: BorderRadius.all(
                      //         Radius.circular(15.0),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      const SizedBox(height: 20.0),
                      GestureDetector(
                        onTap: () {
                          //Navigator.pushNamed(context, LoginScreen.id);
                          print(' Login');
                          PageNavigator(ctx: context).nextPage(
                            page: const LoginPage(),
                          );
                        },
                        child: Container(
                          height: 44.0,
                          child: Center(
                            child: Text(
                              _currentIndex == 3 ? "Get Started" : "Next",
                              style: TextStyle(color: white, fontSize: 18),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: green,
                            //color: status == false ? primaryColor : grey,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

