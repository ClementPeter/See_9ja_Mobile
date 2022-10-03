
import 'package:flutter/material.dart';
import 'package:see_9ja/screens/dashboard/dashboard.dart';
import 'package:see_9ja/utils/router.dart';
//import 'package:see_9ja/utils/router.dart';
import 'package:see_9ja/utils/snack_message.dart';
import 'package:see_9ja/widgets/button.dart';
import 'package:see_9ja/widgets/text_field.dart';
// import 'package:provider/provider.dart';
// import 'package:todo_provider_rest_api/providers/auth_provider/auth_provider.dart';
// import 'package:todo_provider_rest_api/screens/authentication/register.dart';
// import 'package:todo_provider_rest_api/utils/router.dart';
// import 'package:todo_provider_rest_api/utils/snack_message.dart';
// import 'package:todo_provider_rest_api/widgets/button.dart';
// import 'package:todo_provider_rest_api/widgets/text_field.dart';
//Login Page will contain 2 textfield w

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //TextEdiitnng Controllers for our username and Password field...we make them private varialbe with (_) so they cant be accessed form another class
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  //Dispose method is used to dispoise contrrollers after use

  @override
  void dispose() {
    /// TODO: implement dispose
    _email.dispose();
    _password.dispose();
    // print('login page disposed');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: primaryColor,
      appBar: AppBar(centerTitle: true, title: const Text('Login')),
      //CustomScrollView is used to get custom scroll effect using Slivers
      body: CustomScrollView(
        //list of slivers
        slivers: [
          //In order not nest other widgets we use sliver to box adapter
          SliverToBoxAdapter(
            child: Container(
              // color: amber,
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  //email textfield
                  customTextField(
                    title: 'Email',
                    hint: 'Enter your Email',
                    controller: _email,
                  ),
                  //password Textfield
                  customTextField(
                    title: 'Password',
                    hint: 'Enter your password',
                    controller: _password,
                  ),
                  customButton(
                    text: 'Login',
                    tap: () {
                      //Manual textfield validator
                      if (_email.text.isEmpty || _password.text.isEmpty) {
                        showMessage(
                            message: 'Please fill all the fields for Login',
                            context: context);
                      } else {
                        PageNavigator(ctx: context).nextPage(page: Dashboard());
                        // auth.loginUser(
                        //   email: _email.text.trim(),
                        //   password: _password.text.trim(),
                        // );
                      }
                    },
                    context: context,
                    //status: auth.isLoading,
                  ),

                  //)
                  //Custom Button
                  // Consumer<AuthenticationProvider>(
                  //   //builder accept a created object of the provider used
                  //   builder: (context, auth, child) {
                  //     //Prevents the consumer form contanstly checking  & diplays the response message we use the following logic
                  //     WidgetsBinding.instance!.addPostFrameCallback((_) {
                  //       if (auth.responseMessage != " ") {
                  //         showMessage(
                  //           message: auth.responseMessage.toUpperCase(),
                  //           context: context,
                  //         );
                  //         auth.clear();
                  //       }
                  //     });
                  //     return customButton(
                  //       text: 'Login',
                  //       tap: () {
                  //         //Manual textfield validator
                  //         if (_email.text.isEmpty || _password.text.isEmpty) {
                  //           showMessage(
                  //               message: 'Please fill all the fields for Login',
                  //               context: context);
                  //         } else {
                  //           auth.loginUser(
                  //             email: _email.text.trim(),
                  //             password: _password.text.trim(),
                  //           );
                  //         }
                  //       },
                  //       context: context,
                  //       status: auth.isLoading,
                  //     );
                  //   },
                  // ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        PageNavigator(ctx: context).nextPage(page: Dashboard());
                      });
                    },
                    // onTap: () {
                    //   PageNavigator(ctx: context)
                    //       .nextPage(page: const RegisterPage());
                    // },
                    child: const Text('Register Instead'),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

