import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/26.png',

                  ),
                  radius: 33,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Image.asset(
                  'assets/images/27.png',
                  width: 70,
                  height: 70,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
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


          // Add your other widgets here
        ],
      ),

    );
  }
}
