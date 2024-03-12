// views/splash_screen.dart
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inbridge_pfe/view/login_screens/login_screen.dart';




class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 6), () {
      _navigateToHome();
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25,),
            child: Image.asset('assets/images/12.png', width: 232, height: 172),
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, bottom: 0.0),
            child: Text(
              'Inbridge',
              style: TextStyle(
                fontSize: 23,
                fontFamily: 'Helvetica Neue',
                letterSpacing: -0.34,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, bottom: 0.0),
            child: Center(
              child: Text(
                'INSPIRE, CREATE, INNOVATE TO INFINITY .',
                textAlign: TextAlign.center, // Added to ensure text is centered horizontally
                style: TextStyle(
                  fontSize: 23,
                  fontFamily: 'Helvetica Neue',
                  letterSpacing: -0.34,
                  color: Colors.grey,
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }

  void _navigateToHome() {
    Get.offAll(LoginScreen());
  }
}


