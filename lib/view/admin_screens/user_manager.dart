import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class UserManager extends StatefulWidget {
  const UserManager({super.key});

  @override
  State<UserManager> createState() => _UserManagerState();
}

class _UserManagerState extends State<UserManager> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                    Icons.arrow_back_ios,  // Back arrow icon
                    size: 30, // Adjust the size as needed
                  ),
                ),
              ),
              Text(
                'User Manager', // Text
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

          SizedBox(height: 10),

      Row(
            children: [
              SizedBox(width: 10),
              Container(
                   width: MediaQuery.of(context).size.width * 0.8,
                   decoration: BoxDecoration(
              color: Color(0xFFFF758E), // Background color
              borderRadius: BorderRadius.circular(10), // Add rounded corners
            ),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/21.png', // Icon before the search bar
                  width: 24,
                  height: 24,
                ),
                SizedBox(width: 10), // Add some space between the icon and the search bar
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search', // Placeholder text
                      hintStyle: TextStyle(color: Colors.white), // Hint text color
                      border: InputBorder.none, // Remove border
                    ),
                    style: TextStyle(color: Colors.white), // Text color
                  ),
                ),
                SizedBox(width: 10), // Add some space between the search bar and the last icon
                Image.asset(
                  'assets/images/19.png', // Icon after the search bar
                  width: 24,
                  height: 24,
                ),

              ],
            ),
          ),
              SizedBox(width: 7), // Add some space between the search bar icon and the button
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFF758E), // Button background color
                  borderRadius: BorderRadius.circular(10), // Add rounded corners
                ),
                child: IconButton(
                  onPressed: () {
                    Get.toNamed('/add_user');// Action when the button is pressed
                  },
                  icon: Image.asset(
                  'assets/images/22.png', // Image asset path
                  width: 30, // Width of the image
                  height: 30, // Height of the image
                  color: Colors.white, // Color of the image
                ),
                ),
              ),
        ],
      ),

          // Add your other widgets here
        ],
      ),

    );
  }
}
