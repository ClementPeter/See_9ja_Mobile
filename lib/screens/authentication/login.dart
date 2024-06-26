import 'package:flutter/material.dart';

import 'package:see_9ja/screens/dashboard/dashboard.dart';
import 'package:see_9ja/screens/authentication/register.dart';
import 'package:see_9ja/constants.dart';
import 'package:see_9ja/utils/router.dart';
import 'package:see_9ja/widgets/social_card.dart';

class LoginScreen extends StatelessWidget {
  static String id = "Login_screen";

  LoginScreen({Key? key}) : super(key: key);

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const SizedBox(height: 30.0),
            const Text(
              "Welcome, Kindly login",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 30.0),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Enter your email and password',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
            const SizedBox(height: 18.0),
            TextField(
              controller: _emailController,
              cursorColor: green,
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
                ),
              ),
            ),
            const SizedBox(height: 18.0),
            TextField(
              controller: _passwordController,
                  cursorColor: green,
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
                ),
              ),
            ),
            const SizedBox(height: 18.0),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                child: const Text(
                  'Forgot Password ?',
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
                child: const Text(
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
            const SizedBox(height: 18.0),
            GestureDetector(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don\'t have an account?'),
                  const SizedBox(width: 5.0),
                  Text(
                    'Create an account',
                    style: TextStyle(
                      color: lightGreen,
                    ),
                  )
                ],
              ),
              onTap: () {
                PageNavigator(ctx: context).nextPage(page: RegisterScreen());
              },
            ),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocalCard(
                  icon: "assets/icons/google-icon.svg",
                  press: () {},
                ),
                SocalCard(
                  icon: "assets/icons/facebook-2.svg",
                  press: () {},
                ),
                SocalCard(
                  icon: "assets/icons/twitter.svg",
                  press: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
