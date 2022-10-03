import 'package:flutter/material.dart';
//import 'package:auth_buttons/auth_buttons.dart';
//import 'package:google_fonts/google_fonts.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:see_9ja/styles/colors.dart';

// import 'dart:io';

//import 'package:box_ui/box_ui.dart';

class RegisterScreen extends StatelessWidget {
  //const RegistrationScreen({ Key? key }) : super(key: key);
  //
  static String id = "Register_screen";

  RegisterScreen({Key? key}) : super(key: key);
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

  // const RegisterScreen({
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

  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          // physics: ScrollPhysics.,
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
              "Register",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w500,
              ),
              //style: TextStyle(fontSize: 34),
              // style: GoogleFonts.poppins(
              //   textStyle: const TextStyle(
              //     //color: Color(0XFFFCFAFF),
              //     fontSize: 32.0,
              //     fontWeight: FontWeight.w500,
              //   ),
              // ),
            ),
            const SizedBox(height: 10.0),

            const Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                //width: screenWidthPercentage(context, percentage: 0.7),
                width: 400.0,
                // child: BoxText.body(
                //   subtitle!,
                //   color: Colors.grey.shade400,
                // ),
                child: Text(
                  'Kindly fill in your details',
                  style: TextStyle(
                    fontSize: 15.0,
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
              controller: _nameController,
              decoration: InputDecoration(
                hintText: 'Name',
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
              controller: _emailController,
              decoration: InputDecoration(
                hintText: 'Email',
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
            //form,
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
                  borderSide: BorderSide(color: green),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  //borderSide:  BorderSide(
                ),
              ),
            ),
            const SizedBox(height: 80.0),
            // Align(
            //   alignment: Alignment.centerRight,
            //   child: GestureDetector(
            //     //onTap: onForgotPassword,
            //     // child: BoxText.body(
            //     //   'Forget Password?',
            //     // ),),
            //     child: const Text(
            //       'Forgot Password?',
            //     ),
            //   ),
            // ),
            //const SizedBox(height: 18.0),
            //verticalSpaceRegular,
            //if (validationMessage != null)
            // BoxText.body(
            //   validationMessage!,
            //   color: Colors.red,
            // ),
            // const Text('WTF is hereeee'
            //     //validationMessage,
            //     //color: Colors.red,
            //     ),
            //if (validationMessage != null) verticalSpaceRegular,
            GestureDetector(
              //onTap: onMainButtonTapped,
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
                  'Register',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    letterSpacing: 3.0,
                  ),
                ),
              ),
            ),
            //verticalSpaceRegular,
            const SizedBox(height: 18.0),
            //if (onCreateAccountTapped != null)
            // GestureDetector(
            //   //onTap: onCreateAccountTapped,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: const [
            //       Text('Don\'t have an account?'),
            //       //horizontalSpaceTiny,
            //       SizedBox(width: 5.0),
            //       Text(
            //         'Create an account',
            //         style: TextStyle(
            //           //color: kcPrimaryColor,
            //           color: Color(0xff22A45D),
            //         ),
            //       )
            //     ],
            //   ),
            // ),
            //if (showTermsText)
            // BoxText.body(
            //   'By signing up you agree to our terms, conditions and privacy policy.',
            // ),
            // Text(
            //   'By signing up you agree to our terms, conditions and privacy policy.',
            // // ),
            // //verticalSpaceRegular,
            // const SizedBox(height: 18.0),
            // // Align(
            // //   alignment: Alignment.center,
            // //   child: Text(
            // //     'Or',
            // //   ),
            // // ),
            // //verticalSpaceRegular,
            // const SizedBox(height: 18.0),
            // Row(
            //   children: const [
            //     Divider(
            //       height: 3.0,
            //     )
            //   ],
            // ),

            // const SizedBox(height: 8.0),
            // // Row(
            // //   mainAxisAlignment: MainAxisAlignment.center,
            // //   children: const [
            // //     Divider(height: 3.0, thickness: 5.0),
            // //     Text('or'),
            // //     Divider(height: 3.0, thickness: 5.0),
            // //   ],
            // // ),
            // // const SizedBox(height: 18.0),
            // // // Row(
            // //   mainAxisAlignment: MainAxisAlignment.center,
            // //   children: [
            // //     SvgPicture.asset("images/google.svg",
            //         semanticsLabel: 'Google Logo'),
            //   ],
            // ),

            //const SizedBox(height: 18.0),
          ],
        ),
      ),
    );
  }
}
