import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:inbridge_pfe/controller/login_controller.dart';
import 'package:inbridge_pfe/view/admin_screens/welcome_screen.dart';



class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isPasswordVisible = false;
  FocusNode _emailFocus = FocusNode();
  FocusNode _passwordFocus = FocusNode();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  Color customPrimaryColor = Color(0xFF758E);
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    const double horizontalTextFieldPadding = 25.0; // Adjust the horizontal padding value as needed

    return GetBuilder<LoginController>(
      init: LoginController(),

      builder: (controller) => Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 40),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Image.asset('assets/images/27.png', width: 190, height: 190),
                  ),
                ),




                Padding(
                  padding: const EdgeInsets.only(left: 10.0, bottom: 0.0),
                  child: Center(
                    child: Text(
                      'INSPIRE, CREATE, INNOVATE TO INFINITY...',
                      textAlign: TextAlign.center, // Added to ensure text is centered horizontally
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Helvetica Neue',
                        letterSpacing: -0.34,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 60),
                // Email TextField
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: horizontalTextFieldPadding),
                  child: Container(
                    width: 320, // Adjust the width as needed
                    height: 55, // Adjust the height as needed
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0), // Adjust the border radius as needed
                      color: Colors.grey[200], // Set the background color to grey
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0), // Adjust the inner padding as needed
                      child: TextField(
                        controller: _emailController,
                        focusNode: _emailFocus,
                        decoration: InputDecoration(
                          hintText: '@username',
                          //prefixIcon: Icon(Icons.email),
                          border: InputBorder.none, // Remove the default border
                        ),
                      ),
                    ),
                  ),
                ),



                SizedBox(height: 16), // Add some spacing
                // Password TextField with added padding
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: horizontalTextFieldPadding),
                  child: Container(
                    width: 320, // Adjust the width as needed
                    height: 55, // Adjust the height as needed
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0), // Adjust the border radius as needed
                      color: Colors.grey[200], // Set the background color to grey
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0), // Adjust the inner padding as needed
                      child: TextField(
                        controller: _passwordController,
                        focusNode: _passwordFocus,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          //prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                            ),
                            onPressed: () {
                              setState(() {
                                _isPasswordVisible = !_isPasswordVisible;
                              });
                            },
                          ),
                          border: InputBorder.none, // Remove the default border
                          // Customize other properties as needed
                        ),
                        obscureText: !_isPasswordVisible,
                      ),
                    ),
                  ),
                ),

              // Add some spacing
                // RichText with clickable "Forgot your password?"

                SizedBox(height: 36.0),
                Container(
                  width: 320.0, // Set your desired width
                  height: 60.0, // Set your desired height
                  child: ElevatedButton(
                    onPressed: () {
                      // Implement your sign-up logic here
                      Get.to(WelcomeScreen());
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35.0),
                      ),

                      primary: Color(0xFFFF758E),
                    ),
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 30.0),
                          child: Text(
                            'Login',
                            style: TextStyle(
                                fontSize: 20,
                              color: Colors.white, // Set your desired text color
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, bottom: 0.0),
                  child: Center(
                    child: Text(
                      'Forgot Password?',
                      textAlign: TextAlign.center, // Added to ensure text is centered horizontally
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Helvetica Neue',
                        letterSpacing: -0.34,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

      ),
    );
  }






}
