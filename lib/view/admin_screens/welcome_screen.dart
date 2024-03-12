import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inbridge_pfe/view/admin_screens/homescreen.dart';
import 'package:inbridge_pfe/view/admin_screens/notificationscreen.dart';
import 'package:inbridge_pfe/view/admin_screens/profilscreen.dart';
import 'package:inbridge_pfe/view/admin_screens/taskscreen.dart';
import 'package:inbridge_pfe/view/login_screens/login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int _selectedIndex = 0; // Initialize the selected index// Define PageController
  late PageController _pageController; // Declare the PageController
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectedIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _navigateToScreen(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 300), // Adjust animation duration as needed
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController, // Use PageController
              physics: NeverScrollableScrollPhysics(), // Disable scrolling
              onPageChanged: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              children: [
                HomeScreen(), // Home Screen
                TaskScreen(), // Task Screen
                NotificationScreen(), // Notifications Screen
                ProfilScreen(), // Profile Screen
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //Get.toNamed('/add_user');
        },
        backgroundColor: Color(0xFFB40741), // Set the background color to #B40741
        foregroundColor: Colors.white,
        elevation: 0,
        shape: CircleBorder(),
        child: Icon(
          Icons.add,
          size: 45, // Adjust size as needed
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 5.0,
        shape: CircularNotchedRectangle(),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            IconButton(
              icon: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  _selectedIndex == 0 ? Colors.pink : Colors.grey,
                  BlendMode.srcIn,
                ),
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: Image.asset('assets/images/18.png'),
                ),
              ),
              onPressed: () => _navigateToScreen(0), // Navigate to Home Screen
            ),
            IconButton(
              icon: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  _selectedIndex == 1 ? Colors.pink : Colors.grey,
                  BlendMode.srcIn,
                ),
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: Image.asset('assets/images/15.png'),
                ),
              ),
              onPressed: () => _navigateToScreen(1), // Navigate to Task Screen
            ),
            IconButton(
              icon: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  _selectedIndex == 2 ? Colors.pink : Colors.grey,
                  BlendMode.srcIn,
                ),
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: Image.asset('assets/images/16.png'),
                ),
              ),
              onPressed: () => _navigateToScreen(2), // Navigate to Notification Screen
            ),
            IconButton(
              icon: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  _selectedIndex == 3 ? Colors.pink : Colors.grey,
                  BlendMode.srcIn,
                ),
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: Image.asset('assets/images/17.png'),
                ),
              ),
              onPressed: () => _navigateToScreen(3), // Navigate to Profile Screen
            ),
          ],
        ),
      ),
    );
  }
}


