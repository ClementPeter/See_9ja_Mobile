//import 'dart:io';
import 'package:flutter/material.dart';
//import 'package:auth_buttons/auth_buttons.dart';
//import 'package:google_fonts/google_fonts.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:see_9ja/constants.dart';
import 'package:see_9ja/screens/dashboard/dashboard.dart';

import 'package:see_9ja/utils/router.dart';

//Register user UI

class RegisterScreen extends StatelessWidget {
  static String id = "Register_screen";

  RegisterScreen({Key? key}) : super(key: key);

  // final bool busy;

  // const RegisterScreen({
  //   Key key,

  //   this.busy = false,
  // }) : super(key: key);

  //controllers
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            //Actually there is really no need for a back button nowadays/....andriod UI would do its job
            // IconButton(
            //   padding: EdgeInsets.zero,
            //   alignment: Alignment.centerLeft,
            //   icon: const Icon(
            //     Icons.arrow_back_ios,
            //     color: Colors.black,
            //   ),
            //   //onPressed: onBackPressed,
            //   onPressed: () {
            //     Navigator.pop(context);
            //   },
            // ),
            const Text(
              "Register",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w500,
              ),
              // style: GoogleFonts.poppins(
              //   textStyle: const TextStyle(
              //     //color: Color(0XFFFCFAFF),
              //     fontSize: 32.0,
              //     fontWeight: FontWeight.w500,
              //   ),
              // ),
            ),
            const SizedBox(height: 30.0),
            const Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                width: 400.0,
                child: Text(
                  'Kindly fill in your details',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                  // style: GoogleFonts.poppins(
                  //   textStyle: const TextStyle(
                  //     //color: Color(0XFFFCFAFF),
                  //     fontSize: 12.0,
                  //     fontWeight: FontWeight.w400,
                  //   ),
                  // ),
                ),
              ),
            ),
            //USERNAME SECTION
            const SizedBox(height: 18.0),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                hintText: 'Username',
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
                ),
              ),
            ),
            //EMAIL SECTION
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
                ),
              ),
            ),
            const SizedBox(height: 18.0),
            //PASSWORD SECTION
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
                ),
              ),
            ),
            const SizedBox(height: 80.0),
            //Register Button
            GestureDetector(
              onTap: () {
                PageNavigator(ctx: context).nextPage(page: Dashboard());
              },
              child: Container(
                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: green,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 18.0),
          ],
        ),
      ),
    );
  }
}
