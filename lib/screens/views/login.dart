import 'package:flutter/material.dart';
//import 'package:auth_buttons/auth_buttons.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:see_9ja/screens/dashboard/dashboard.dart';
import 'package:see_9ja/screens/views/register.dart';
import 'package:see_9ja/styles/colors.dart';
import 'package:see_9ja/utils/router.dart';

// import 'dart:io';

//import 'package:box_ui/box_ui.dart';

class LoginScreen extends StatelessWidget {
  //const RegistrationScreen({ Key? key }) : super(key: key);
  //
  static String id = "Login_screen";

  LoginScreen({Key? key}) : super(key: key);
  //
  // final String title;
  // final String subtitle;
  // final String mainButtonTitle;
  // final Widget form;
  // final bool showTermsText;
  // final void Function() onMainButtonTapped;
  // final void Function() onCreateAccountTapped;
  // final void Function() onForgotPassword;
  // final void Function() onBackPressed;
  // final void Function() onSignInWithApple;
  // final void Function() onSignInWithGoogle;
  // final String validationMessage;
  // final bool busy;

  // const LoginScreen({
  //   Key key,
  //   this.title,
  //   this.subtitle,
  //   this.mainButtonTitle,
  //   this.form,
  //   this.onMainButtonTapped,
  //   this.onCreateAccountTapped,
  //   this.onForgotPassword,
  //   this.onBackPressed,
  //   this.onSignInWithApple,
  //   this.onSignInWithGoogle,
  //   this.validationMessage,
  //   this.showTermsText = false,
  //   this.busy = false,
  // }) : super(key: key);

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            IconButton(
              padding: EdgeInsets.zero,
              alignment: Alignment.centerLeft,
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              //onPressed: onBackPressed,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            const Text(
              "Welcome",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10.0),
            const Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                width: 400.0,
                child: Text(
                  'Enter your email and password',
                  style: TextStyle(
                    fontSize: 16.0,
                    //fontWeight: FontWeight.w400,
                  ),
                  // style: GoogleFonts.poppins(
                  //   textStyle: const TextStyle(
                  //       //color: Color(0XFFFCFAFF),
                  //       fontSize: 12.0,
                  //       fontWeight: FontWeight.w400),
                  // ),
                ),
              ),
            ),
            //verticalSpaceRegular,
            const SizedBox(height: 18.0),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                hintText: 'Email',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide(color: green),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  //borderSide:  BorderSide(
                ),
              ),
            ),

            //TextField(),
            const SizedBox(height: 18.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                hintText: 'Password',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide(color: lightGreen),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  //borderSide:  BorderSide(
                ),
              ),
            ),
            // TextField(
            //   decoration: InputDecoration(
            //     //border: OutlineInputBorder(),
            //     border: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(25.0),
            //       //borderSide:  BorderSide(                         ),
            //     ),
            //     //hintText: 'Enter a search term',
            //   ),
            // ),
            // //TextField(),
            //Form,
            const SizedBox(height: 18.0),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                child: const Text(
                  'Forgot Password?',
                ),
              ),
            ),
            const SizedBox(height: 40.0),

            GestureDetector(
              child: Container(
                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: green,
                  borderRadius: BorderRadius.circular(8),
                ),
                child:
                    //  busy
                    //     ? CircularProgressIndicator(
                    //         valueColor: AlwaysStoppedAnimation(Colors.white),
                    //       )
                    //     :
                    const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
              onTap: () {
                PageNavigator(ctx: context).nextPage(page: Dashboard());
              },
            ),
            //verticalSpaceRegular,
            const SizedBox(height: 18.0),

            GestureDetector(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don\'t have an account?'),
                  //horizontalSpaceTiny,
                  const SizedBox(width: 5.0),
                  Text(
                    'Create an account',
                    style: TextStyle(
                      //color: kcPrimaryColor,
                      color: lightGreen,
                    ),
                  )
                ],
              ),
              onTap: () {
                PageNavigator(ctx: context).nextPage(page: RegisterScreen());
              },
            ),
            //if (showTermsText)
            // BoxText.body(
            //   'By signing up you agree to our terms, conditions and privacy policy.',
            // ),
            // Text(
            //   'By signing up you agree to our terms, conditions and privacy policy.',
            // ),
            //verticalSpaceRegular,
            //const SizedBox(height: 18.0),

            // Row(
            //   children: const [
            //     Divider(
            //       height: 3.0,
            //     )
            //   ],
            // ),

            const SizedBox(height: 10.0),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: const [
            //     Divider(height: 10.0, thickness: 5.0),
            //     Text('or'),
            //     Divider(height: 3.0, thickness: 5.0),
            //   ],
            // ),
            const SizedBox(height: 18.0),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     // SvgPicture.asset("images/google.svg",
            //     //     semanticsLabel: 'Google Logo',),
            //   ],
            // ),

            //verticalSpaceRegular,

            // GoogleAuthButton(
            //   //onPressed: onSignInWithGoogle ?? () {},
            //   text: 'CONTINUE WITH GOOGLE',
            //   style: AuthButtonStyle(
            //     buttonColor: Color(0xff4285F4),
            //     iconSize: 24,
            //     iconBackground: Colors.white,
            //     buttonType: AuthButtonType.secondary,
            //     height: 50,
            //     textStyle: TextStyle(color: Colors.white),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
