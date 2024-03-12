import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ProfilScreen extends StatefulWidget {
  @override
  _ProfilScreenState createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  bool _isSelected = false; // To track the state of the circular switch

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(20),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/your_image.jpg'), // Your image asset path
                  ),
                  Positioned(
                    bottom: 0, // Adjust the distance from the bottom
                    right: 0, // Adjust the distance from the right
                    child: ElevatedButton(
                      onPressed: () {
                        // Action on button press
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFB40741), // Button background color
                        shape: CircleBorder(), // Circular button shape
                      ).copyWith(
                        minimumSize: MaterialStateProperty.all(Size(31, 31)), // Adjust button size
                      ),
                      child: Icon(
                        Icons.edit, // Edit icon
                        size: 20, // Adjust icon size
                        color: Colors.white, // Icon color
                      ),
                    ),
                  ),



                ],
              ),
            ),


            ListTile(
              title: Text('Mode'),
              trailing: Transform( // Wrap the Icon with Transform widget for rotation
                alignment: Alignment.center,
                transform: Matrix4.rotationZ(_isSelected ? 0.5 : 0), // Rotate icon based on switch state
                child: Icon(
                  Icons.toggle_off, // Use toggle_off for a circular icon
                  color: _isSelected ? Color(0xFF758E) : Colors.grey, // Change color based on selection
                ),
              ),
              onTap: () {
                setState(() {
                  _isSelected = !_isSelected; // Toggle the state on tap
                });
              },
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed('/usermanager');// Action when the ListTile is tapped
              },
              child: ListTile(
                title: Text('User Manager'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),

            ListTile(
              title: Text('Statistics'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              title: Text('Language'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              title: Text('About App'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              title: Text('Logout'),
              trailing: Icon(Icons.exit_to_app),
            ),
          ],
        ),
      ),
    );
  }
}
