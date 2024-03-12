import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:inbridge_pfe/controller/admin_controller/add_user.dart';

class Adduser extends StatefulWidget {
  const Adduser({super.key});

  @override
  State<Adduser> createState() => _AdduserState();
}

class _AdduserState extends State<Adduser> {
  final UserController userController = Get.find<UserController>(); // Get the instance of the UserController
  @override
  Widget build(BuildContext context) {
    String username = '';
    String email = '';
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  // Action when the back arrow is tapped
                  Navigator.pop(context); // Navigate back to the previous screen
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Icon(
                    Icons.arrow_back_ios, // Back arrow icon
                    size: 30, // Adjust the size as needed
                  ),
                ),
              ),
              Text(
                'Add User', // Text
                style: TextStyle(
                  fontSize: 20, // Adjust the font size as needed
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Image.asset(
                  'assets/images/12.png',
                  width: 70,
                  height: 70,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          // Wrapping the Container with a Center widget to center it
          Center(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Image.asset(
                'assets/images/30.png',
                width: 70,
                height: 70,
              ),
            ),
          ),

          SizedBox(height: 50),
          // First TextField for username
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: TextField(
          onChanged: (value) => username = value,
          decoration: InputDecoration(
            hintText: 'Username',
            suffixIcon: Icon(Icons.person, color: Colors.grey),
          ),
        ),
      ),
      SizedBox(height: 10),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: TextField(
          onChanged: (value) => email = value,
          decoration: InputDecoration(
            hintText: 'Email',
            suffixIcon: Icon(Icons.email, color: Colors.grey),
          ),
        ),
      ),
      SizedBox(height: 40),


          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4, // Adjust the width as needed
            height: 45, // Adjust the height as needed
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFFF758E), // Button background color
                borderRadius: BorderRadius.circular(10), // Add rounded corners
              ),
              child: TextButton(
                onPressed: () {
                  userController.addUser(username, email); // Action when the button is pressed
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero, // Remove any default padding
                ),
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white, // Text color
                    fontSize: 18, // Adjust the font size as needed
                  ),
                ),
              ),
            ),
          )


          // Add your other widgets here
        ],
      ),

    );
  }
}
